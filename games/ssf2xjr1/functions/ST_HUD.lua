----------------------------------------------------
-- SSF2T_HUD - made by Pasky, updated by Asunaro
----------------------------------------------------
local display_buffer_timer = false
--------------------------
-- Item coords
--------------------------
local ST_HUD_coord = {
	player_distance = {x = 153, y = 10},
	coord_desc = {
		{x = 6, y = 16},
		{x = 363, y = 16},
	},
	chara_coord = {
		{x = 2, y = 24},
		{x = 356, y = 24},
	},
	buffer_infos = {
		{x = 2, y = 65},
		{x = 200, y = 65},
	},
	stun_meter = {
		{x = 154, y = 41},
		{x = 212, y = 41},
	},
	stun_counter = {
		{x = 154, y = 50},
		{x = 212, y = 50},
	},
	stun_meter_limit_line = {
		{x1 = 136, y1 = 45, x2 = 136, y2 = 49},
		{x1 = 334, y1 = 45, x2 = 334, y2 = 49},
	},
	projectile = {
		{x = 60, y = 56},
		{x = 256, y = 56},		
	},
	cancel = {
		{x = 8, y = 216},
		{x = 310, y = 216},
	},
	stun_meter_bar = {
		{x1 = 35, y1 = 45, x2 = 150, y2 = 49},
		{x1 = 233, y1 = 45, x2 = 348, y2 = 49},
	},
	stun_counter_bar = {
		{x1 = 35, y1 = 49, x2 = 150, y2 = 53},
		{x1 = 233, y1 = 49, x2 = 348, y2 = 53},
	},
	dizzy_bar = {
		{x1 = 3, y1 = 100, x2 = 11, y2 = 190},
		{x1 = 370, y1 = 100, x2 = 378, y2 = 190},
	},
	grab_strength_bar = {
		{x1 = 16, y1 = 190, x2 = 22, y2 = 120},
		{x1 = 357, y1 = 190, x2 = 363, y2 = 120},
	},
	grab_counter_bar = {
		{x1 = 3, y1 = 100, x2 = 11, y2 = 190,},
		{x1 = 370, y1 = 100, x2 = 378, y2 = 190,},
	},
	grab_break_bar = {
		{x1 = 370, y1 = 100, x2 = 378, y2 = 190,},
		{x1 = 3, y1 = 100, x2 = 11, y2 = 190,},
	},
	tap_level = {
		{x = 50, y = 56},
		{x = 246, y = 56},	
	}
}
---------------------------
--Miscellaneous functions
---------------------------
-- Calculate positional difference between the two players
local function calc_range()
	local x, y = 0, 0
	if gamestate.P1.pos_x >= gamestate.P2.pos_x then x = gamestate.P1.pos_x - gamestate.P2.pos_x else x = gamestate.P2.pos_x - gamestate.P1.pos_x end
	if gamestate.P1.pos_y >= gamestate.P2.pos_y then y = gamestate.P1.pos_y - gamestate.P2.pos_y else y = gamestate.P2.pos_y - gamestate.P1.pos_y end
	return x.."/"..y
end

--Determines if a projectile is still in game and if one can be exectued
local function projectile_onscreen(_player_obj)
	local text = ""
	if _player_obj.projectile_ready then text = "Ready" else text = "Not Ready" end
	return text
end

--Determines if a special cancel can be performed after a normal move has been executed
local function check_cancel(_player_obj)
	local text = ""
	if _player_obj.cancel_ready then text = "Ready" else text = "Not Ready" end
	return text
end

--Displays TAP level for boxer (made by pof)
local function display_taplevel(_player_obj)
	local tap = {
		punch = {word = rw(_player_obj.base + character_specific["boxer"].addresses.tap_level.punch), level = ""},
		kick = {word = rw(_player_obj.base + character_specific["boxer"].addresses.tap_level.kick), level = ""}
	}
	local tap_value = {{0000,"0"},{0031,"1"},{0121,"2"},{0241,"3"},{0481,"4"},{0961,"5"},{1441,"6"},{1921,"7"},{2401,"F"}}
	gui.text(100,120, tap.punch.word)
	for k in pairs(tap) do
		for i = 9, 1, -1 do
			if tap[k].word >= tap_value[i][1] then
				tap[k].level = tap_value[i][2]
				break
			end
		end
	end
	return "P("..tap.punch.level..") / K("..tap.kick.level..")"
end

-- Determines how many inputs have been received for a said special
local function get_special_input(_player_obj, special, buffer)
	local input = 0
	if #special.input > 1 then
		if not special.charge_move then
			input = buffer / 2
		elseif buffer > 0x02 then
			input = (buffer - 0x02) / 2
		end
	else
		input = buffer
		if input > special.input_mash then input = special.input_mash end
	end
	if special.input_conservation_bug then
		if input == #special.input - 1 and isPressed(_player_obj,  special.input[# special.input][1]) then
			input = input + 1
		end
	end
	return input
end

--Determine the color of a bar based on its value (higher = darker)
local function contextual_color(val, max_val)
	local color_val = {0x00FF5DA0,0x54FF00A0,0xAEFF00A0,0xFAFF00A0,0xFF5400A0,0xFF0026A0}
	local section = math.floor(val/(max_val/6)+0,5)+1
	if section > 6 then section = 6 end
	
	return color_val[section]
end
------------------------
--Miscellaneous vars
------------------------
local FRAME_LIMIT = -80
-- Graphic settings
local transparent_black = 0x00000040
local black = 0x000000FF
local ready_color = "yellow"
local active_color = "purple"
local buffer_timer_color = "red"
------------------------------------
-- Draw character specific data
------------------------------------
-- Determines how many frames you conserved your charge
local charge_conservation_timer = {{},{}}
for i = 1, 2 do
	for j = 1, 6 do
		local counter = {value = -1, display = false, msg_counter = FRAME_LIMIT}
		table.insert(charge_conservation_timer[i], counter)
	end
end
-- Stocking the moves we want to display in the hud
local hud_moves = {}
for i = 1, #characters do
	hud_moves[characters[i]] = {}
	local moves = {charge = {}, motion = {}}
	local type_order = {"charge", "motion"} -- We want to display charge moves before motion moves to look cleaner
	for s = 1, #character_specific[characters[i]].specials do
		local special = character_specific[characters[i]].specials[s]
		if special.input then
			if #special.input > 1 or (#special.input == 1 and #special.input_variations == 3) then -- If the special needs to be buffed (we don't want moves like PPP or KKK)
				if special.charge_move then
					table.insert(moves.charge, special)
				else
					table.insert(moves.motion, special)
				end
			end
		end
	end
	for t = 1, #type_order do
		if #moves[type_order[t]] > 0 then
			for j = 1, #moves[type_order[t]] do
				table.insert(hud_moves[characters[i]], moves[type_order[t]][j])
			end
		end
	end
end

local char_select = 1
local char_select_p2 = 1
local function change_char_p1()
	char_select = char_select + 1
	if char_select > 16 then
		char_select = 1
	end
end

local function change_char_p2()
	char_select_p2 = char_select_p2 + 1
	if char_select_p2 > 16 then
		char_select_p2 = 1
	end
end
input.registerhotkey(6, change_char_p1)
input.registerhotkey(4, change_char_p2)

local function draw_chara_spe()
	-- DEBUG
	local DEBUG = false
	-- Space between
	local line = 8
	local column = 15
	-- Draw character specifics
	-- gamestate.P1.character_name = characters[char_select]
	-- gamestate.P2.character_name = characters[char_select_p2]
	for p = 1, #player do
		local x, y = ST_HUD_coord.buffer_infos[p].x, ST_HUD_coord.buffer_infos[p].y
		local n = 0 -- id of the special
		local longest_string = ""
		for s = 1, #hud_moves[player[p].character_name] do
			local special = hud_moves[player[p].character_name][s]
			if not (player[p].version == "old" and special.new_only) then
				-- Display special name and received inputs
				n = n + 1
				local special_name = special.name_ab and special.name_ab or special.name -- if an abreviation exists, use it
				local buffer = {}
				local buffer_timer = {}
				local received_input = {}
				local max_input = #special.input > 1 and #special.input or special.input_mash -- number of directions to be validated or number of buttons to be mashed
				local memory_map = special.memory_map.new and special.memory_map[player[p].version] or special.memory_map -- If there's an address difference between new and old, select the correct version
				for a = 1, #memory_map do
					table.insert(buffer, rb(player[p].base + memory_map[a][1]))
					table.insert(received_input, get_special_input(player[p], special, buffer[a]))
					if display_buffer_timer then
						table.insert(buffer_timer, rb(player[p].base + memory_map[a][1] + 0x01))
					end
				end
				local text_color = "white"
				local special_info = special_name..": "
				for b = 1, #buffer do
					special_info = special_info..received_input[b].."/"..max_input
					if display_buffer_timer then special_info = special_info.." ["..buffer_timer[b].."]" end
					if b ~= #buffer then special_info = special_info.." " end
					if received_input[b] == max_input then text_color = ready_color end
				end
				-- Detecting if the current special is being performed
				local active = false
				local current_move = string.gsub(player[p].move, "%s[LMH][PK]", "")
				if #current_move ~= "" then
					if string.match(special.name, current_move) and player[p].state == doing_special_move then
						text_color = active_color
						active = true
					end
				end
				if DEBUG then
					special_info = special_info.." : ("..buffer[1]..")"
				end
				gui.text(x, y, special_info, text_color)
				if special.charge_move then
					-- If the current special is a charge move, draw a bar displaying the state of the charge
					local charge_timer = type(special.charge_timer) == "table" and special.charge_timer[player[p].version] or special.charge_timer -- If there's a charge difference between new and old, select the correct version
					gui.box(x, y + 8, x + charge_timer + 2, y + 11, transparent_black, black)
					if received_input[1] == 0 then
						if buffer[1] > 0x00 then 
							local charge = type(special.charge_address) == "table" and rb(player[p].base + special.charge_address[player[p].version]) or rb(player[p].base + special.charge_address)
							if charge ~= charge_timer then
								if not special.charge_update_bug or (special.charge_update_bug and isPressed(player[p], "back")) then
									gui.box(x + 1, y + 9, x + 1 + (charge_timer - charge), y + 10, contextual_color(charge_timer - charge, charge_timer))
								end
							end
							if DEBUG then
								gui.text(x + charge_timer + 4, y + 8, charge)
							end
						end
					else -- Already charged
						gui.box(x + 1, y + 9, x + 1 + charge_timer, y + 10, 0xFF0026A0)
						if not active and not charge_conservation_timer[p][n].display then -- Count since how many frames the charge is held
							if charge_conservation_timer[p][n].value < 999 then
								charge_conservation_timer[p][n].value = countFrames(charge_conservation_timer[p][n].value)
							else
								charge_conservation_timer[p][n].value = 999
							end
						end
					end
					if active then -- if the move has been launched then display charge_conservation_timer
						charge_conservation_timer[p][n].display = true
					end
					if charge_conservation_timer[p][n].display then
						charge_conservation_timer[p][n].msg_counter = countFrames(charge_conservation_timer[p][n].msg_counter)
						if charge_conservation_timer[p][n].msg_counter >= 0 then
							charge_conservation_timer[p][n].value = -1
							charge_conservation_timer[p][n].display = false
							charge_conservation_timer[p][n].msg_counter = FRAME_LIMIT
						else
							if charge_conservation_timer[p][n].value > 0 then
								gui.text(x + charge_timer + 5, y + 7, "+"..charge_conservation_timer[p][n].value)
							end
						end
					end
					y = y + (line * 2) - 2
				else
					y = y + line
				end
				if #special_info > #longest_string then longest_string = special_info end
				if n == 3 then
					-- new column
					x = x + #longest_string*4 + column
					y = ST_HUD_coord.buffer_infos[p].y
				elseif n == 6 then
					-- Display the last move on the middle
					x = ST_HUD_coord.buffer_infos[p].x + 40
				end
			end
		end
	end
end
-----------------------
--Dizzy meters
---- ------------------
local dizzy_drawn = {false, false}

local function draw_dizzy()
	for p = 1, #player do
		local stun_meter = player[p].stun_meter
		local stun_counter = player[p].stun_counter
		local destun_meter = player[p].destun_meter
		
		local max_stun_meter = 0x22
		local max_stun_counter = 0xFFFF
		
		local bar = {
			{curr_value = stun_meter, max_value = max_stun_meter, coord = ST_HUD_coord.stun_meter_bar},
			{curr_value = stun_counter, max_value = max_stun_counter, coord = ST_HUD_coord.stun_counter_bar},
		}
		
		for b = 1, #bar do
			local x1, y1, x2, y2 = bar[b].coord[p].x1, bar[b].coord[p].y1, bar[b].coord[p].x2, bar[b].coord[p].y2
			gui.box(x1, y1, x1 + ((x2-x1)/bar[b].max_value * bar[b].curr_value), y2, contextual_color(bar[b].curr_value, bar[b].max_value), black)
		end

		if player[p].dizzy then
			local x1, y1, x2, y2 = ST_HUD_coord.dizzy_bar[p].x1, ST_HUD_coord.dizzy_bar[p].y1, ST_HUD_coord.dizzy_bar[p].x2, ST_HUD_coord.dizzy_bar[p].y2
			gui.box(x1, y1, x2, y2, transparent_black, black)
			gui.box(x1, y2, x2, (y2 - (0.428 * destun_meter)),0xFF0000B0,0x00000000)
			if p == 1 then gui.text(x1, y2 + 2, destun_meter) else gui.text(x1 + 3, y2 + 2, destun_meter) end
			dizzy_drawn[p] = true
		else
			dizzy_drawn[p] = false
		end
	end
end
--------------------------
--Grab meters
--------------------------
local grab_drawn = {false, false}

local function draw_grab(id)
	local attacker = player[id]
	local defender = id == 1 and player[2] or player[1]
	-- Drawing the strength of the current grab
	local grab_strength = attacker.grab_strength
	local x1, y1, x2, y2 = ST_HUD_coord.grab_strength_bar[id].x1, ST_HUD_coord.grab_strength_bar[id].y1, ST_HUD_coord.grab_strength_bar[id].x2, ST_HUD_coord.grab_strength_bar[id].y2 
	gui.box(x1, y1, x2, y2, transparent_black, black) 
	for i = 1, 7 do
		-- Strength can be 0x15, 0x12, 0xF etc.
		local strength = 0x15 - 3*(i-1)
		-- Determines grab_strength
		if grab_strength == strength then
			local strength_y = y1 - 10*i
			local color = i == 7 and 0xFF0C00FF or 0xFF0C00C0
			gui.box(x1, y1, x2, strength_y, color, black)
			gui.text(x1 + 2, strength_y + 2, i)
			break
		end
	end
	-- Draw 7 segments of 10px representing the 7 possible strength
	for i = 1, 7 do
		local segment = 10 
		gui.line(x1, y1 - segment*i, x2, y1 - segment*i, black)
	end
	-- Drawing the timer of the current grab
	local grab_counter = rb(attacker.base + character_specific[attacker.character_name].addresses.grab_counter)
	local max_val_grab_counter = character_specific[attacker.character_name].throw.max_hold_timer
	local bar = {
		{max_val = max_val_grab_counter, multiplier = 0, counter = grab_counter, coord = ST_HUD_coord.grab_counter_bar, color = 0xFFFF00B0},
		{max_val = 63, multiplier = (90/63), counter = defender.grab_break, coord = ST_HUD_coord.grab_break_bar, color = 0xFF0000B0},
	}
	bar[1].multiplier = 90 / bar[1].max_val
	for i = 1, #bar do
		local x1, y1, x2, y2 = bar[i].coord[id].x1, bar[i].coord[id].y1, bar[i].coord[id].x2, bar[i].coord[id].y2
		gui.box(x1, y1, x2, y2, transparent_black, black)
		gui.box(x1, y2, x2, y2 - (bar[i].multiplier * bar[i].counter), bar[i].color, 0x00000000)
		x1 = i == 1 and (x1 - 2) or (x1 - 7)
		gui.text(x1, y2 + 2, bar[i].counter .. "/" ..bar[i].max_val)
	end	
end

local function check_grab()
	for p = 1, #player do
		local attacker = player[p]
		local defender = p == 1 and player[2] or player[1]
		local character = attacker.character_name
		if character_specific[character].infos.hold_grab then
			local grab_flag = attacker.grab_flag
			local throw_flag = defender.throw_flag
			if throw_flag == 0xFF then
				for k in pairs(character_specific[character].infos.grab_id) do
					if grab_flag == character_specific[character].infos.grab_id[k] then
						grab_drawn[p] = true
						draw_grab(p, grab_counter_address)
						break
					end
				end
			else
				grab_drawn[p] = false
			end
		end
	end
end
--------------------------
--Projectiles infos
--------------------------
-- Determines how many frames you left between two projectiles
local projectile_delay = {
	{value = -1, begin = false, display = false, msg_counter = FRAME_LIMIT},
	{value = -1, begin = false, display = false, msg_counter = FRAME_LIMIT}
}

local function get_proj_delay(_player_obj)
	local delay = projectile_delay[_player_obj.id]
	if delay.value > 120 then delay.value = -1 delay.begin = false end
	-- gui.text(100,100,"Begin : "..str(projectile_delay[1].begin))
	-- gui.text(100,110,"Display : "..str(projectile_delay[1].display))
	-- gui.text(100,120,"Value : "..projectile_delay[1].value)
	if not delay.display then
		-- If a fireball just disappeared,getting ready
		if not _player_obj.prev.projectile_ready and _player_obj.projectile_ready then
			delay.begin = true
			return ""
		end
		if delay.begin then
			if _player_obj.state ~= doing_special_move and delay.value < 0 then
				delay.value = 0
			end
		end
		if delay.value > -1 then
			delay.value = countFrames(delay.value)
			-- if a new fireball is thrown then tell how many frames have been left since the last projectile
			if not _player_obj.projectile_ready and _player_obj.prev.projectile_ready then
				if delay.value <= 120 then
					delay.display = true
				end
			end
		end
	else
		delay.msg_counter = countFrames(delay.msg_counter)
		if delay.msg_counter >= 0 then
			delay.value = -1
			delay.msg_counter = FRAME_LIMIT
			delay.begin = false
			delay.display = false
		else
			return "(+"..delay.value..")"
		end
	end
	return ""
end

---------------------------------------------------------
-- Shift scrolling input display if we need it
---------------------------------------------------------
local shift_input = {false, false}
local function shiftInput(bool, ...)
	local offset = {
		["true"] = {
			{x = 30, y = 100},
			{x = 285, y = 100},
		},
		["false"] = {
			{x = 3, y = 100},
			{x = 310, y = 100},
		},
	}
	local id = {...}
	for i = 1, #id do
		if bool then 
			inputs.properties.scrollinginput.scrollinginputxoffset[id[i]] = offset["true"][id[i]].x
			inputs.properties.scrollinginput.scrollinginputyoffset[id[i]] = offset["true"][id[i]].y
		else
			inputs.properties.scrollinginput.scrollinginputxoffset[id[i]] = offset["false"][id[i]].x
			inputs.properties.scrollinginput.scrollinginputyoffset[id[i]] = offset["false"][id[i]].y
		end
		shift_input[id[i]] = bool
	end
	scrollingInputReload()
end

local function shiftScrollingInput()
	for p = 1, #player do
		if grab_drawn[p] then
			if not shift_input[1] or not shift_input[2] then
				shift_input(true, 1, 2)
			end
			break
		end
		if dizzy_drawn[p] then
			if not shift_input[p] then
				shiftInput(true, p)
			end
		elseif shift_input[p] then
			shiftInput(false, p)
		end
	end
end
-------------------------------
--Draw HUD
-------------------------------
local ST_HUD = false
local HUD_settings = {}
local ST_HUD_settings = {
	hud = {
		p1healthx = 33,
		p1healty = 22,
		p2healthx = 340,
		p2healthy = 22,
		combotextx = 174,
		combotexty = 49,
		p1meterenabled = false,
		p2meterenabled = false,
	},
	scrollinginput = {
		scrollinginputxoffset = {3, 310},
		scrollinginputyoffset = {100, 100},
		iconsize = 8,
	},
	simpleinput = {
		simplestate = {false, false},
	},
}
local backup = {hud = {}, scrollinginput = {}, simpleinput = {}}

local function createSettingsBackup()
	local load_settings = {
		{"hud", hud}, {"scrollinginput", inputs.properties.scrollinginput}, {"simpleinput", inputs.properties.simpleinput},
	}
	for i = 1, #load_settings do
		for k, v in pairs(ST_HUD_settings[load_settings[i][1]]) do
			if type(v) == "table" then
				backup[load_settings[i][1]][k] = {}
				for j = 1, #v do
					backup[load_settings[i][1]][k][j] = load_settings[i][2][k][j]
				end
			else
				backup[load_settings[i][1]][k] = load_settings[i][2][k]
			end
		end
	end
	saveConfig()
end

local function loadSettings(settings)
	local load_settings = {
		{"hud", hud}, {"scrollinginput", inputs.properties.scrollinginput}, {"simpleinput", inputs.properties.simpleinput},
	}
	for i = 1, #load_settings do
		for k, v in pairs(settings[load_settings[i][1]]) do
			if type(v) == "table" then
				for j = 1, #v do
					load_settings[i][2][k][j] = v[j]
				end
			else
				load_settings[i][2][k] = v
			end
		end
	end
	scrollingInputReload()
end

function new_hud()
	if not gamestate.is_in_match or interactivegui.enabled then
		return
	end
	local selector = ST_buttons["Training"]["Screen Display Settings"]["Toggle ST HUD"].selector
	if selector > 0 then
		if not ST_HUD then
			createSettingsBackup()
			loadSettings(ST_HUD_settings)
			ignore_save_config = true
			ST_HUD = true
		end
		--Universal
		gui.text(ST_HUD_coord.player_distance.x, ST_HUD_coord.player_distance.y, "Distance X/Y: " .. calc_range())
		-- Player Specific
		for p = 1, #player do
			-- Coords
			gui.text(ST_HUD_coord.coord_desc[p].x, ST_HUD_coord.coord_desc[p].y, "X/Y: ")
			gui.text(ST_HUD_coord.chara_coord[p].x, ST_HUD_coord.chara_coord[p].y, player[p].pos_x .. "," .. player[p].pos_y)
			-- Stun Meter
			gui.box(ST_HUD_coord.stun_meter_bar[p].x1, ST_HUD_coord.stun_meter_bar[p].y1, ST_HUD_coord.stun_meter_bar[p].x2, ST_HUD_coord.stun_meter_bar[p].y2, transparent_black, black)
			gui.line(ST_HUD_coord.stun_meter_limit_line[p].x1, ST_HUD_coord.stun_meter_limit_line[p].y1, ST_HUD_coord.stun_meter_limit_line[p].x2, ST_HUD_coord.stun_meter_limit_line[p].y2, black)			
			gui.text(ST_HUD_coord.stun_meter[p].x, ST_HUD_coord.stun_meter[p].y, player[p].stun_meter.."/34")
			-- Stun Counter
			gui.box(ST_HUD_coord.stun_counter_bar[p].x1, ST_HUD_coord.stun_counter_bar[p].y1, ST_HUD_coord.stun_counter_bar[p].x2, ST_HUD_coord.stun_counter_bar[p].y2, transparent_black, black)
			gui.text(ST_HUD_coord.stun_counter[p].x, ST_HUD_coord.stun_counter[p].y, player[p].stun_counter)
			-- Cancel
			gui.text(ST_HUD_coord.cancel[p].x, ST_HUD_coord.cancel[p].y, "Cancel: " .. check_cancel(player[p]))
			-- Character Specific
			if character_specific[player[p].character_name].infos.has_projectile then
				gui.text(ST_HUD_coord.projectile[p].x,ST_HUD_coord.projectile[p].y, "Projectile: " .. projectile_onscreen(player[p])..get_proj_delay(player[p]))
			end
		end
		-- Updating the values
		draw_dizzy()
		check_grab()
		if selector == 1 and not clear_screen then 
			draw_chara_spe()
			for p = 1, #player do
				if player[p].character_name == "boxer" then
					gui.text(ST_HUD_coord.tap_level[p].x, ST_HUD_coord.tap_level[p].y, "TAP Level : "..display_taplevel(player[p]))
				end
			end
		end
		shiftScrollingInput()
	else
		if ST_HUD then
			loadSettings(backup)
			ST_HUD = false
			ignore_save_config = false
		end
	end
end