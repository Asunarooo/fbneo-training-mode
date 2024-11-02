-- Initialization
local function copyTable(t)
	local t_copy = {}
	for k,v in pairs(t) do
		t_copy[k] = v
	end
	return t_copy
end
------------------------------------------
--	Guipages
------------------------------------------
-- Initialization
local page = {ground = {}, jump = {}, special = {}, dhalsim_close = {}}
local page_mode = "classic"
local page_order = {
	["classic"] = {"ground", "jump", "special"},
	["enhanced"] = {"ground", "dhalsim_close", "jump", "special"}
}
local page_suffix = "_hitboxes_page"
local page_title = "Select the boxes you want to display"
local page_infos = "S = Startup / A = Active / R = Recover"
-- Page functions
	-- Get title
local function getTitle(str)
	if str == "dhalsim_close" then
		return page_title.." (back + P/K)"
	else
		return page_title.." ("..str..")"
	end
end
	-- Moving between pages
local function nextPage()
	for i = 1, #page_order[page_mode] do
		if interactivegui.page == page_order[page_mode][i]..page_suffix then
			if i ~= #page_order[page_mode] then
				CIG(page_order[page_mode][i+1]..page_suffix,4)
			end
			return
		end
	end
end
local function prevPage()
	for i = 1, #page_order[page_mode] do
		if interactivegui.page == page_order[page_mode][i]..page_suffix then
			if i ~= 1 then
				CIG(page_order[page_mode][i-1]..page_suffix,4)
			else
				CIG("addonpage1",1)
			end
			return
		end
	end
end
-- Page elements
local page_elements = {
	l_arrow = {
		{
			text = "<",
			olcolour = "black",
			info = "Back",
			x = 0,
			y = 15,
			func = prevPage,
		},
		{
			text = "<<",
			olcolour = "black",
			info = "Back",
			x = 0,
			y = 15,
			func = prevPage,
		}
	},
	r_arrow = {
		text = ">>",
		olcolour = "black",
		info = "Next page",
		x = 276,
		y = 15,
		func = nextPage,
	},
	reset = {
		text = "Reset",
		olcolour = "black",
		info = "Turn off every boxes",
		x = 20,
		y = 155,
		func = nil, -- Defined later
	},
	clear_screen = {
		text = "Clear Screen",
		olcolour = "black",
		info = "Clear the saved boxes",
		x = 50,
		y = 155,
		func = nil, -- Defined later
	},
	advanced_settings = {
		text = "Advanced Settings",
		olcolour = "black",
		info = "",
		x = 200,
		y = 155,
		func = function() CIG("advanced_settings"..page_suffix,1) end,
	}
}
-- Creating pages and basic buttons
for k, v in pairs(page) do
	page[k] = {
		title = {
			text = getTitle(k),
			x = interactivegui.boxxlength/2 - 83,
			y = 1,
		},
		infos = {
			text = page_infos,
			x = interactivegui.boxxlength/2 - 75,
			y = 168,
		},
		page_elements.reset,
		page_elements.clear_screen,
		page_elements.advanced_settings,
	}
	if k == page_order["enhanced"][1] then
		table.insert(page[k], page_elements.l_arrow[1]) 
	else
		table.insert(page[k], page_elements.l_arrow[2])
	end
	if k ~= page_order["enhanced"][#page_order["enhanced"]] then
		table.insert(page[k], page_elements.r_arrow)
	end
end

for i = 1, #page_order["enhanced"] do
	guipages[page_order["enhanced"][i]..page_suffix] = copyTable(page[page_order["enhanced"][i]])
end
------------------------
-- Advanced Settings
------------------------
	-- Play Settings
local speed_selector = 1
local speed = {1, 0.5, 0.25} -- x1, x0.5, x0.25
	-- Forecast Settings
local forecast_selector = 0
	-- Jump Settings
local jump_version = {
	{name = "jump_backward", ab = "b"},
	{name = "jump_forward", ab = "f"},
	{name = "jump_neutral", ab = "n"},
}
local jump_version_selector = 2
local jump_type = {"b/f","n"}
local jump_attack_timing = {["b"] = 1, ["f"] = 1, ["n"] = 1}
local jump_part = {"prejump", "jump"}
local listen_jump_settings_modifications = {["b/f"] = true, ["n"] = true}
local scrollbar_coords = {
	["b"] = {x = 170, y = 70},
	["f"] = {x = 170, y = 70},
	["n"] = {x = 170, y = 90}
}

-- Create scrollbars controlling when a jump move should be performed
local function getJumpTotalFrames(_player_obj, _jump_name)
	local move_details = character_specific[_player_obj.character_name].move_details
	local total_frames = 0
	for p = 1, #jump_part do
		for i = 1, #move_details[_jump_name][jump_part[p]] do
			total_frames = total_frames + move_details[_jump_name][jump_part[p]][i].duration
		end
	end
	return total_frames + 1 -- (landing)
end

local function getPrejumpTotalFrames(_player_obj, _jump_name)
	local move_details = character_specific[_player_obj.character_name].move_details
	local total_frames = 0
	for i = 1, #move_details[_jump_name].prejump do
		total_frames = total_frames + move_details[_jump_name].prejump[i].duration
	end
	return total_frames
end

local function createJumpAttackTimingScrollingBar(_jump_version)
	local uf = function(n)
		if n then
			jump_attack_timing[_jump_version.ab] = jump_attack_timing[_jump_version.ab] + n
		end
		return jump_attack_timing[_jump_version.ab]
	end
	local max_frame = getJumpTotalFrames(gamestate.P2, _jump_version.name)
	guipages["jump_timing_".._jump_version.ab] = createScrollingBar(guipages["advanced_settings"..page_suffix], scrollbar_coords[_jump_version.ab].x, scrollbar_coords[_jump_version.ab].y, 1, max_frame, uf, interactivegui.boxxlength/2)
end
---------------------
-- Creating the page
---------------------
local advanced_settings_hitboxes_page = {
	title = {
		text = "Advanced Settings",
		x = interactivegui.boxxlength/2 - 83,
		y = 1,
	},
	{
		text = "<",
		olcolour = "black",
		info = "Back",
		func =  function() CIG(page_order[page_mode][1]..page_suffix,1) end,
	},
	{
		text = "Play Speed",
		x = 8,
		y = 30,
		olcolour = "black",
		info = {
			""
		},
		func =	function()
				speed_selector = speed_selector + 1
				if speed_selector > 3 then
					speed_selector = 1
				end
			end,
		autofunc = function(this)
				this.text = "Play Speed: x"..speed[speed_selector]
			end,
	},
	{
		text = "Select Jump",
		x = 8,
		y = 50,
		olcolour = "black",
		info = {
			"Select the jump version you want to use"
		},
		func =	function()
				jump_version_selector = jump_version_selector + 1
				if jump_version_selector > 2 then
					jump_version_selector = 1
				end
				listen_jump_settings_modifications["b/f"] = true
			end,
		autofunc = function(this)
				if jump_version_selector == 1 then
					this.text = "Select Jump: Backward"
				elseif jump_version_selector == 2 then
					this.text = "Select Jump: Forward"
				end
			end,
	},
	{
		text = "Jump Attack Timing",
		x = 8,
		y = 70,
		olcolour = "black",
		info = "Controls when a jump attack should be performed",
		func =  function()
					if jump_version_selector == 1 then
						CIG("jump_timing_b")
					elseif jump_version_selector == 2 then
						CIG("jump_timing_f")
					end
					listen_jump_settings_modifications["b/f"] = true -- FIX : Devrait passer à true uniquement lorsque les settings sont réellement changés
				end,
		autofunc = 	function(this)
						this.text = "Jump Attack Timing: Frame "..jump_attack_timing[jump_version[jump_version_selector].ab]
					end,
	},
	{
		text = "Jump Neutral Attack Timing",
		x = 8,
		y = 90,
		fillpercent = 0,
		olcolour = "black",
		info = "Controls when a jump neutral attack should be performed",
		func =  function()
					CIG("jump_timing_n")
					listen_jump_settings_modifications["n"] = true
				end,
		autofunc = 	function(this)
						this.text = "Jump Neutral Attack Timing: Frame "..jump_attack_timing["n"]
					end,
	},
	{
		text = "Forecast Interaction",
		x = 8,
		y = 110,
		olcolour = "black",
		info = {
			"Select the jump version you want to use"
		},
		func =	function()
				forecast_selector = forecast_selector + 1
				if forecast_selector > 0 then
					forecast_selector = -1
				end
			end,
		autofunc = function(this)
				if forecast_selector == -1 then
					this.text = "Forecast Interaction: Off"
				elseif forecast_selector == 0 then
					this.text = "Forecast Interaction: On"
				end
			end,
	},
}
guipages["advanced_settings"..page_suffix] = advanced_settings_hitboxes_page

local function loadJumpAttackTimingScrollingBar()
	for i = 1, #jump_version do -- FIX : Devrait être refait quand on change de personnage
		if character_specific[gamestate.P2.character_name].move_details[jump_version[i].name] then
			createJumpAttackTimingScrollingBar(jump_version[i])
		else
			print("Error : Can't find \""..jump_version[i].name.."\" in "..gamestate.P2.character_name.."_hitboxes.lua")
		end
	end
end
----------------------
-- Add-on button
----------------------
hitbox_viewer_button = {
		text = "In-game Hitbox Viewer",
		olcolour = "black",
		info = {
			"", -- FIX : Rajouter une description
		},
		func = 	function() CIG(page_order[page_mode][1]..page_suffix, 4) end,
	}
insertAddonButton(hitbox_viewer_button)
---------------------------------
-- Getting the right moveset
---------------------------------
-- Initialization
local state = {
	{name = "stand", prefix = "St"},
	{name = "crouch", prefix = "Cr"},
	{name = "close", prefix = "Cl"},
	{name = "jump neutral", prefix = "JN"},
	{name = "jump", prefix = "J"}
}
local advanced_state = {
	"neutral",
	"backward",
	"forward",
	"crouched",
	"jump_neutral",
	"jump_backward",
	"jump_forward"
}
local keys = {
	"LP",
	"MP",
	"HP",
	"LK",
	"MK",
	"HK"
}
local all_moves = { -- Stock the name of all possible moves and organize them by state (stand, crouch etc.)
	["all"] = {}
}
for s = 1, #state do
	all_moves[state[s].name] = {}
	for k = 1, #keys do
		table.insert(all_moves[state[s].name], state[s].prefix.." "..keys[k])
		table.insert(all_moves["all"], state[s].prefix.." "..keys[k])
	end
end
local moveset = { -- Stock the moveset of a character
	ground = {["far"] = {}, ["close"] = {}},
	jump = {["n"] = {}, ["b/f"] = {}}, 
	command_moves = {},
	special = {}
}

-- Basic functions
local function getMoveVariation(_id)
	if not string.find(_id, "+") then -- if not a command move
		if string.find(_id, "%uP") then 
			return string.match(_id, "%uP") -- return LP/MP/HP
		elseif string.find(_id, "%uK") then 
			return string.match(_id,"%uK") -- return LK/MK/HK
		elseif string.find(_id, "TAP %d") then 
			return string.match(_id,"%d") -- return TAP + number
		else
			return "" -- no variation
		end
	else
		return _id -- return command move's name
	end
end

local function makeGeneralMoveset() -- Shared by all characters (basic ground/jump moveset)
	local general_moveset = {
		{subdivision = moveset.ground["far"], move_type = "stand"}, 
		{subdivision = moveset.ground["far"], move_type = "crouch"}, 
		{subdivision = moveset.jump["n"], move_type = "jump neutral"}, 
		{subdivision = moveset.jump["b/f"], move_type = "jump"}
	}
	for i = 1, #general_moveset do
		for j = 1, #all_moves[general_moveset[i].move_type] do
			table.insert(general_moveset[i].subdivision, all_moves[general_moveset[i].move_type][j])
		end
	end
end
makeGeneralMoveset()

local function makeSpecificMoveset(_player_obj) -- Close moves, command moves and specials
	local DEBUG = true
	
	local character = _player_obj.character_name
	-- Close moves
	for i = 1, #all_moves["close"] do
		if character_specific[character].move_details[all_moves["close"][i]] then
			table.insert(moveset.ground["close"], all_moves["close"][i])
		end
	end
	-- Command moves
	for k in pairs(character_specific[character].move_details) do
		if string.find(k, "+") then 
			table.insert(moveset.command_moves, k)
		end
	end
	-- Special moves
	for i = 1, #character_specific[character].specials do
		local special_name = character_specific[character].specials[i].name
		for j = 1, #character_specific[character].specials[i].input_variations do
			local variation = character_specific[character].specials[i].input_variations[j][1]
			local full_name = special_name.." "..variation
			if character_specific[character].move_details[full_name] then
				table.insert(moveset.special, full_name)
			elseif character_specific[character].move_details[special_name] then -- in case the special doesn't have variation
				table.insert(moveset.special, special_name)
			elseif DEBUG then
				print("Missing special in the file : "..full_name)
			end
		end
	end
end
--------------------------------------------------
-- Getting ready to create a menu
-- We create the coords of the future buttons
--------------------------------------------------
-- Initialization
local function makeTitle(_title, _x, _y)
	local new_title = {
		text = _title,
		x = _x,
		y = _y,
	}
	return new_title
end

local button_preset = {}

local function makeGeneralButtonsPreset()
	local config = {
		-- Buttons displayed on the "ground hitboxes" page
		{
			title = {"Stand", "Crouch", "Close"},
			range = {1,18}, -- stand, crouch and close moves represents the moves 1 to 18 in all_moves
			_page = guipages.ground_hitboxes_page,
		},
		-- Buttons displayed on the "jump hitboxes" page
		{
			title = {"Jump Neutral", "Jump Backward / Forward"},
			range = {19,30},
			_page = guipages.jump_hitboxes_page,
		}
	}
	for c = 1, #config do
		-- Initialization
		local t = 1
		local block = 1
		local _x,_y = 25, 40
		-- First title
		config[c]._page[config[c].title[t]] = makeTitle(config[c].title[t],_x-5, _y-15)
		-- Assignates coords for each button to be created
		for i = config[c].range[1], config[c].range[2] do
			if i > config[c].range[1] then
				block = (block+1)%7 -- A block = 6 buttons
				if block == 0 then block = 1 end
				if block == 1 then -- New block and new title
					_x = 25
					_y = _y + 30
					t = t + 1
					config[c]._page[config[c].title[t]] = makeTitle(config[c].title[t],_x-5, _y-15)
				elseif block%4 == 0 and block/4 <= 1 then -- New line in the block
					_x = 25
					_y =_y + 10
				else -- New button in the line
					_x = _x + 65
				end
			end
			button_preset[all_moves["all"][i]] = {page = config[c]._page, x = _x, y = _y}
		end
	end
end

local function makeSpecificButtonsPreset()
	-- Command Moves
	guipages.jump_hitboxes_page["Command Moves"] = makeTitle("Command Moves",button_preset["J LK"].x-5,button_preset["J LK"].y + 15)
	for i = 1, 6 do
		local _x = button_preset["J LK"].x + 70*((i-1)%3)
		local _y = button_preset["J LK"].y + 30
		if i > 3 then _y = _y + 15 end
		button_preset["command_move"..i] = {page = guipages.jump_hitboxes_page, x = _x, y = _y}
	end
	-- Specials
	for i = 1, 10 do -- Should be modfied, 10 is to much
		local _x = 25
		local _y = 30 + 15*(i-1)
		guipages.special_hitboxes_page["special"..i] = makeTitle("",_x, _y) -- Placeholder for a special name
		guipages.special_hitboxes_page["special"..i.."_infos"] = makeTitle("", 120, _y) -- Will tell if this special is still in development
		button_preset["special"..i] = {}
		_x = 55
		for j = 1, 3 do
			_x = _x + 60
			button_preset["special"..i][j] = {page = guipages.special_hitboxes_page, x = _x, y = _y}
		end
	end
end
-------------------------------------------
-- Reading the moves correctly
-------------------------------------------
-- Initialization
local jump_coords = {
	P1 = {
		["jump_neutral"] = {},
		["jump_forward"] = {},
		["jump_backward"] = {},
	},
	P2 = {
		["jump_neutral"] = {},
		["jump_forward"] = {},
		["jump_backward"] = {},
	}
}

-- Basic Functions for displaying jumps
local function repeatedAnimation(_animation) -- "*" is used in hitboxes files to tell that a specific anim repeats until something happens (frequent in jump moves : the last anim repeats until the character lands)
	if string.find(_animation.duration, "*") then
		return true
	else
		return false
	end
end

-- Stocking jump coords
local function getJumpCoords(_player_obj)
	local move_details = character_specific[_player_obj.character_name].move_details
	local player = _player_obj.prefix
	for k in pairs(jump_coords[player]) do -- For each jump version
		if move_details[k] then
			for p = 1, #jump_part do
				for i = 1, #move_details[k][jump_part[p]] do -- For each anim in the current jump
					if move_details[k][jump_part[p]][i].coord then
						for j = 1, #move_details[k][jump_part[p]][i].coord do
							table.insert(jump_coords[player][k], move_details[k][jump_part[p]][i].coord[j]) -- Stock the coords for each frame in the current jump
						end
					else
						print("Error (getJumpCoords) : Coords error in \""..k.."\" (anim "..i..") in ".._player_obj.character_name.."_hitboxes.lua")
					end
				end
			end
		else
			print("Error (getJumpCoords) : Can't find \""..k.."\" in ".._player_obj.character_name.."_hitboxes.lua")
		end
	end
end

-- Loading jump coords in a jump attack
local function loadCoordsInJumpAttack(_player_obj, _move, _jump_attack_timing, _jump_version)
	local frame = _jump_attack_timing
	local player = _player_obj.prefix
	
	for i = 1, #move_part do
		if _move[move_part[i].name] then 
			for j = 1, #_move[move_part[i].name] do
				-- Creating new coords for each animation
				if _move[move_part[i].name][j].coord == nil then
					_move[move_part[i].name][j].coord = {}
				else
					for c in pairs(_move[move_part[i].name][j].coord) do
						_move[move_part[i].name][j].coord[c] = nil
					end
				end
				-- Inserting the correct jump coords to the jump attack
				if not repeatedAnimation(_move[move_part[i].name][j]) then
					for f = 1, _move[move_part[i].name][j].duration do -- For each frame in the current animation
						table.insert(_move[move_part[i].name][j].coord,jump_coords[player][_jump_version.name][frame])
						frame = frame + 1
					end
				else
					-- the last anim repeats until the character lands -> we insert the remaining jump coords in this animation
					for f = #jump_coords[player][_jump_version.name]-frame, #jump_coords[player][_jump_version.name] do
						table.insert(_move[move_part[i].name][j].coord,jump_coords[player][_jump_version.name][f])
					end
				end
			end
		end
	end
end

-- Basic Functions for displaying projectiles
local function getFrame(_hitbox, _move_part, _id, _frame)
	local frame = 0
	for i = 1, #_hitbox.move_parts do
		if _hitbox.move_parts[i] ~= _move_part then
			for j = 1, #_hitbox.move_stocked[_hitbox.move_parts[i]] do
				frame = frame + _hitbox.move_stocked[_hitbox.move_parts[i]][j].duration
			end
		else
			for j = 1, #_hitbox.move_stocked[_move_part] do
				if j < _id then
					frame = frame + _hitbox.move_stocked[_move_part][j].duration
				elseif j == _id then
					frame = frame + _frame
					return frame
				end
			end
		end
	end
end 

-- Return since how many frames a projectile is on screen
local function projectileFrameOnScreen(hitbox)
	if not hitbox.play then
		return hitbox.curr_frame - getFrame(hitbox,"active",1,1) + 1
	else
		return hitbox.play_mode.curr_frame - getFrame(hitbox,"active",1,1) + 1
	end
end

local function getProjectileHitbox(_player_obj, _move_name, frame_on_screen)
	local version_details = character_specific[_player_obj.character_name].boxes.projectile.version[getMoveVariation(_move_name)]
	local hb = {}
	for i = 1, #version_details do
		if frame_on_screen >= version_details[i].range[1] and frame_on_screen <= version_details[i].range[2] then
			table.insert(hb, character_specific[_player_obj.character_name].boxes.projectile.attack[version_details[i].attack])
			table.insert(hb, character_specific[_player_obj.character_name].boxes.projectile.vulnerability[version_details[i].vulnerability])
			return hb
		end
	end
end

local function getProjectileSpeed(_id) -- FIX : Add Sagat
	local variation = getMoveVariation(_id)
	if variation == "LP" or variation == "LK" then
		return 3
	elseif variation == "MP" or variation == "MK" then
		return 4
	elseif variation == "HP" or variation == "HK" then
		return 5
	end
end
--------------------------
-- MakeHitboxButton
--------------------------
-- Formatting the buttons
local function createArrows(_button)
	local l_arrow = {
		text = "<",
		x = _button.x - 10,
		y = _button.y,
	}
	local r_arrow = {
		text = ">",
		x = _button.x + (#_button.text*4) + 6,
		y = _button.y,
	}
	return l_arrow, r_arrow
end

-- Text functions
local function getDefaultText(move_variation)
	if move_variation == "" then -- if no variation
		return ""
	else -- if a variation exists, names it
		return move_variation.." : "
	end
end

local function getText(hitbox)
	if hitbox.animation.id > 0 then
		-- startup = S / active = A / recover = R
		local curr_anim_name = string.upper(string.sub(hitbox.curr_part,1,1))..hitbox.animation.id
		hitbox.text = getDefaultText(getMoveVariation(hitbox.id))..curr_anim_name
		-- Having buttons of the same size
		for i = 1, 4-#curr_anim_name do
			hitbox.text = hitbox.text.." "
		end
	elseif not hitbox.play then
		hitbox.text = getDefaultText(getMoveVariation(hitbox.id)).."Off "
	else
		hitbox.text = getDefaultText(getMoveVariation(hitbox.id)).."Play"
	end
end

-- State functions
local function resetButton(hitbox) -- FIX : Est-ce que tout est bien reset ?
	hitbox.animation.id = 0
	hitbox.animation.frame = 0
	hitbox.curr_part = ""
	hitbox.curr_anim = {}
	hitbox.play = false
end

local function changeHitboxStatus(hitbox, state)
	if state ~= "off" and state ~= "play" then return end
	resetButton(hitbox)
	-- Set to the correct state
	if state == "play" then
		hitbox.play = true
		hitbox.curr_anim = hitbox.move_stocked[hitbox.move_parts[1]][1]
	end
end

-- Updating [...] FIX description
local function updateCurrHitbox(hitbox)
	local _hitbox = {hitbox, hitbox.play_mode}
	for i = 1, #_hitbox do
		if _hitbox[i].animation.id > 0 then
			hitbox.hb_table = _hitbox[i].curr_anim.hitboxes
			if _hitbox[i].curr_anim.coord then
				hitbox.distance_modificator.x = _hitbox[i].curr_anim.coord[_hitbox[i].animation.frame].x
				hitbox.distance_modificator.y = _hitbox[i].curr_anim.coord[_hitbox[i].animation.frame].y
			else
				hitbox.distance_modificator.x = 0
				hitbox.distance_modificator.y = 0
			end
			return
		end
	end
end

local function updateCurrFrame(hitbox, mode)
	local _hitbox = hitbox
	if mode == "play" then
		_hitbox = hitbox.play_mode
	end
	_hitbox.curr_frame = 0
	for i = 1, #hitbox.move_parts do
		if hitbox.move_parts[i] ~= _hitbox.curr_part then
			for j = 1, #hitbox.move_stocked[hitbox.move_parts[i]] do
				_hitbox.curr_frame = _hitbox.curr_frame + hitbox.move_stocked[hitbox.move_parts[i]][j].duration
			end
		else
			for j = 1, #hitbox.move_stocked[_hitbox.curr_part] do
				if j < _hitbox.animation.id then
					_hitbox.curr_frame = _hitbox.curr_frame + hitbox.move_stocked[_hitbox.curr_part][j].duration
				elseif j == _hitbox.animation.id then
					_hitbox.curr_frame = _hitbox.curr_frame + _hitbox.animation.frame
					--print(_hitbox.curr_frame)
					return
				end
			end
		end
	end
end

-- Updating current move part (startup/active/recover)
local function loadMoveParts(_character, _id) -- return the move parts for current move
	local _move_parts = {}
	for i = 1, #move_part do
		if character_specific[_character].move_details[_id][move_part[i].name] then
			table.insert(_move_parts,move_part[i].name)
		end
	end
	return _move_parts
end

local function nextMovePart(hitbox, mode)
	local _hitbox = hitbox
	--
	if mode == "play" then
		_hitbox = hitbox.play_mode
	end
	--
	for i = 1, #hitbox.move_parts do
		if _hitbox.curr_part == hitbox.move_parts[i] then
			if i ~= #hitbox.move_parts then
				_hitbox.curr_part = hitbox.move_parts[i+1]
			else
				if mode ~= "play" then
					_hitbox.curr_part = ""
					changeHitboxStatus(hitbox,"play")
				else
					_hitbox.curr_part = hitbox.move_parts[1]
				end
			end
			return
		elseif _hitbox.curr_part == "" then -- currently displaying play or off
			if mode ~= "play" then
				if not hitbox.play then
					_hitbox.curr_part = hitbox.move_parts[1] -- if off then go to the first move part
				else
					changeHitboxStatus(hitbox,"off") -- if play then turns off
				end
			else
				_hitbox.curr_part = hitbox.move_parts[1]
			end
			return
		end
	end
end

local function prevMovePart(hitbox)
	for i = 1, #hitbox.move_parts do
		if hitbox.curr_part == hitbox.move_parts[i] then
			if i ~= 1 then
				hitbox.curr_part = hitbox.move_parts[i-1]
			else
				hitbox.curr_part = ""
				changeHitboxStatus(hitbox,"off")
			end
			return
		elseif hitbox.curr_part == "" then
			if not hitbox.play then
				changeHitboxStatus(hitbox,"play") -- if off the go to play
			else
				hitbox.curr_part = hitbox.move_parts[#hitbox.move_parts] -- if play then go to the last anim
				hitbox.play = false
			end
			return
		end
	end
end

-- Updating current anim
local function nextAnim(hitbox, mode)
	local _hitbox = hitbox
	--
	if mode == "play" then
		_hitbox = hitbox.play_mode
	end
	--
	if _hitbox.animation.id > 0 and _hitbox.animation.id ~= #hitbox.move_stocked[_hitbox.curr_part] then
		_hitbox.animation.id = _hitbox.animation.id + 1
		_hitbox.curr_anim = hitbox.move_stocked[_hitbox.curr_part][_hitbox.animation.id]
	else
		nextMovePart(hitbox, mode)
		if _hitbox.curr_part ~= "" then -- if not off or play
			_hitbox.animation.id = 1
			_hitbox.curr_anim = hitbox.move_stocked[_hitbox.curr_part][_hitbox.animation.id]
		end
	end
end

local function prevAnim(hitbox)
	if  hitbox.animation.id > 0 and hitbox.animation.id ~= 1 then
		hitbox.animation.id = hitbox.animation.id - 1
		hitbox.curr_anim = hitbox.move_stocked[hitbox.curr_part][hitbox.animation.id]
	else
		prevMovePart(hitbox)
		if hitbox.curr_part ~= "" then
			hitbox.animation.id = #hitbox.move_stocked[hitbox.curr_part]
			hitbox.curr_anim = hitbox.move_stocked[hitbox.curr_part][hitbox.animation.id]
		end
	end
end

-- Updating current frame
local function updateFrameStep(hitbox)
	-- Initiliazation
	for k in pairs(hitbox.step) do
		hitbox.step[k] = nil
	end
	-- If coords exist for the current animation
	if hitbox.curr_anim.coord then 
		for i = 1, #hitbox.curr_anim.coord do
			-- If some coords are named in the hitboxes
			if hitbox.curr_anim.coord[i].name ~= "" then
				table.insert(hitbox.step, i)
			end
		end
	end
	-- We use the last frame of the current animation
	if #hitbox.step == 0 then 
		table.insert(hitbox.step, hitbox.curr_anim.duration)
	end
end

local function nextFrameStep(hitbox)
	if hitbox.animation.id == 0 then
			nextAnim(hitbox)
			updateFrameStep(hitbox)
			hitbox.animation.frame = hitbox.step[1]
			print(hitbox.curr_part)
			print(hitbox.animation.frame)
			updateCurrFrame(hitbox)
			return
	end
	for i = 1, #hitbox.step do
		if hitbox.animation.frame == hitbox.step[i] then -- FIX : Je voudrais rajouter le moyen d'avancer frame par frame depuis le menu. Dans ce cas il serait possible que la animation.frame ne soit pas du tout égal à une des valeurs indiquées par step
			if i ~= #hitbox.step then
				hitbox.animation.frame = hitbox.step[i+1]
				print(hitbox.curr_part)
				print(hitbox.animation.frame)
				updateCurrFrame(hitbox)
				return
			else
				nextAnim(hitbox)
				updateFrameStep(hitbox)
				hitbox.animation.frame = hitbox.step[1]
				print(hitbox.curr_part)
				print(hitbox.animation.frame)
				updateCurrFrame(hitbox)
				return
			end
		end
	end
end

local function prevFrameStep(hitbox)
	if hitbox.animation.id == 0 then
			prevAnim(hitbox)
			updateFrameStep(hitbox)
			hitbox.animation.frame = hitbox.step[#hitbox.step]
			return
	end
	for i = 1, #hitbox.step do
		if hitbox.animation.frame == hitbox.step[i] then
			if i ~= 1 then
				hitbox.animation.frame = hitbox.step[i-1]
				return
			else
				prevAnim(hitbox)
				updateFrameStep(hitbox)
				hitbox.animation.frame = hitbox.step[#hitbox.step]
				return
			end
		end
	end
end

-- returnHitboxButton
local function returnHitboxButton(_character, _id, _preset)
	hitbox_button = {
		-- Basic Settings
		text = getDefaultText(getMoveVariation(_id)).."Off ",
		x = _preset.x,
		y = _preset.y,
		page = _preset.page,
		olcolour = "black",
		fillpercent = 0,
		-- Move stocked
		id = _id, -- The name of the move
		move_stocked = character_specific[_character].move_details[_id], -- The list of all its anims
		-- Move parts
		move_parts = loadMoveParts(_character,_id),
		curr_part = "",
		animation = {id = 0, frame = 0},
		curr_anim = {},
		-- For "Play" option
		play_mode = {
			curr_part = "",
			animation = {id = 0, frame = 0},
			curr_anim = {},
			curr_frame = 0,
		},
		-- Total frame
		curr_frame = 0,
		-- Display Settings
		display = {prev = false, next = false},
		step = {},
		play = false,
		counter = 0,
		hb_table = {},
		distance_modificator = {
			x = 0,
			y = 0,
		},
		autofunc = function(this)
			-- Circling through the animations and stocking the correct hitbox
			if this.display.next then
				nextFrameStep(this)
				updateCurrHitbox(this)
				this.display.next = false
			elseif this.display.prev then
				prevFrameStep(this)
				updateCurrHitbox(this)
				this.display.prev = false
			end
			-- Displaying the correct informations
			getText(this)
			if this.animation.id > 0 or this.play then
				this.fillpercent = 1
			else
				this.fillpercent = 0
			end
		end,
	}
	return hitbox_button
end

local hitbox = {} -- Contains each button
local checked_hitbox = {} -- Contains the name of the buttons which are not set to off

local function makeHitboxButton(_character, _id, _preset)
	hitbox[_id] = returnHitboxButton(_character, _id, _preset) -- Creates the button
	table.insert(hitbox[_id].page, hitbox[_id]) -- Inserts it to the correct page
	hitbox[_id].page[_id.."_l_arrow"],hitbox[_id].page[_id.."_r_arrow"] = createArrows(hitbox[_id]) -- Creates arrows for this button
	hitbox[_id].arrows = {_preset.page[_id.."_l_arrow"], _preset.page[_id.."_r_arrow"]}
end
-------------------------------------
-- Creating the relevant buttons
-------------------------------------
local upload_general_moveset = {moveset.ground["far"], moveset.ground["close"], moveset.jump["b/f"], moveset.jump["n"]} -- moves to be uploaded

local function makeHitboxMenu()
	local character = gamestate.P2.character_name
	-- Creating buttons for the moves shared by all characters
	for i = 1, #upload_general_moveset do
		if #upload_general_moveset[i] > 0 then
			for j = 1, #upload_general_moveset[i] do
				local curr_move = upload_general_moveset[i][j]
				makeHitboxButton(character, curr_move, button_preset[curr_move])
			end
		end
	end
	-- Command Moves
	if #moveset.command_moves > 0 then 
		guipages.jump_hitboxes_page["Command Moves"].text = "Command Moves"
		for i = 1, #moveset.command_moves do
			makeHitboxButton(character, moveset.command_moves[i], button_preset["command_move"..i])
		end
	else
		guipages.jump_hitboxes_page["Command Moves"].text = ""
	end
	-- Special Moveset
	local special_nb = 0
	for i = 1, #character_specific[character].specials do
		local special_name = character_specific[character].specials[i].name
		guipages.special_hitboxes_page["special"..i].text = special_name
		for j = 1, #character_specific[character].specials[i].input_variations do
			local variation = character_specific[character].specials[i].input_variations[j][1]
			local full_name = special_name.." "..variation
			if character_specific[character].move_details[full_name] then
				makeHitboxButton(character, full_name, button_preset["special"..i][j])
			elseif character_specific[character].move_details[special_name] then
				makeHitboxButton(character, special_name, button_preset["special"..i][1])
				break
			else
				guipages.special_hitboxes_page["special"..i.."_infos"].text = "Still in development"
			end
		end
	end
end
---------------------------------
-- Inserting buttons' functions
---------------------------------
local function insertButtonsFunctions()
	for k, v in pairs(hitbox) do
		local Elements = {
			{
				releasefunc = function() 
					return function() 
						CIG(interactivegui.previouspage, interactivegui.previousselection)
						interactivegui.previouspage,interactivegui.previousselection = interactivegui.page,interactivegui.selection 
						hitbox[k].arrows[1].textcolour,hitbox[k].arrows[2].textcolour = "white","white"
					end 
				end,
				autofunc = function()
					return function()
						if guiinputs.P1.left and not guiinputs.P1.previousinputs.left then
							hitbox[k].display.prev = true
						elseif guiinputs.P1.right and not guiinputs.P1.previousinputs.right then
							hitbox[k].display.next = true
						end
					end
				end,
			}
		}
		guipages["hitbox_selection_"..k] = createPopUpMenu(hitbox[k].page, nil, nil, nil, Elements, -200, -200)
		hitbox[k].func = function()
			hitbox[k].arrows[1].textcolour,hitbox[k].arrows[2].textcolour = "yellow","yellow"
			CIG("hitbox_selection_"..k) 
		end
	end
end


-----------------------------------------------
-----------------------------------------------
-----------------------------------------------
-- VERIFIE EN ENTIER (QUASI)
-----------------------------------------------
-----------------------------------------------
-----------------------------------------------
----------------------
-- Display Frame Data
----------------------
local function sameHitboxes(hitbox1, hitbox2)
	local box1, box2 = {},{}
	for k in pairs(hitbox1) do
		table.insert(box1,{type = hitbox1[k].type, id = hitbox1[k].id})
	end
	for k in pairs(hitbox2) do
		table.insert(box2,{type = hitbox2[k].type, id = hitbox2[k].id})
	end
	if #box1 ~= #box2 then
		return false
	end
	for i = 1, #box1 do
		if (box1[i].type ~= box2[i].type) or (box1[i].id ~= box2[i].id) then
			return false
		end
	end
	return true
end

local move_selector = 1
local framedata = {startup = {}, active = {}, recover = {}}
local new_framedata = false
local framedata_display = ""
local simplified_display = true

local function displayFramedata()
	local selected_hitbox = checked_hitbox[move_selector].handle.move_stocked
	-- Uploading the frame data
	if new_framedata then
		local total_duration = 0
		local new_duration = true
		for i = 1, #move_part do
			for k in pairs(framedata[move_part[i].name]) do
				framedata[move_part[i].name][k] = nil
			end
			if selected_hitbox[move_part[i].name] then
				for j = 1, #selected_hitbox[move_part[i].name] do
					if not simplified_display then
						table.insert(framedata[move_part[i].name],selected_hitbox[move_part[i].name][j].duration)
					else
						if #selected_hitbox[move_part[i].name] > 1 then
							if j > 1 then
								if new_duration then
									total_duration = selected_hitbox[move_part[i].name][j-1].duration
								end
								if sameHitboxes(selected_hitbox[move_part[i].name][j].hb_table, selected_hitbox[move_part[i].name][j-1].hb_table) then
									total_duration = total_duration + selected_hitbox[move_part[i].name][j].duration
									new_duration = false
								else
									table.insert(framedata[move_part[i].name],selected_hitbox[move_part[i].name][j].duration)
									new_duration = true
								end
							end
						else
							table.insert(framedata[move_part[i].name],selected_hitbox[move_part[i].name][j].duration)
						end
					end
				end
			end
		end
		new_framedata = false
	end
	-- Displaying it
	-- Initialization
	local x,y = 60,210
	local color = "white"
	local title = checked_hitbox[move_selector].handle.id.." : "
	local str_length = #title
	local first_anim = true
	-- Make title
	gui.text(x, y, title)
	x = x + str_length*4
	for i = 1, #move_part do
		if #framedata[move_part[i].name] > 0 then
			for j = 1, #framedata[move_part[i].name] do
				-- Inserting a "/" between each number
				if not first_anim then
					x = x + str_length*3 + 4
					gui.text(x,210,"/")
					x = x + 7
				else
					x = x + 7
				end
				-- Highlighting the current anim's duration
				if checked_hitbox[move_selector].hb_table == selected_hitbox[move_part[i].name][j].hb_table then
					color = "yellow" 
				else
					color = "white"
				end
				-- Display
				gui.text(x,y, framedata[move_part[i].name][j], color)
				str_length = #tostring(framedata[move_part[i].name][j])
				first_anim = false
			end
		end
	end
end
-------------
-- Hotkeys
-------------
local function noBoxError()
	msg1 = "Select at least one box in Addon > Ingame Hitbox Viewer"
	msg_fcount = MSG_FRAMELIMIT - 120
end

-- Press MP to keep the current boxes on screen, even if the corresponding buttons are set to something else
local saved_hitbox = {}

local function lockBoxes()
	local saved_player_obj = {pos_x = gamestate.P2.pos_x, pos_y = gamestate.P2.pos_y, flip_input = gamestate.P2.flip_input}
	for i = 1, #checked_hitbox do
		table.insert(saved_hitbox, {player_obj = saved_player_obj, hitbox = copyTable(checked_hitbox[i])})
	end
end
newHotkey("MP",lockBoxes, "MP : Keep the current boxes on screen (Hitbox Viewer)")

-- Press LK to select another move
local function selectMove()
	if #checked_hitbox > 0 then
		move_selector = move_selector + 1
		if move_selector > #checked_hitbox then
			move_selector = 1
		end
		new_framedata = true
	else
		noBoxError()
	end
end
newHotkey("LK",selectMove, "LK : Select another move (Hitbox Viewer)")

-- Press MK to see the previous anim
local function displayPreviousAnim()
	if #checked_hitbox > 0 then
		if move_selector > #checked_hitbox then
			move_selector = 1
		end
		local hitbox = checked_hitbox[move_selector].handle
		hitbox.animation.frame = hitbox.animation.frame - 1
		if hitbox.animation.frame < 0 then
			hitbox.animation.frame = 1
		end
		checked_hitbox[move_selector].hb_table = hitbox.hb_table
		checked_hitbox[move_selector].distance_modificator = hitbox.distance_modificator
	else
		noBoxError()
	end
end
newHotkey("MK",displayPreviousAnim, "MK : See previous anim (Hitbox Viewer)")

-- Press HK to see the next anim
local function displayNextAnim()
	if #checked_hitbox > 0 then
		if move_selector > #checked_hitbox then
			move_selector = 1
		end
		local hitbox = checked_hitbox[move_selector].handle
		-- if hitbox.play then
			-- nextAnim(
		-- hitbox.animation.frame = hitbox.animation.frame + 1
		-- if hitbox.animation.frame == 0 then hitbox.animation.frame = 1 end
		-- checked_hitbox[move_selector].hb_table = hitbox.hb_table
		-- checked_hitbox[move_selector].distance_modificator = hitbox.distance_modificator
	else
		noBoxError()
	end
end
newHotkey("HK",displayNextAnim, "HK : See next anim (Hitbox Viewer)")

local function playAnim(_hitbox) -- FIX : Insérer l'animation de saut pour les coups sautés
	local DEBUG = false
	-- Initialization
	if _hitbox.play_mode.curr_part == "" then 
		nextAnim(_hitbox,"play")
	end
	-- Counting the frames
	_hitbox.counter = countFrames(_hitbox.counter)
	-- Updating animation.frame correctly and loading the next anim if needed
	if _hitbox.counter > (_hitbox.play_mode.curr_anim.duration*(speed[speed_selector]^(-1))) then
		_hitbox.counter = 1
		nextAnim(_hitbox,"play")
	end
	_hitbox.play_mode.animation.frame = math.floor(_hitbox.counter*speed[speed_selector]+(1-speed[speed_selector]))
	-- Updating the current hitbox
	updateCurrHitbox(_hitbox)
	updateCurrFrame(_hitbox, "play")
	-- DEBUG
	if DEBUG then
		gui.text(100,100, "Counter : ".._hitbox.counter)
		gui.text(100,110, "Current Frame : ".._hitbox.play_mode.animation.frame)
		gui.text(100,120, "Anim Duration : ".._hitbox.play_mode.curr_anim.duration)
	end
end
---------------------------
-- Misc buttons
---------------------------
local function resetButtons()
	for k in pairs(hitbox) do
		resetButton(hitbox[k])
	end
end
page_elements.reset.func = resetButtons

local function clearScreen()
	if #saved_hitbox > 0 then
		for k in pairs(saved_hitbox) do
			saved_hitbox[k] = nil
		end
	end
end
page_elements.clear_screen.func = clearScreen


--------------------------------------
-- Displaying the registered boxes
--------------------------------------
-- Initialization
local box_desc = {
	      ["vulnerability"] = {color = 0x0000FF, fill = 0x00, outline = 0xFF},
	             ["attack"] = {color = 0xFF0000, fill = 0x00, outline = 0xFF},
	["proj. vulnerability"] = {color = 0x00FFFF, fill = 0x00, outline = 0xFF},
	       ["proj. attack"] = {color = 0xFF6600, fill = 0x00, outline = 0xFF},
	               ["push"] = {color = 0x00FF00, fill = 0x00, outline = 0xFF},
	               ["weak"] = {color = 0xFF00FF, fill = 0x00, outline = 0xFF},
	              ["throw"] = {color = 0xFFFF00, fill = 0x00, outline = 0xFF},
	          ["throwable"] = {color = 0xF0F0F0, fill = 0x00, outline = 0xFF},
	      ["air throwable"] = {color = 0x202020, fill = 0x00, outline = 0xFF},
}
for _,box in pairs(box_desc) do
	box.fill    = box.color * 0x100 + box.fill
	box.outline = box.color * 0x100 + box.outline
end

-- Basic functions
local function get_x(x)
	return x - gamestate.screen_x
end
local function get_y(y)
	return emu.screenheight() - (y - 15) + gamestate.screen_y
end

-- Updating and displaying the boxes
local function updateRegisteredBoxes(_obj, _hb, ...) -- Display the boxes at the correct player distance
	-- Copying the box absolute values
	local box = copyTable(_hb)
	
	-- Getting the character position
	local flip = -1
	if _obj.flip_input then flip = 1 end
	local x_modificator, y_modificator = ... -- If the move selected modifies the position of the character
	if not x_modificator then x_modificator = 0 else x_modificator = x_modificator * flip end
	if not y_modificator then y_modificator = 0 end
	local pos_x, pos_y = get_x(_obj.pos_x + x_modificator), get_y(_obj.pos_y + y_modificator)
	
	-- Calculating relative values
	box.hval = box.hval * flip
	box.hval   = pos_x + box.hval
	box.vval   = pos_y - box.vval
	box.left   = box.hval - box.hrad
	box.right  = box.hval + box.hrad
	box.top    = box.vval - box.vrad
	box.bottom = box.vval + box.vrad
	
	return box
end

local function drawRegisteredBoxes(_hb)
	gui.box(_hb.left, _hb.top, _hb.right, _hb.bottom, box_desc[_hb.type].fill, box_desc[_hb.type].outline)
end

local function displayRegisteredBoxes(_obj, hitbox, ...)
	for i = 1, #hitbox.hb_table do
		drawRegisteredBoxes(updateRegisteredBoxes(_obj, hitbox.hb_table[i], ...))
	end
	if hitbox.move_stocked.has_projectile then
		if hitbox.curr_part == "active" or hitbox.play_mode.curr_part == "active" then
			local flip = -1
			local projectile_hb = getProjectileHitbox(_obj, hitbox.id, projectileFrameOnScreen(hitbox))
			if projectile_hb then
				if _obj.flip_input then flip = 1 end
				local projectile = {pos_x = _obj.pos_x + (character_specific[_obj.character_name].boxes.projectile.spawn.x + (projectileFrameOnScreen(hitbox)*getProjectileSpeed(hitbox.id)))*flip, pos_y = _obj.pos_y + character_specific[readCharacterName(_obj)].boxes.projectile.spawn.y, flip_input = _obj.flip_input}
				for i = 1, #projectile_hb do
					drawRegisteredBoxes(updateRegisteredBoxes(projectile, projectile_hb[i], ...))
				end
			end
		end
	end
end
-------------------------
-- Updating the settings
-------------------------
local listen_box_settings_modif = false

function updateCheckedHitbox()
	if interactivegui.enabled and not listen_box_settings_modif then -- FIX : Mettre listen_box_settings_modif dans les fonctions associées aux boutons
		for k in pairs(checked_hitbox) do
			checked_hitbox[k] = nil
		end
		listen_box_settings_modif = true
	end
	if not interactivegui.enabled and listen_box_settings_modif then
		for k, v in pairs(hitbox) do
			if hitbox[k].animation.id > 0 or hitbox[k].play then
				table.insert(checked_hitbox, {hb_table = hitbox[k].hb_table, distance_modificator = hitbox[k].distance_modificator, handle = hitbox[k]})
			end
		end
		listen_box_settings_modif = false
		new_framedata = true
	end
end

-- If jump attack timing has been modified then load new coords
local function updateJumpCoords()
	if not interactivegui.enabled then
		for i = 1, #jump_type do
			if listen_jump_settings_modifications[jump_type[i]] then
				local _jump_attack_timing, _jump_version = nil, nil
				if jump_type[i] == "n" then 
					_jump_attack_timing = jump_attack_timing["n"]
					_jump_version = jump_version[3]
				else 
					_jump_attack_timing = jump_attack_timing[jump_version[jump_version_selector].ab]
					_jump_version = jump_version[jump_version_selector]
				end
				for j = 1, #moveset.jump[jump_type[i]] do
					loadCoordsInJumpAttack(gamestate.P2, hitbox[moveset.jump[jump_type[i]][j]].move_stocked,_jump_attack_timing, _jump_version)
				end
				listen_jump_settings_modifications[jump_type[i]] = false
			end
		end
	end
end
---------------------------------------
-- Loading and reloading the menu
---------------------------------------
local first_load = true
local hitbox_viewer_loaded = false

local function deleteHitboxViewer()
	print(">>> Deleting the settings")
	-- Deleting specifing moveset
	local specific_moveset = {moveset.ground["close"], moveset.command_moves, moveset.special}
	for i = 1, #specific_moveset do
		for k in pairs(specific_moveset[i]) do
			specific_moveset[i][k] = nil
		end
	end
	-- Removing buttons
	for i = 1, #page_order["enhanced"] do
		guipages[page_order["enhanced"][i]..page_suffix] = copyTable(page[page_order["enhanced"][i]])
	end
end

local function readCharacterSpecifics(_player_obj)
	print(">>> Reading character specifics")
	getJumpCoords(_player_obj)
end

local hitbox_file_address = "games/ssf2xjr1/data/character_specific/"

local function loadHitboxFile()
	local hitbox_loaded = {false, false}
	for p = 1, #player do
		local character = player[p].character_name
		if not character_specific[character].move_details then
			local hitbox_file = hitbox_file_address..character.."/"..character.."_hitboxes.lua"
			if fexists(hitbox_file) then
				print(">>> Loading "..character.." ("..player[p].prefix..") hitbox file")
				dofile(hitbox_file)
				hitbox_loaded[p] = true
			else
				print(">>> Error : Can't find "..character.." ("..player[p].prefix..") hitbox file")
			end
		else
			hitbox_loaded[p] = true
			print(">>> "..character.."'s hitboxes are already loaded")
		end
	end
	if hitbox_loaded[1] and hitbox_loaded[2] then
		return true
	else
		return false
	end
end

local function makeHitboxViewerSettings()
	if loadHitboxFile() then
		print(">>> Making Hitbox Viewer Settings")
		makeSpecificMoveset(gamestate.P2)
		readCharacterSpecifics(gamestate.P1)
		readCharacterSpecifics(gamestate.P2)
		makeGeneralButtonsPreset()
		makeSpecificButtonsPreset()
		loadJumpAttackTimingScrollingBar()
		makeHitboxMenu()
		insertButtonsFunctions()
		formatGuiTables()
		hitbox_viewer_loaded = true
	else
		hitbox_viewer_loaded = false
	end
end

local function reloadHitboxViewer()
	print(">>> Reloading Hitbox Viewer Settings")
	interactivegui.page = 1
	interactivegui.selection = 1
	deleteHitboxViewer()
	makeHitboxViewerSettings()
	formatGuiTables()
end

local function loadHitboxViewer()
	if first_load then
		makeHitboxViewerSettings()
		first_load = false
	end
	if characterChanged(gamestate.P2) then
		if #checked_hitbox > 0 then
			for k in pairs(checked_hitbox) do
				checked_hitbox[k] = nil
			end
		end
		reloadHitboxViewer()
	end
end

local function updateHitboxViewerSettings()
	if hitbox_viewer_loaded then
		updateCheckedHitbox()
		updateJumpCoords()
	end
end

--------------------------------
--------------------------------
-- Read Future
--------------------------------
--------------------------------

-----------------------
-- General Functions
-----------------------

-- Distance related
local function getMinDistanceBetweenPlayers()
	local pushbox1 = character_specific[gamestate.P1.character_name].boxes.push["1"].hrad
	local pushbox2 = character_specific[gamestate.P2.character_name].boxes.push["1"].hrad
	return pushbox1 + pushbox2
end

local function getMaxDistanceBetweenPlayers()
	local player_left, player_right = nil
	if playerOneFacingLeft() then
		player_left, player_right = gamestate.P2, gamestate.P1
	else
		player_left, player_right = gamestate.P1, gamestate.P2
	end
	return (gamestate.screen_x + 384 - rb(player_right.addresses.min_dist_from_screen)) - (gamestate.screen_x + rb(player_left.addresses.min_dist_from_screen))
end

-- Jump related
local function getJumpInfo(_move_name)
	if not isJump(_move_name) then
		return nil, nil
	end
	local jump_ab = {"_b","_f","JN"}
	local _jump_version, _jump_attack_timing = nil, nil
	for i = 1, #jump_ab do
		if string.find(_move_name, jump_ab[i]) then
			_jump_version = jump_version[i]
		end
	end
	if _move_name:match("%d%d") then
		_jump_attack_timing = _move_name:match("%d%d")
	else
		_jump_attack_timing = _move_name:match("%d")
	end
	return _jump_version, tonumber(_jump_attack_timing)
end

-- Input related
local function getBuffer(_move_name)
	if _move_name:find("St") or _move_name:find("Cr") or _move_name:find("+") then
		return 2
	else
		return 1
	end
end

local function doP2Move(_move_name)
	local key = getMoveVariation(_move_name)
	local dir = 5
	
	if string.find(_move_name, "Cr") then dir = 2 end
	modifyInputSet(gamestate.P2,dir,key)
end
--------------------------------
-- Creating "Future Objects"
--------------------------------
-- Stocking the future boxes of a character
local function makeFuturePlayerObject(_player_obj)
	return {
			id = _player_obj.id,
			base = _player_obj.base,
			addresses = _player_obj.addresses,
			prefix = _player_obj.prefix,
			pos_x  = _player_obj.pos_x,
			pos_y = _player_obj.pos_y,
			flip_input = _player_obj.flip_input,
			boxes = {}	
		}
end

local function resetFuturePlayerObject(_player_obj, mode)
	_player_obj.future.pos_x = _player_obj.pos_x
	_player_obj.future.pos_y = 40 --_player_obj.pos_y -- FIX
	_player_obj.future.flip_input = _player_obj.flip_input
	if mode == "all" then
		for k in pairs(_player_obj.future.boxes) do
			_player_obj.future.boxes[k] = nil
		end
	end
end

for i = 1, #player do
	player[i].future = makeFuturePlayerObject(player[i])
end

-------------------------------
-- Reading Future Boxes
-------------------------------

function isEmptyJump(_move_name) -- Return true if the move is a jump
	if _move_name:find("jump_") then
		return true
	else
		return false
	end
end

local function readFutureBoxes(_player_obj, move_name) -- Creates a table containing, for each future frame, the future boxes of the character
	
	-- Initialization
	
	local DEBUG = false
	
	local frame = 0
	local move_id = move_name
	-- For jump moves, "move_name"'s format is "move_id + _ + jump version + _ + jump attack timing"
	-- We want to isolate move_id. For example : "J LP_F_30" -> "J LP"
	if not isEmptyJump(move_id) then
		if move_id:find("_") then
			move_id = move_id:sub(1,move_id:find("_")-1)
		end
	end
	local move = character_specific[_player_obj.character_name].move_details[move_id]

		-- Jump related
	local _jump_version, _jump_attack_timing = getJumpInfo(move_name)
	local anim_frame_range = {} -- RENAME
	
		-- Projectile related
	local first_active_frame = 0
	
		-- Creating the table
	if _player_obj.future.boxes[move_name] then
		for k, v in pairs(_player_obj.future.boxes[move_name]) do
			_player_obj.future.boxes[move_name][k] = nil
		end
	else
		_player_obj.future.boxes[move_name] = {}
	end

	-- Handling jump moves
	local x,y = 0,0
	if _jump_version ~= nil or isEmptyJump(move_id) then
		-- If we're before the attack, load the jump anim
		local jump = nil
		local prejump_duration = 0
		if _jump_version ~= nil then
			jump = character_specific[_player_obj.character_name].move_details[_jump_version.name]
			--print("Jump Attack")
			prejump_duration = getPrejumpTotalFrames(_player_obj,_jump_version.name)
		else
			--print("Empty Jump")
			jump = character_specific[_player_obj.character_name].move_details[move_id]
			prejump_duration = getPrejumpTotalFrames(_player_obj,move_id)
		end
		local max_frame = 0
		if _jump_attack_timing ~= nil then
			max_frame = _jump_attack_timing - 1
		else
			max_frame = getJumpTotalFrames(_player_obj, move_id) - 1
		end
		--print("Max Frame = "..max_frame)
		-- Prejump
		for i = 1, #jump.prejump do
			for f = 1, jump.prejump[i].duration do
				frame = frame + 1
				_player_obj.future.boxes[move_name][frame] = {}
				local x,y = jump.prejump[i].coord[f].x, jump.prejump[i].coord[f].y
				for h = 1, #jump.prejump[i].hitboxes do
					table.insert(_player_obj.future.boxes[move_name][frame], updateRegisteredBoxes(_player_obj.future, jump.prejump[i].hitboxes[h], x, y))
				end
				if DEBUG then
					print("FRAME "..frame.. " (pre-jump) : Anim = Prejump anim "..i.." / Coords = {"..x..","..y.."}")
				end
			end
		end
		-- for each anim in the jump we stock its first and last frame number
		for i = 1, #jump.jump do
			if #anim_frame_range == 0 then
				anim_frame_range = {{min = prejump_duration + 1, max =  prejump_duration +  jump.jump[i].duration}}
			else
				table.insert(anim_frame_range,{min = anim_frame_range[#anim_frame_range].max + 1, max = anim_frame_range[#anim_frame_range].max + jump.jump[i].duration})
			end
		end
		
		if frame < max_frame then
			for f = frame, max_frame - 1 do -- for each frame before the attack
				frame = frame + 1
				_player_obj.future.boxes[move_name][frame] = {}
				for i = 1, #anim_frame_range do
					if frame >= anim_frame_range[i].min and frame <= anim_frame_range[i].max then -- We load the correct anim and correct coords for the current frame 
						x,y = jump.jump[i].coord[frame-anim_frame_range[i].min+1].x, jump.jump[i].coord[frame-anim_frame_range[i].min+1].y
						if DEBUG then
							print("FRAME "..frame.. " (pre-attack) : Anim = Jump anim "..i.." / Coords = {"..x..","..y.."}")
						end
						for h = 1, #jump.jump[i].hitboxes do
							table.insert(_player_obj.future.boxes[move_name][frame], updateRegisteredBoxes(_player_obj.future, jump.jump[i].hitboxes[h], x, y))
						end
						break
					end
				end
			end
		end
		if _jump_version ~= nil then
			loadCoordsInJumpAttack(_player_obj, move,_jump_attack_timing,_jump_version)
		end
	end

	-- For Startup / Active / Recover
	if not isEmptyJump(move_id) then
		for i = 1, #move_part do
			if move[move_part[i].name] then
				for j = 1, #move[move_part[i].name] do -- for each animation in the current part
					if not repeatedAnimation(move[move_part[i].name][j]) then
						for f = 1, move[move_part[i].name][j].duration do -- for each frame in this animation
							if (_jump_version ~= nil and frame >= #jump_coords[_player_obj.prefix][_jump_version.name]) then -- if we're stocking a jump move and the jump should be finished then exit and go to landing
								print(#jump_coords[_player_obj.prefix][_jump_version.name])
								break
							else
								frame = frame + 1
								_player_obj.future.boxes[move_name][frame] = {}
								x,y = 0,0
								if move[move_part[i].name][j].coord then -- if the move modifies the position of the character, stock the modificator of the current frame
									x = move[move_part[i].name][j].coord[f].x
									y = move[move_part[i].name][j].coord[f].y
								end
								if DEBUG then
									if _jump_version ~= nil then
										print("FRAME "..frame.. " (jump attack) : Anim = Attack anim "..move_part[i].name.." "..j.." / Coords = {"..x..","..y.."}")
									end
								end
								-- For each frame of the current move, we're stocking the future hitboxes at their correct location
								for h = 1, #move[move_part[i].name][j].hitboxes do
									table.insert(_player_obj.future.boxes[move_name][frame], updateRegisteredBoxes(_player_obj.future, move[move_part[i].name][j].hitboxes[h], x, y))
								end
								-- Handling projectile
								if move.has_projectile then
									if move_part[i].name == "active" then
										-- We stock the first active frame number to use it for the projectile coords calculation
										if f == 1 and move_part[i].name == "active" and first_active_frame == 0 then
											first_active_frame = frame
										end
										local flip = -1
										if _player_obj.future.flip_input then flip = 1 end
										local projectile = character_specific[_player_obj.character_name].boxes.projectile
										local projectile_on_screen = frame - first_active_frame + 1
										local projectile_hb = getProjectileHitbox(_player_obj, move_name, projectile_on_screen)
										if projectile_hb then
											local projectile_speed = getProjectileSpeed(move_name)
											local proj_distance_traveled = (projectile.spawn.x + projectile_on_screen*projectile_speed)*flip
											local projectile = {pos_x = _player_obj.future.pos_x + proj_distance_traveled, pos_y = _player_obj.pos_y + projectile.spawn.y, flip_input = _player_obj.flip_input}
											for i = 1, #projectile_hb do
												table.insert(_player_obj.future.boxes[move_name][frame], updateRegisteredBoxes(projectile, projectile_hb[i]))
											end
										end
									end
								end
							end
						end
					else
						-- if the animation repeats itself
						if _jump_version ~= nil and frame <= #jump_coords[_player_obj.prefix][_jump_version.name] then -- the last anim repeats until the character lands
							local jump = character_specific[_player_obj.character_name].move_details[_jump_version.name]
							for f = frame+1, #jump_coords[_player_obj.prefix][_jump_version.name] do
								frame = frame + 1
								table.insert(_player_obj.future.boxes[move_name], {})
								for k = 1, #anim_frame_range do
									if frame >= anim_frame_range[k].min and frame <= anim_frame_range[k].max then
										x,y = jump.jump[k].coord[frame-anim_frame_range[k].min+1].x, jump.jump[k].coord[frame-anim_frame_range[k].min+1].y
										if DEBUG then
											print("FRAME "..frame.. " (post-attack) : Anim = Jump anim "..k.." / Coords = {"..x..","..y.."}")
										end
										for h = 1, #jump.jump[k].hitboxes do
											table.insert(_player_obj.future.boxes[move_name][frame], updateRegisteredBoxes(_player_obj.future, move[move_part[i].name][j].hitboxes[h], x, y))
										end
										break
									end
								end
							end
						end
					end
				end
			end
		end
	end
	if _jump_version ~= nil or isEmptyJump(move_id) then
		frame = frame + 1
		_player_obj.future.boxes[move_name][frame] = {}
		local landing = character_specific[_player_obj.character_name].move_details.landing[1] -- FIX
		for h = 1, #landing.hitboxes do
			table.insert(_player_obj.future.boxes[move_name][frame], updateRegisteredBoxes(_player_obj.future, landing.hitboxes[h], x))
		end
		if DEBUG then
			print("FRAME "..frame.. " (Landing) : Anim = Landing anim / Coords = {"..x..",0}")
		end
	end
end

local function readHitboxHurtboxCollision(p1_boxes, p2_boxes)
	local DEBUG = false
	local player_id = {"p1","p2"}
	local hit = {p1 = false, p2 = false}
	local attacker_boxes,defender_boxes = p1_boxes,p2_boxes
	for p = 1, 2 do
		for i = 1, #attacker_boxes do
			if attacker_boxes[i].type == "attack" or attacker_boxes[i].type == "proj. attack"  then
				local hitbox = attacker_boxes[i]
				for j = 1, #defender_boxes do
					if defender_boxes[j].type == "vulnerability" then
						local hurtbox = defender_boxes[j]
						if ((hitbox.bottom >= hurtbox.top) and (hitbox.top < hurtbox.bottom)) or ((hitbox.top >= hurtbox.bottom) and (hitbox.bottom < hurtbox.top)) then
							if ((hitbox.right >= hurtbox.left) and (hitbox.left <= hurtbox.right) and isCharacterLeft(player[p])) or ((hitbox.left <= hurtbox.right) and (hitbox.right >= hurtbox.left) and not isCharacterLeft(player[p])) then
								if DEBUG then 
									print("Player "..p.." hits (Hitbox "..hitbox.id.." VS Hurtbox "..hurtbox.id..")")
								end
								hit[player_id[p]] = true
							end
						end
					end
				end
			end
		end
		attacker_boxes,defender_boxes = defender_boxes,attacker_boxes
	end
	if DEBUG then
	if hit.p1 and hit.p2 then 
			print(">>> Trade")
		end 
	end
	return hit
end

------------------------
-- Run a Simulation
------------------------
local simulation_timing = 0
local simulation_frame = 0
local run_simulation = false

local p1_jump_attack_timing = 30

local function resetSimulation()
	simulation_frame = 0
	resetFuturePlayerObject(gamestate.P1, "all")
	resetFuturePlayerObject(gamestate.P2, "all")
	local p1_move = gamestate.P1.move
	if isJump(p1_move) then
		p1_move = p1_move.."_"..p1_jump_attack_timing
	end
	readFutureBoxes(gamestate.P1, p1_move)
	readFutureBoxes(gamestate.P2,checked_hitbox[move_selector].handle.id)
end

local function playSimulation()
	if run_simulation and not interactivegui.enabled then
		-- Reset
		if gamestate.P1.prev.move ~= gamestate.P1.move then
			resetSimulation()
		end
		-- Initialization
		local p1_move_name = gamestate.P1.move
		local buffer = getBuffer(p1_move_name)
		if isJump(p1_move_name) then
			p1_move_name = p1_move_name.."_"..p1_jump_attack_timing
		end
		local p1_move = gamestate.P1.future.boxes[p1_move_name]
		local p2_move = gamestate.P2.future.boxes[checked_hitbox[move_selector].handle.id]
		local p1_frame, p2_frame = 0,0 
		-- Drawing future P1 move
		if simulation_frame > buffer and simulation_frame <= #p1_move+buffer then
			p1_frame = simulation_frame-buffer
			print(p1_frame)
			for i = 1, #p1_move[p1_frame] do
				drawRegisteredBoxes(p1_move[p1_frame][i])
			end
		end
		-- Drawing future P2 move
		if simulation_timing + simulation_frame >= 1 then
			p2_frame = simulation_timing + simulation_frame
			if p2_frame > 0 then
				if p2_frame <= #p2_move then
					for i = 1, #p2_move[p2_frame] do
						drawRegisteredBoxes(p2_move[p2_frame][i])
					end
				end
			end
		end
		
		if p1_move[p1_frame] and p2_move[p2_frame] then
			local result = readHitboxHurtboxCollision(p1_move[p1_frame], p2_move[p2_frame])
			gui.text(230,100,"P1 hit : "..str(result.p1))
			gui.text(230,110,"P2 hit : "..str(result.p2))
		end
		
		-- Informations on screen
		gui.text(100,100, "Timing : "..simulation_timing)
		gui.text(100,110, "Curr Frame in the simulation : "..simulation_frame)
		gui.text(100,120, "Curr Frame (total) : "..simulation_frame+simulation_timing)
		gui.text(100,130, "Curr frame P1 : "..simulation_frame-buffer)
		if isJump(p1_move_name) then
			gui.text(100,150, "Jump attack timing : "..p1_jump_attack_timing)
		end
	end
end

local function launchSimulation()
	run_simulation = not run_simulation
	if run_simulation then
		resetSimulation()
	end
end

newHotkey("HP",launchSimulation, "Run Simulation (Hitbox Viewer)")

local function inc_timing()
	simulation_timing = simulation_timing + 1
end
local function dec_timing()
	simulation_timing = simulation_timing - 1
end
local function dec_frame()
	simulation_frame = simulation_frame - 1
end
local function inc_frame()
	simulation_frame = simulation_frame + 1
end
local function inc_jump_attack_timing()
	if isJump(gamestate.P1.move) then
		p1_jump_attack_timing = p1_jump_attack_timing + 1
		if p1_jump_attack_timing >= 44 then -- FIX
			p1_jump_attack_timing = 1
		end
		resetSimulation()
	end
end

input.registerhotkey(1, dec_timing)
input.registerhotkey(2, inc_timing)
input.registerhotkey(3, dec_frame)
--input.registerhotkey(4, inc_frame)
--input.registerhotkey(6, inc_jump_attack_timing)

------------------------
-- Punish Practice
------------------------
local run_punish_practice = false

local function launchPunishPractice()
	run_punish_practice = not run_punish_practice
	punish_counter = -45
end
input.registerhotkey(7, launchPunishPractice)


local p1_attempt = false
local p1_attempt_timing = punish_counter
local punish_counter = -50

local function practicePunish()
	if run_punish_practice and not interactivegui.enabled then
		gui.text(100,90,"Punish Practice".." (with "..gamestate.P1.move..")")
		punish_counter = countFrames(punish_counter)
		if not p1_attempt then
			p1_attempt_timing = punish_counter
		end
		if punish_counter == -3 then -- FIX
			doP2Move(checked_hitbox[move_selector].handle.id)
		end
		if not p1_attempt then
			if not isJump(gamestate.P1.move) then
				if gamestate.P1.is_attacking then
					p1_attempt = true
					p1_attempt_timing = p1_attempt_timing - 1
				end
			else
				local _jump_version = getJumpInfo(gamestate.P1.move)
				if readMove(gamestate.P1, _jump_version.name) then
					p1_attempt = true
					p1_attempt_timing = p1_attempt_timing - 2
				end
			end
		end
		
		if punish_counter >= 50 then
			punish_counter = -45
			p1_attempt = false
		end
	end
end

local show_reaction = false
local reaction_timing = -1
local reaction_attempt = false
local display_reaction_timing = -120

local function showReactionTime()
	if not interactivegui.enabled and #checked_hitbox > 0 then
		if readMove(gamestate.P2, checked_hitbox[move_selector].handle.id) and not show_reaction then -- FIX : faire une autre fonction qui détecte vraiment les premières frames du coup
			show_reaction = true
			reaction_timing = -1
		end
		
		if show_reaction then
			if not reaction_attempt then
				reaction_timing = countFrames(reaction_timing)
				if not isJump(gamestate.P1.move) then
					if gamestate.P1.is_attacking then
						reaction_attempt = true
						reaction_timing = reaction_timing - 1
					end
				else
					local _jump_version = getJumpInfo(gamestate.P1.move)
					if readMove(gamestate.P1, _jump_version.name) then
						reaction_attempt = true
						reaction_timing = reaction_timing - 1
					end
				end
				if reaction_timing >= 50 then
					reaction_timing = -1
					show_reaction = false
				end
			else
				display_reaction_timing = countFrames(display_reaction_timing)
				if reaction_timing > 0 then
					gui.text(100,110, "Reaction time : "..reaction_timing.."f")
				end
				if display_reaction_timing >= 0 then
					reaction_timing = -1
					display_reaction_timing = -120
					show_reaction = false
					reaction_attempt = false
				end
			end
		end
	end
end


---------------------------
-- Forecast Interaction
---------------------------
local function forecastInteraction(p1_move_name, p2_move_name, _result_ref)
		
	local DEBUG  = true
	
	local result_to_be_used = ""
	
	local p1_move = gamestate.P1.future.boxes[p1_move_name]
	local p2_move = gamestate.P2.future.boxes[p2_move_name]
	
	if p1_move == nil then
		readFutureBoxes(gamestate.P1, p1_move_name)
		p1_move = gamestate.P1.future.boxes[p1_move_name]
	end
	if p2_move == nil then
		readFutureBoxes(gamestate.P2, p2_move_name)
		p2_move = gamestate.P2.future.boxes[p2_move_name]
	end
	local curr_result = ""
	
	local result_by_frame = {first_frame = 0, result = ""}
	local buffer = getBuffer(p1_move_name)
	result_by_frame.first_frame = 1 - #p1_move - buffer
	
	if _result_ref then
		result_by_frame.result = _result_ref
	else
		_result_ref = ""
	end
	
	for i = 1-#p1_move+#_result_ref, #p2_move do
		for j = 1, #p1_move do -- For each P1 move frames
			if i + j > 0 and i + j <= #p2_move then -- If this frame occurs with a P2 move frame at timing i
				local hit = readHitboxHurtboxCollision(p1_move[j], p2_move[i+j]) -- We check if a collision can happen
				if hit.p1 then
					if not hit.p2 then
						curr_result = "h" -- hit
						break
					else
						curr_result = "t" -- trade
						break
					end
				elseif hit.p2 then
					curr_result = "c" -- countered
					break
				else
					curr_result = "w" -- whiff
				end
			end
		end
		result_by_frame.result = result_by_frame.result..curr_result
	end
	print(#result_by_frame.result)
	
	return result_by_frame
end

-------------------------------------------
-- Forecast Interaction For Each Distance
-------------------------------------------

local function forecastInteractionForEachDistance(p1_move_name, p2_move_name, _result_ref)

	local jump_version, jump_timing = getJumpInfo(p1_move_name)

	local curr_forecast = {}
	local prev_forecast_result = ""
	
	local result_by_distance = {}
	
	local p2_pos = gamestate.P2.pos_x
	
	resetFuturePlayerObject(gamestate.P1)
	resetFuturePlayerObject(gamestate.P2)
	readFutureBoxes(gamestate.P2,p2_move_name)
	
	local box_type = {"vulnerability", "attack", "proj. attack"}
	local direction = {"left", "right", "bottom", "top"}
	local traj = {
		["P1"] =  {["vulnerability"] = {}, ["attack"] = {}, ["proj. attack"] = {}},
		["P2"] =  {["vulnerability"] = {}, ["attack"] = {}, ["proj. attack"] = {}}
	}

	local function getTraj(_player_obj, move_name)
		for f = 1, #_player_obj.future.boxes[move_name] do
			for b = 1, #_player_obj.future.boxes[move_name][f] do
				local box = _player_obj.future.boxes[move_name][f][b]
				for t = 1, #box_type do
					if box.type == box_type[t] then
						local new_entry = {}
						local insert_new_entry = true
						for d = 1, #direction do
							new_entry[direction[d]] = box[direction[d]]
						end
						if #traj[_player_obj.prefix][box_type[t]] ~= 0 then
							for e = 1, #traj[_player_obj.prefix][box_type[t]] do
								local idem = true
								for k in pairs(traj[_player_obj.prefix][box_type[t]][e]) do
									if new_entry[k] ~= traj[_player_obj.prefix][box_type[t]][e][k] then
										idem = false
									end
								end
								if idem then
									insert_new_entry = false
									break
								end
							end
						end
						if insert_new_entry then
							table.insert(traj[_player_obj.prefix][box_type[t]], new_entry)
						end
					end
				end
			end
		end
	end
	local function modifyTraj(_player_obj, modif)
		for t = 1, #box_type do
			for d = 1, 2 do
				for e = 1, #traj[_player_obj.prefix][box_type[t]] do
					traj[_player_obj.prefix][box_type[t]][e][direction[d]] = traj[_player_obj.prefix][box_type[t]][e][direction[d]] + modif
				end
			end
		end
	end
	local function modifyFutureBoxes(_player_obj, move_name, modif)
		for f = 1, #_player_obj.future.boxes[move_name] do
			for b = 1, #_player_obj.future.boxes[move_name][f] do
				local box = _player_obj.future.boxes[move_name][f][b]
				box.left = box.left + modif
				box.right = box.right + modif
			end
		end
	end
	
	getTraj(gamestate.P2, p2_move_name)
	
	local ini = false
	
	local counter = -1
	local can_hit = false

	for i = getMinDistanceBetweenPlayers(), getMaxDistanceBetweenPlayers() do
		if not ini then
			if playerOneFacingLeft() then
				gamestate.P1.future.pos_x = p2_pos + getMinDistanceBetweenPlayers()
			else
				gamestate.P1.future.pos_x = p2_pos - getMinDistanceBetweenPlayers()
			end
			readFutureBoxes(gamestate.P1,p1_move_name)
			getTraj(gamestate.P1, p1_move_name)
			ini = true
		else
			if playerOneFacingLeft() then
				modifyFutureBoxes(gamestate.P1, p1_move_name, 1)
				modifyTraj(gamestate.P1, 1)
			else
				modifyFutureBoxes(gamestate.P1, p1_move_name, -1)
				modifyTraj(gamestate.P1, -1)
			end
		end
		
		if counter >= 0 then
			counter = counter - 1
		end
		if counter < 0 then
			can_hit = false
		end

		if not can_hit then
			for p = 1, 2 do
				local traj_attack = traj["P1"]["attack"]
				if #traj["P1"]["attack"] == 0 then
					traj_attack = traj["P1"]["proj. attack"]
				end
				local traj_vulnerability = traj["P2"]["vulnerability"]
				if p == 2 then
					traj_attack = traj["P2"]["attack"]
					if #traj["P2"]["attack"] == 0 then
						traj_attack = traj["P2"]["proj. attack"]
					end
					traj_vulnerability = traj["P1"]["vulnerability"]
				end
				for a = 1, #traj_attack do
					local hitbox = traj_attack[a]
					for v = 1, #traj_vulnerability do
						local hurtbox = traj_vulnerability[v]
						if ((hitbox.bottom >= hurtbox.top) and (hitbox.top < hurtbox.bottom)) or ((hitbox.top >= hurtbox.bottom) and (hitbox.bottom < hurtbox.top)) then
							if ((hitbox.right >= hurtbox.left) and (hitbox.left <= hurtbox.right) and isCharacterLeft(player[p])) then
								counter = hitbox.right - hurtbox.left
								can_hit = true
								break
							elseif ((hitbox.left <= hurtbox.right) and (hitbox.right >= hurtbox.left) and not isCharacterLeft(player[p])) then
								counter = hurtbox.right - hitbox.left
								can_hit = true
								break
							end
						end
					end
					if can_hit then break end
				end
				if can_hit then break end
			end
		end
		
		if can_hit then
			if _result_ref then
				result_to_be_used = ""
				for d = 1, #_result_ref do
					if i >= _result_ref[d].distance.min and i <= _result_ref[d].distance.max then
						-- print("Current result to be used for distance "..i.." is :")
						-- print(_result_ref[d].distance)
						-- print("Jump Timing : "..jump_timing)
						-- print(_result_ref[d].result)
						for r = 1, jump_timing - 1 do
							result_to_be_used = result_to_be_used.._result_ref[d].result:sub(r,r)
						end
					end
				end
				print("Result already known for timing "..jump_timing.." : "..result_to_be_used)
			end
			curr_forecast = forecastInteraction(p1_move_name, p2_move_name, result_to_be_used)

			if curr_forecast.result ~= prev_forecast_result then
				local new_entry = {distance = {min = i, max = i}, result = curr_forecast.result}
				table.insert(result_by_distance, new_entry)
			else
				result_by_distance[#result_by_distance].distance.max = i
			end
			prev_forecast_result = curr_forecast.result
		else
			break
		end
		
	end
	result_by_distance.first_frame = curr_forecast.first_frame
	
	-- We reset the object to save some space
	resetFuturePlayerObject(gamestate.P1, "all")
	resetFuturePlayerObject(gamestate.P1, "all")
	
	return result_by_distance
end

--------------------------------
-- Save Forecast Interaction
--------------------------------
local function nl(nb) -- new line
	local str = ""
	for i = 1, nb do
		str = str.."\n"
	end
	return str
end

local function tab(nb) -- new tabulation
	local str = ""
	for i = 1, nb do
		str = str.."\t"
	end
	return str
end

local forecast_files_address = "games/ssf2xjr1/addon/resources/forecast_save/"

forecast_result = {}
for i = 1, #characters do
  forecast_result[characters[i]] = {}
  for j = 1, #characters do
	forecast_result[characters[i]][characters[j]] = {}
  end
end

local function saveForecast(_p1_move, _p2_move, comp_p1_move, comp_p2_move, _save_file)
	local p1_name, p2_name = gamestate.P1.character_name, gamestate.P2.character_name
	local forecast = forecast_result[p1_name][p2_name][_p1_move.."/".._p2_move]
	local comp_forecast_p1, comp_forecast_p2 = nil, nil
	if comp_p1_move then
		comp_forecast_p1 = forecast_result[p1_name][p2_name][comp_p1_move.."/".._p2_move]
	end
	if comp_p2_move then
		comp_forecast_p2 = forecast_result[p1_name][p2_name][_p1_move.."/"..comp_p2_move]
	end
	local save_file_address = _save_file
	local save_file = io.open(save_file_address,"a+")
	if comp_forecast_p1 then
		if  (#forecast == #comp_forecast_p1) and (forecast.first_frame == comp_forecast_p1.first_frame) then
			for i = 1, #forecast do
				if forecast[i] ~= comp_forecast_p1[i] then
					break
				end
				if i == #forecast then
					save_file:write(nl(1).."forecast_result[\""..p1_name.."\"]".."[\""..p2_name.."\"]".."[\"".._p1_move.."/".._p2_move.."\"] = forecast_result[\""..p1_name.."\"]".."[\""..p2_name.."\"]".."[\""..comp_p1_move.."/".._p2_move.."\"]")
					return
				end
			end
		end
	end
	-- Naming the entry
	save_file:write(nl(2).."forecast_result[\""..p1_name.."\"]".."[\""..p2_name.."\"]".."[\"".._p1_move.."/".._p2_move.."\"] = {"..nl(1))
	-- Saving first frame
	save_file:write(tab(1).."first_frame = "..forecast.first_frame..","..nl(1))
	for i = 1, #forecast do
		if comp_forecast_p1 then
			if forecast[i] == comp_forecast_p1[i] then
				save_file:write(tab(1).."forecast_result[\""..p1_name.."\"]".."[\""..p2_name.."\"]".."[\""..comp_p1_move.."/".._p2_move.."\"]["..i.."],"..nl(1))
			else
				-- Opening the table
				save_file:write(tab(1).."{"..nl(1))
				-- Save Distance
				save_file:write(tab(2).."distance = {min = "..forecast[i].distance.min..", max = "..forecast[i].distance.max.."},"..nl(1))
				-- Save Frame Result
				save_file:write(tab(2).."result =\""..forecast[i].result.."\","..nl(1))
				-- Closing the table
				save_file:write(tab(1).."},"..nl(1))
			end
		else
			-- Opening the table
			save_file:write(tab(1).."{"..nl(1))
			-- Save Distance
			save_file:write(tab(2).."distance = {min = "..forecast[i].distance.min..", max = "..forecast[i].distance.max.."},"..nl(1))
			-- Save Result
			save_file:write(tab(2).."result =\""..forecast[i].result.."\","..nl(1))
			-- Closing the table
			save_file:write(tab(1).."},"..nl(1))
		end
	end
	-- Closing the current entry
	save_file:write("}"..nl(1))
end

local save_file_address = forecast_files_address..gamestate.P1.character_name.."/"..gamestate.P2.character_name.."/ground_attacks.lua"
if fexists(save_file_address) then
	dofile(save_file_address)
end
------------------------
-- Frame Result Bar
------------------------
-- Colors (0xRRGGBBTT)
local black = 0x000000FF
local white = 0xFFFFFFFF
local green = 0x00FF00FF
local red = 0xFF0000FF
local yellow = 0xFFFF00FF
local orange = 0xF28C28FF
local blank = 0x00000000
-- Framedata Bar
local bar_length = 90
local bar_x = 10
local bar_y = 50, 65
-- getColor
local function getColor(id)
	if id == "h" then
		return red
	elseif id == "t" then
		return yellow
	elseif id == "c" then
		return green
	elseif id == "w" then
		return blank
	end
end

local frame_result_bar = {}

for k = 1, bar_length do
	frame_result_bar[k] = {
		x1 = bar_x, 
		y1 = bar_y, 
		x2 = bar_x + 4,
		y2 = bar_y + 10,
		fill = blank, 
		outline = black,
		frame_id = k-(bar_length/2),
		display_frame_count = false,
		display_topside = true,
		min = false,
		max = false,
	}
	bar_x = bar_x + 4
end

local function resetBar()
	for f = 1, #frame_result_bar do
		frame_result_bar[f].fill = blank
		frame_result_bar[f].display_frame_count = false
		frame_result_bar[f].display_topside = false
		frame_result_bar[f].min = false
		frame_result_bar[f].max = false
	end
end

local function highlightFrame(frame, bool) -- maybe we should modify the color of the highlighted frame. Make it brighter ?
	if bool then
		frame_result_bar[frame].y1 = bar_y - 1
		frame_result_bar[frame].y2 = bar_y + 11
	else
		frame_result_bar[frame].y1 = bar_y
		frame_result_bar[frame].y2 = bar_y + 10
	end
end

local projectile_hit_timing = nil

local function drawFrameResultBar(_forecast_result, _first_frame)
	local display_topside = true
	for f = 1, #frame_result_bar do
		-- Highlighting
		if (run_simulation and frame_result_bar[f].frame_id == simulation_timing) or (run_punish_practice and frame_result_bar[f].frame_id == p1_attempt_timing) or (show_reaction and frame_result_bar[f].frame_id == reaction_timing) then
			highlightFrame(f, true)
		else
			highlightFrame(f, false)
		end
		-- Display the bar sections
		gui.box(frame_result_bar[f].x1, frame_result_bar[f].y1, frame_result_bar[f].x2, frame_result_bar[f].y2, frame_result_bar[f].fill, frame_result_bar[f].outline)
		-- Get the right color
		if frame_result_bar[f].frame_id >= _first_frame then
			local character_pos = _first_frame*(-1) + frame_result_bar[f].frame_id + 1
			local character = _forecast_result.result:sub(character_pos,character_pos)
			frame_result_bar[f].fill = getColor(character)
		else
			frame_result_bar[f].fill = blank
		end
	end
	for f = 1, #frame_result_bar do
		-- Show Frame 0 (that is to say the moment p2 move happens)
		if frame_result_bar[f].frame_id == 0 then
			gui.line(frame_result_bar[f].x1+2,frame_result_bar[f].y1+14,frame_result_bar[f].x1+2,frame_result_bar[f].y1+20, 0x000000FF)
			gui.text(frame_result_bar[f].x1-3,frame_result_bar[f].y1+23, checked_hitbox[move_selector].handle.id)
		end
		-- Show the frame where a projectile will hit
		if projectile_hit_timing then
			if frame_result_bar[f].frame_id == projectile_hit_timing then
				gui.line(frame_result_bar[f].x1+2,frame_result_bar[f].y1+14,frame_result_bar[f].x1+2,frame_result_bar[f].y1+25, 0x000000FF)
				local x = frame_result_bar[f].x1-3
				if frame_result_bar[f].frame_id > 38 then
					x = frame_result_bar[83].x1-3
				end
				gui.text(x, frame_result_bar[f].y1+27, "P2 hit ("..projectile_hit_timing.."f)")
			end
		end
		-- Display the frame count
		if f > 1 and f < #frame_result_bar then
			if frame_result_bar[f].fill ~= frame_result_bar[f-1].fill then
				-- Display the last frame of the last section
				if frame_result_bar[f-1].fill ~= blank then
					frame_result_bar[f-1].display_frame_count = true
					frame_result_bar[f-1].display_topside = display_topside
					frame_result_bar[f-1].min = false
					frame_result_bar[f-1].max = true
				end
				-- Display the first frame of the current section
				if frame_result_bar[f].fill ~= blank then
					frame_result_bar[f].display_frame_count = true
					frame_result_bar[f].display_topside = not display_topside
					frame_result_bar[f].min = true
					frame_result_bar[f].max = false
				end
				if frame_result_bar[f].fill ~= frame_result_bar[f+1].fill then
					frame_result_bar[f].max = true
				end
				-- Change the side of the future frame numbers
				display_topside = not display_topside
			end
			if frame_result_bar[f].fill == frame_result_bar[f-1].fill and frame_result_bar[f].fill == frame_result_bar[f+1].fill then
				frame_result_bar[f].display_frame_count = false
				frame_result_bar[f].min = false
				frame_result_bar[f].max = false
			end
		end
	end
	for f = 1, #frame_result_bar do
		if frame_result_bar[f].display_frame_count then
			local y1,y2 = 16,13
			if not frame_result_bar[f].display_topside then
				y1,y2 = -6,-3
			end
			gui.line(frame_result_bar[f].x1+2,frame_result_bar[f].y1+y1,frame_result_bar[f].x1+2,frame_result_bar[f].y1+y2, black)
			if frame_result_bar[f].min then
				for g = f, #frame_result_bar do
					if frame_result_bar[g].max then
						gui.line(frame_result_bar[f].x1+2,frame_result_bar[f].y1+y1,frame_result_bar[g].x1+2,frame_result_bar[f].y1+y1, black)
						local text = frame_result_bar[f].frame_id.." -> "..frame_result_bar[g].frame_id
						local y1_modif = 5
						if not frame_result_bar[f].display_topside then
							y1_modif = -8
						end
						gui.text((((frame_result_bar[f].x1+2)+(frame_result_bar[g].x1+2))/2)-#text*2,frame_result_bar[f].y1+y1+y1_modif,text)
						break
					end
				end
			end
		end
	end
end

-------------------------
-- Draw Forecast
-------------------------

local function hasInteraction(_forecast_result)
	local elements = {"h","c","t"}
	for i = 1, #elements do
		if string.find(_forecast_result.result, elements[i]) then
			return true
		end
	end
	return false
end

local function drawForecastResult(_forecast_result)
	local color = {"purple", "red", "green", "blue", "yellow"} -- FIX : more colors or find another way to distinguish the zones
	for i = 1, #_forecast_result do
		if hasInteraction(_forecast_result[i]) then
			local flip = 1
			if not playerOneFacingLeft() then flip = -1 end
			local x1 = _forecast_result[i].distance.min*flip + gamestate.P2.screen_relative_pos_x
			local x2 = _forecast_result[i].distance.max*flip + gamestate.P2.screen_relative_pos_x
			gui.box(x1, 200,x2, 207, color[i])
			if getDistanceBetweenPlayers() >= _forecast_result[i].distance.min and getDistanceBetweenPlayers() <= _forecast_result[i].distance.max then
				drawFrameResultBar(_forecast_result[i], _forecast_result.first_frame)
			end
		end
	end
end

local function simplifyJumpForecast(prev_forecast, curr_forecast)
	for i = 1, #curr_forecast do
		if prev_forecast[i] then
			if (prev_forecast[i].distance.min == curr_forecast[i].distance.min) and (prev_forecast[i].distance.max == curr_forecast[i].distance.max) then
				if prev_forecast[i].result == curr_forecast[i].result then
					curr_forecast[i] = prev_forecast[i]
				end
			end
		end
	end
end

local function displayForecast()
	if forecast_selector > -1 then
		if #checked_hitbox > 0 then
			local p1_name, p2_name = gamestate.P1.character_name, gamestate.P2.character_name
			-- Reading the moves
			updateCurrMove(gamestate.P1)
			local p1_move, p2_move  = gamestate.P1.move, checked_hitbox[move_selector].handle.id
			local p1_move_name, p2_move_name = gamestate.P1.move, checked_hitbox[move_selector].handle.id
			if p1_move == nil or p2_move == nil then return end
			-- Handling jumps
			local p2_jump_attack_timing = jump_attack_timing[jump_version[jump_version_selector].ab]
			-- Saving file
			local save_file_address = forecast_files_address..p1_name.."/"..p2_name.."/"
			local forecast = forecast_result[p1_name][p2_name]
			
			if gamestate.P1.move ~= gamestate.P1.prev.move then -- FIX : Si le move du P2 change il faut aussi pouvoir recharger l'affichage quand le P1 performe le même coup normal
				-- If it's a new move then we're forecasting the interaction between P1 and P2 move. We stock the result in forecast_result
				if not isJump(p1_move_name) and not isJump(p2_move_name) then
					if not forecast[p1_move.."/"..p2_move] then
						forecast[p1_move.."/"..p2_move] = forecastInteractionForEachDistance(p1_move, p2_move)
						local address = save_file_address.."ground_attacks.lua"
						saveForecast(p1_move, p2_move, nil, nil,address)
					end
				elseif isJump(p1_move_name) and not isJump(p2_move_name) then
					if fexists(save_file_address..p1_move.."_VS_"..p2_move..".lua") then
						dofile(save_file_address..p1_move.."_VS_"..p2_move..".lua")
					else
						local jump_version, jump_attack_timing = getJumpInfo(p1_move_name)
						forecast["jumpRef"] = forecastInteractionForEachDistance(jump_version.name,p2_move_name)
						for i = (getPrejumpTotalFrames(gamestate.P1, jump_version.name) + 1), getJumpTotalFrames(gamestate.P1, jump_version.name) do
							local p1_move_timing_modified = p1_move.."_"..i
							forecast[p1_move_timing_modified.."/"..p2_move] = forecastInteractionForEachDistance(p1_move_timing_modified, p2_move, forecast["jumpRef"])
							if i > getPrejumpTotalFrames(gamestate.P1, jump_version.name) + 1 then
								simplifyJumpForecast(forecast[ p1_move.."_"..i-1 .."/"..p2_move],forecast[p1_move_timing_modified.."/"..p2_move]) 
								local address = save_file_address..p1_move.."_VS_"..p2_move..".lua"
								saveForecast(p1_move_timing_modified, p2_move,  p1_move.."_"..i-1, nil, address)
							else
								local address = save_file_address..p1_move.."_VS_"..p2_move..".lua"
								saveForecast(p1_move_timing_modified, p2_move, nil, nil, address)
							end
						end
					end
				elseif not isJump(p1_move) and isJump(p2_move) then
					for i = 1, 40 do--#jump_coords[_player_obj.prefix][_jump_version.name] do -- FIX : décomposer le saut en jump et prejump
						local p2_move_timing_modified = p2_move.."_"..jump_version[jump_version_selector].ab.."_"..i
						if not forecast[p1_move.."/"..p2_move_timing_modified] then
							if fexists(save_file_address..p1_move.."_VS_"..p2_move..".lua") then
								dofile(save_file_address..p1_move.."_VS_"..p2_move..".lua")
							end
							if not forecast[p1_move.."/"..p2_move_timing_modified] then
								forecast[p1_move.."/"..p2_move_timing_modified] = forecastInteractionForEachDistance(p1_move, p2_move_timing_modified)
								local address = save_file_address.._p1_move.."_VS_".._p2_move..".lua"
								saveForecast(p1_move, p2_move_timing_modified, nil, nil, address)
							end
						end
					end
				end
			end
			
			if isJump(p1_move) then
				p1_move = p1_move.."_"..p1_jump_attack_timing
			end
			if isJump(p2_move) then
				p2_move = p2_move.."_"..jump_version[jump_version_selector].ab.."_"..p2_jump_attack_timing
			end

			if forecast[p1_move.."/"..p2_move] then
				drawForecastResult(forecast[p1_move.."/"..p2_move])
				if character_specific[p2_name].move_details[p2_move_name].has_projectile then
					local state = {"neutral", "forward", "backward", "crouched", "crouching", "lifting_up"}
					local calc_hit_timing = false
					for s = 1, #state do
						calc_hit_timing = readMove(gamestate.P1, state[s])
						if calc_hit_timing then
							if (gamestate.P2.prev.pos_x ~= gamestate.P2.pos_x) or not gamestate.P2.future.boxes[p2_move] then
								resetFuturePlayerObject(gamestate.P2)
								readFutureBoxes(gamestate.P2, p2_move)
							end
							for i = 1, #gamestate.P2.future.boxes[p2_move] do
								local hit = readHitboxHurtboxCollision(gamestate.P1.boxes, gamestate.P2.future.boxes[p2_move][i])
								if hit.p2 then
									projectile_hit_timing = i - getBuffer(p1_move) + 1
									return
								end
							end
							break
						end
					end
				else
					projectile_hit_timing = nil
				end
			end
			gamestate.P1.prev.move = gamestate.P1.move -- FIX : Le placer ailleurs ?
		end
	end
end
----------------------------
-- displaying all the info
----------------------------
local function display()
	-- Display the boxes checked in the menu
	if not run_simulation then
		if #checked_hitbox > 0 then
			for i = 1, #checked_hitbox do
				if checked_hitbox[i].handle.play then
					playAnim(checked_hitbox[i].handle)
					checked_hitbox[i].hb_table = checked_hitbox[i].handle.hb_table
					checked_hitbox[i].distance_modificator = checked_hitbox[i].handle.distance_modificator
				end
				displayRegisteredBoxes(gamestate.P2, checked_hitbox[i].handle, checked_hitbox[i].distance_modificator.x,checked_hitbox[i].distance_modificator.y)
			end
			--displayFramedata()
		end
	end
	-- Display the boxes saved with "Hotkey MP"
	if #saved_hitbox > 0 then
		for i = 1, #saved_hitbox do
			displayRegisteredBoxes(saved_hitbox[i].player_obj, saved_hitbox[i].hitbox.hb_table, saved_hitbox[i].hitbox.distance_modificator.x,saved_hitbox[i].hitbox.distance_modificator.y)
		end
	end
	if #checked_hitbox > 0 or #saved_hitbox > 0 then drawHitboxes(gamestate.P2, false) else drawHitboxes(gamestate.P2, true) end
	if run_simulation then drawHitboxes(gamestate.P1, false) else drawHitboxes(gamestate.P1, true) end
	-- Forecast
	displayForecast()
end

local function getDashConst(_dash)
	local _dash_const = {speed = 0, deceleration = 0, dist_to_be_traveled = 0}
	if _dash:find("Ground Straight") then
		_dash_const.speed = 0x800
		_dash_const.deceleration = 0xA0
		if _dash:find("LP") then
			_dash_const.dist_to_be_traveled = 0x20
		elseif _dash:find("MP") then
			_dash_const.dist_to_be_traveled = 0x40
		elseif _dash:find("HP") then
			_dash_const.dist_to_be_traveled = 0x60
		end
		return _dash_const
	end
end

local function getDashSpeed(_dash_const, _speed, _dist_traveled, _dist_from_opponent)
	if _dist_traveled > _dash_const.dist_to_be_traveled or _dist_from_opponent <= 0x58 then
		_speed = _speed-_dash_const.deceleration
	end
	local result = tonumber(string.sub(tostring(string.format("%x",_speed)),1,1))
	return result
end

local function updateDashCoords(_player_obj, _dash)
	if player_obj.character ~= Boxer then
		return
	end
	local og_pos_x = _player_obj.future.pos_x
	local dash_const = getDashConst(_dash)
	local speed = dash_const.speed
	local dash = character_specific.boxer.move_details[_dash]
	local coord = 0
	local distance_from_opponent = 0
	
	for i = 1, #move_part do
		for j = 1, #dash[move_part[i].name] do -- For each animation
			dash[move_part[i].name][j].coord = {}
			for k = 1, dash[move_part[i].name][j].duration do
				local dist_from_opponent = (gamestate.P1.pos_x + coord) - (gamestate.P2.pos_x - rb(gamestate.P2.addresses.min_dist_from_screen))
				coord = coord + getDashSpeed(dash_const, speed, coord, dist_from_opponent)
				local coord_set = {name = "", x = 0 , y = 0}
				table.insert(dash[move_part[i].name][j].coord, coord_set)
			end
		end
	end
end

local function analyzeFramedata(character)
	local file_address = "games/ssf2xjr1/addon/resources/analysis/"
	if not fexists(file_address..character..".lua") then
		if fexists(hitbox_file_address..character.."/"..character.."_hitboxes.lua") then
			print("Analysing "..character.." framedata !")
			dofile(hitbox_file_address..character.."/"..character.."_hitboxes.lua")
			local movelist = character_specific[character].move_details
			local output = io.open(file_address..character..".lua", "a+")
			local table_by_startup = {}
			for k in pairs(movelist) do
				local startup_length = 0
				if movelist[k].startup then
					for anim = 1, #movelist[k].startup do
						startup_length = startup_length + movelist[k].startup[anim].duration
					end
					if not table_by_startup["\""..startup_length.."\""] then
						table_by_startup["\""..startup_length.."\""] = {}
					end
					table.insert(table_by_startup["\""..startup_length.."\""], k)
				end
			end
			local tkey = {}
			for k in pairs(table_by_startup) do
				print(k)
				table.insert(tkey, k)
			end
			table.sort(tkey)
			
			for k, v in pairs(tkey) do
				output:write("Startup = "..v.."\n\n")
				for i = 1, #table_by_startup[v] do
					output:write(table_by_startup[v][i].."\n")
				end
			end
		end
	end
end

local ini = false
------------------------------------
-- InGameHitboxViewer
------------------------------------
local function InGameHitboxViewer()
	loadHitboxViewer()
	updateHitboxViewerSettings()

	if gamestate.is_in_match then
		display()
		playSimulation()
		practicePunish()
		showReactionTime()
		--gui.text(100,100,"0x"..string.format("%X",gamestate.P1.animation_id))
		-- ww(gamestate.P2.addresses.pos_x, gamestate.P1.pos_x+100)
		-- ww(gamestate.P2.addresses.pos_y, gamestate.P1.pos_y+900)
		--analyzeFramedata("blanka")
		if gamestate.P2.character == Boxer then
			gui.text(200,160,"Speed : 0x"..string.format("%X",rw(gamestate.P2.base+0x3C)))
			gui.text(200,170,"Deceleration : 0x"..string.format("%X",rw(gamestate.P2.base+0x40)))
			gui.text(200,180,"Result : 0x"..string.format("%X",rw(gamestate.P2.base+0x3C)-rw(gamestate.P2.base+0x40)))
			gui.text(200,190,"Distance from opponent : 0x"..string.format("%X",rw(gamestate.P2.base+0x182)))
			gui.text(200,200,"Distance to be traveled : 0x"..string.format("%X",rw(gamestate.P2.base+0xE6)))
			gui.text(200,210,"Distance traveled : 0x"..string.format("%X",gamestate.P2.pos_x-rw(gamestate.P2.base+0x92)))
			dash_const = getDashConst("Ground Straight LP")
			dash_result = getDashSpeed(dash_const, 0x800, 0x19, 0x58)
			print(dash_result)
		end
		 updateCurrMove(gamestate.P1)
		 -- gui.text(100,110,gamestate.P1.move)
		 -- if not ini then
			-- local character = player[1].character_name
			-- local animation_table = {}
			-- for k, v in pairs(character_specific[character].move_details) do
				-- local move = character_specific[character].move_details[k]
				-- if #move > 0 then
					-- for j = 1, #move do
						-- local move_name = k
						-- local animation = move[j].animation
						-- local anim_nb = j
						-- local idem = false
						-- local idem_info = {animation = nil, move = nil, part = nil, nb = nil}
						-- if #animation_table > 0 then
							-- for h = 1, #animation_table do
								-- if animation == animation_table[h].anim then
									-- idem = true
									-- idem_info.animation = animation
									-- idem_info.move = animation_table[h].move
									-- idem_info.part = animation_table[h].part
									-- idem_info.nb = animation_table[h].nb
								-- end
							-- end
						-- end
						-- if not idem then
							-- local entry = {anim = animation, move = move_name, part = nil, nb = anim_nb}
							-- table.insert(animation_table,entry)
						-- else
							-- print("Animation = 0x"..string.format("%x",animation))
							-- print(move_name.." ("..j..") = "..idem_info.move.." ("..idem_info.nb..")")
							-- if move_name == idem_info.move then
								-- print(">>> Cycle")
							-- else
								-- print(">>> Other move")
							-- end
							-- print("\n")
						-- end
					-- end
				-- else
					-- local subdiv = {"startup", "active", "recover", "prejump", "jump"}
					-- for i = 1, #subdiv do
						-- if move[subdiv[i]] then
							-- for j = 1, #move[subdiv[i]] do
								-- local move_name = k
								-- local animation = move[subdiv[i]][j].animation
								-- local anim_nb = j
								-- local idem = false
								-- local idem_info = {animation = nil, move = nil, part = nil, nb = nil}
								-- if #animation_table > 0 then
									-- for h = 1, #animation_table do
										-- if animation == animation_table[h].anim then
											-- idem = true
											-- idem_info.animation = animation
											-- idem_info.move = animation_table[h].move
											-- idem_info.part = animation_table[h].part
											-- idem_info.nb = animation_table[h].nb
										-- end
									-- end
								-- end
								-- if not idem then
									-- local entry = {anim = animation, move = move_name, part = subdiv[i], nb = anim_nb}
									-- table.insert(animation_table,entry)
								-- else
									-- print("Animation = 0x"..string.format("%x",animation))
									-- print(move_name.." ("..subdiv[i].." "..j..") = "..idem_info.move.." ("..idem_info.part.." "..idem_info.nb..")")
									-- if move_name == idem_info.move then
										-- if subdiv[i] == idem_info.part then
											-- print(">>> Cycle")
										-- end
									-- else
										-- print(">>> Other move")
									-- end
									-- print("\n")
								-- end
							-- end
						-- end
					-- end
				-- end
			-- end
			-- ini = true
		-- end
	end
end
table.insert(ST_functions, InGameHitboxViewer)