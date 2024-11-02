local scrap_selector = -1

local scrap_button = {
	text = "Scrap",
	olcolour = "black",
	func =	function()
		scrap_selector = scrap_selector + 1
		if scrap_selector > 0 then
			scrap_selector = -1
		end
	end,
	autofunc = function(this)
		if scrap_selector == -1 then
			this.text = "Scrap : Off"
		elseif scrap_selector == 0 then
			this.text = "Scrap : On"
		end
	end,
}
insertAddonButton(scrap_button)
------------------------------------
-- Guessing the move performed
------------------------------------
local keys = {
	"up",
	"down",
	"forward",
	"back",
	"LP",
	"MP",
	"HP",
	"LK",
	"MK",
	"HK",
}

function playerInputsToString(_player_obj) -- Mainly used for debugging
	local inputs_held_down = ""
	local input_nb = 0
	
	for i = 1, #keys do
		if isPressed(_player_obj, keys[i]) then
			input_nb = input_nb + 1
			if input_nb > 1 then inputs_held_down = inputs_held_down.." " end
			inputs_held_down = inputs_held_down..keys[i]
		end
	end
	if input_nb == 0 then inputs_held_down = "neutral" end
	return inputs_held_down
end

function playerInputsToMoveName(_player_obj)
	local move_name = ""
	local forward = false
	local backward = false
	local jump = false
	local crouched = false
	local button_pressed = false
	local is_special = _player_obj.state == doing_special_move
	
	for i = 1, #keys do
		if isPressed(_player_obj, keys[i]) then
			if i == 1 then
				jump = true
			elseif i == 2 then
				crouched = true
			elseif i == 3 then
				forward = true
				if not jump then move_name = "f_" end
			elseif i == 4 then
				backward = true
				if not jump then move_name = "b_" end
			elseif i > 4 then
				move_name = move_name..keys[i]
				button_pressed = true
			end
		end
	end
	if button_pressed then
		local prefix = ""
		if not (forward or backward) then
			if not jump and not crouched then
				if rb(0xFF85D1) == 0x00 then
					prefix = "Cl "
				else
					prefix = "St "
				end
			elseif jump then
				if not is_special then
					prefix = "JN " -- jump neutral
				else
					prefix = "Up "
				end
			elseif crouched then
				prefix = "Cr "
			end
		else
			if jump then
				if not is_special then
					prefix = "J " -- jump forward / backward
				else
					prefix = "Up "
				end
			end
		end
		if is_special then prefix = "Special "..prefix end
		move_name = "[\""..prefix..move_name.."\"]"
	else
		if crouched then 
			move_name = "crouched" 
		else
			if forward then move_name = "forward"
			elseif backward then move_name = "backward"
			else move_name = "neutral" end
			if jump then move_name = "jump_"..move_name end
		end
	end
	return move_name
end
---------------------------------------------------------
-- Scrapping all the hitboxes and animations
---------------------------------------------------------
local hb_path = "./games/ssf2xjr1/addon/hb/"
local hb_file = ""
local initialization_done = false
local file_created = false

local animation_list = {-1}
local box_push_list = {}
local box_attack_list = {}
local box_v_top_list = {}
local box_v_mid_list = {}
local box_v_bot_list = {}
local box_proj_attack_list = {}
local box_proj_v_list = {}
local vulnerability_address_range = {0,0,0}

local curr_inputs_saved = ""
local prev_inputs_saved = ""
local current_move = ""
local active = false
local startup_done = false
local active_done = false
local recover_done = false
local is_jump = false
local is_special = false

local og_pos = {0,0}
local new_anim = false
local has_moved = false
local coord_written = false

local anim_need_close = false
local move_need_close = false

local DEBUG_FILE = false
local DEBUG = false
-------------------------
-- Write file functions
-------------------------
local function closeAnim()
	local output = "}},\n"
	if DEBUG_FILE then output = "}}, -- Close anim\n" end
	hb_file:write(output)
	anim_need_close = false
end

local function closeMove()
	local output = ""
	
	if attack_move then
		output = "\t\t},\n\t},"
		if DEBUG_FILE then output = output.." -- Close move (twice : recover + move)" end
	else
		output = "\t},"
		if DEBUG_FILE then output = output.." -- Close move" end
	end
	hb_file:write(output)
end
		
local function writeCoord(_player_obj)
	local output = ""
	if not coord_written then
		output = "},\n\t\t\tcoord = {{name = \"\", x = ".._player_obj.pos_x-og_pos[1]..", y = ".._player_obj.pos_y-og_pos[2].."}"
		coord_written = true
	else
		output = ",{name = \"\", x = ".._player_obj.pos_x-og_pos[1]..", y = ".._player_obj.pos_y-og_pos[2]..",}"
	end
	hb_file:write(output)
	if DEBUG then gui.text(100,180,output) end
end
-------------------------------------------------------------------
-- Getting the boxes ID + Absolute values on the fly 
-- and writing them on a file placed in "hb_path..character_name"
-------------------------------------------------------------------
local function listBoxes(_player_obj, box)
	
	local boxlist = {}
	local file_name = ""
	local pos_x = _player_obj.screen_relative_pos_x
	local pos_y = _player_obj.screen_relative_pos_y
	
	if box.type == "push" then
		boxlist = box_push_list
		file_name = "push"
	elseif box.type == "attack" then
		boxlist = box_attack_list
		file_name = "attack"
	elseif box.type == "vulnerability" then
		if box.address < vulnerability_address_range[2] then
			boxlist = box_v_top_list
			file_name = "top"
		elseif box.address < vulnerability_address_range[3] and box.address >= vulnerability_address_range[2] then
			boxlist = box_v_mid_list
			file_name = "mid"
		else
			boxlist = box_v_bot_list
			file_name = "bot"
		end
	elseif box.type == "proj. attack" or box.type == "proj. vulnerability" then
		if box.type == "proj. attack" then
			boxlist = box_proj_attack_list
			file_name = "proj_attack"
		else
			boxlist = box_proj_v_list
			file_name = "proj_v"
		end
		pos_x = rw(addresses.projectiles[_player_obj.id].base + 0x06) - gamestate.screen_x
		pos_y = emu.screenheight() - (rw(addresses.projectiles[_player_obj.id].base + 0x0A) - 15) + gamestate.screen_y
		print("Spawn : "..gamestate.P1.screen_relative_pos_x - pos_x.."/"..gamestate.P1.screen_relative_pos_y - pos_y)
	end
	file_name = _player_obj.character_name.."_"..file_name.."_boxes.lua"
	-- Check if the box is already known
	for i = 1, #boxlist do
		if box.id == boxlist[i].id then 
			return
		end
	end
	-- If this box is unknown then index it with its absolute values
	table.insert(boxlist, box)
	boxlist[#boxlist].hval = boxlist[#boxlist].hval - pos_x
	boxlist[#boxlist].vval = (boxlist[#boxlist].vval - pos_y) * (-1)
	-- Sort the box list by ID
	table.sort(boxlist,  function(a,b) return a.id < b.id end)
	-- Write the current box in the correct file
	local file = io.open(hb_path.._player_obj.character_name.."/"..file_name, "w+")
	for i = 1, #boxlist do
		file:write("\n[\""..boxlist[i].id.."\"] = ".."{type=\""..boxlist[i].type.."\", id="..boxlist[i].id..", address=0x"..string.format("%X",boxlist[i].address)..", hrad="..boxlist[i].hrad..", hval="..boxlist[i].hval..", vrad="..boxlist[i].vrad..", vval="..boxlist[i].vval.."},")
	end
	file:close()
end
-----------------------------------------
-----------------------------------------
-- Main Function
-----------------------------------------
-----------------------------------------
local function scrapHitboxes(_player_obj)
	if scrap_selector > -1 then
		------------------------
		-- Initialization
		------------------------
		frameskip_selector = 0
		if not initialization_done then
			if not file_created then
				local file_name = hb_path.._player_obj.character_name.."/scrap_".._player_obj.character_name.."_boxes.lua"
				hb_file = io.open(file_name, "w")
				-- Write the head of the file : We'll copy manually the hitboxes ID + Absolute values in those fields
				hb_file:write("-- Copy in the correct fields what's written in ".. _player_obj.character_name.."_[...]_boxes.lua\n")
				hb_file:write("character_specific.".._player_obj.character_name..".boxes = {\n\tpush = {\n\n\t},\n\tvulnerability = {\n\t\ttop = {\n\n\t\t},\n\t\tmiddle = {\n\n\t\t},\n\t\t bottom = {\n\n\t\t},\n\t},\n\tattack = {\n\n\t},")
				if character_specific[_player_obj.character_name].infos.has_projectile then
					hb_file:write("\n\tprojectile = {\n\t\tattack = {\n\n\t\t},\n\t\tvulnerability = {\n\n\t\t},\n\t},")
				end
				hb_file:write("\n}\ncharacter_specific.".._player_obj.character_name..".move_details = {")
				file_created = true
			end
			-- Help to know if a vulnerabilty box is top, mid or bottom
			if _player_obj.character ~= Dictator then
				for i = 1, #_player_obj.boxes do
					if _player_obj.character ~= Dictator then
						if _player_obj.boxes[i].type == "vulnerability" and _player_obj.boxes[i].id == 1 then
							if vulnerability_address_range[1] == 0 then
								vulnerability_address_range[1] = _player_obj.boxes[i].address
							elseif vulnerability_address_range[2] == 0 then
								vulnerability_address_range[2] = _player_obj.boxes[i].address
							elseif vulnerability_address_range[3] == 0 then
								vulnerability_address_range[3] = _player_obj.boxes[i].address
								initialization_done = true
								print(">> Now scrapping ".._player_obj.character_name.."'s boxes")
							end
						end
					end
				end
				return
			else
				vulnerability_address_range[1] = 1686000 -- Unknown
				vulnerability_address_range[2] = 1686536
				vulnerability_address_range[3] = 1686660
				print(">> Now scrapping ".._player_obj.character_name.."'s boxes")
				initialization_done = true
				return
			end
		end
		---------------------------------------------
		-- List projectile hitboxes
		---------------------------------------------
		for i = 1, #_player_obj.boxes do
			if _player_obj.boxes[i].type == "proj. attack" then -- or _player_obj.boxes[i].type == "proj. vulnerability" then
				listBoxes(_player_obj, _player_obj.boxes[i])
				print(_player_obj.boxes[i].id)
			end
		end
		---------------------------------------------
		-- Checking for animation_frames_left error
		---------------------------------------------
		-- Tells if the announced recover duration was false. We'll have to edit it manually
		if _player_obj.animation_id ~= animation_list[#animation_list] then -- the anim switched...
			if _player_obj.prev.animation_frames_left ~= 1 then -- ...but was supposed to play longer
				if _player_obj.prev.is_attacking and not _player_obj.is_attacking then 
					hb_file:write("\n----------- Recover error -----------\n")
				end
			end
		end
		if _player_obj.state ~= jumping then
			is_jump = false
		end
		if _player_obj.state ~= doing_special_move then
			is_special = false
		end
		--------------------------------------------------------------------------------
		-- Check if we found a new anim or if the current anim can move on a x/y axis
		--------------------------------------------------------------------------------
		new_anim = true
		if not is_jump then
			has_moved = false
		end

		for i = 1, #animation_list do
			if _player_obj.animation_id == animation_list[i] then
				if i == #animation_list then
					new_anim = false
					if is_jump then
						has_moved = true
					elseif _player_obj.pos_x ~= og_pos[1] or _player_obj.pos_y ~= og_pos[2] then
						if (attack_move and string.find(current_move,"J") == nil) then
							has_moved = true
						end
					else
						return
					end
				else
					return
				end
			end
		end
		if _player_obj.pos_x ~= og_pos[1] or _player_obj.pos_y ~= og_pos[2] then
			if (attack_move and string.find(current_move,"J") == nil) then
				has_moved = true
			end
		end
		-----------------
		-- Main
		-----------------
		if not is_jump and not is_special then
		-- To scrap a new move, its inputs should be held. If we detect a change between prev and curr input then we know that we're recording something new. It seems that using _player_obj.curr/prev_input doesn't work
			prev_inputs_saved = curr_inputs_saved
			curr_inputs_saved = playerInputsToString(_player_obj)
			if prev_inputs_saved ~= curr_inputs_saved then
				-- Close the previous table
				if move_need_close then -- Should always be true if at least one move has been registered
					if anim_need_close then
						closeAnim()
					end
					closeMove()
				end
				move_need_close = true
				-- Open a new table
				current_move = playerInputsToMoveName(_player_obj)
				if current_move == "jump_neutral" or current_move == "jump_backward" or current_move == "jump_forward" then
					is_jump = true
				end
				if _player_obj.state == doing_special_move then
					is_special = true
				end
				hb_file:write("\n-----------"..playerInputsToString(_player_obj).."-----------\n") -- Debugging
				hb_file:write("\t"..current_move.." = {\n")
				-- Make the difference between moves and deplacement
				if isPressed(_player_obj, "button") then
					attack_move = true
					startup_done = false
					active_done = false
					recover_done = false
					if string.find(current_move,"J") == nil then -- If it's a ground move check if it's moving
						-- Save the original position
						og_pos = {_player_obj.prev.pos_x, _player_obj.prev.pos_y}
						-- Tell if it moved first frame
						if _player_obj.pos_x ~= og_pos[1] or _player_obj.pos_y ~= og_pos[2] then
							has_moved = true
						end
					end
				else
					attack_move = false
					if is_jump then -- Scrap the coords of the different jumps
						og_pos = {_player_obj.prev.pos_x, _player_obj.prev.pos_y}
						has_moved = true
					end
				end
			end
		end

		if new_anim then
			-- Close the previous anim if a new one is found
			if #animation_list > 1 then
				if anim_need_close then
					closeAnim()
				end
			end
			anim_need_close = true
			-- Stock the new animation
			table.insert(animation_list, _player_obj.animation_id)
			-- Get ready to stock coords if needed
			coord_written = false
			
			-- Divides the table in sub-tables startup / active / recover if needed
			if attack_move then
				active = false
				for i = 1, #_player_obj.boxes do
					if _player_obj.boxes[i].type == "attack" or _player_obj.boxes[i].type == "proj. attack" then
						active = true
					end
				end
				if not startup_done then
					if not active then
						hb_file:write("\t\tstartup = {\n")
						startup_done = true
					else
						hb_file:write("\t\tactive = {\n")
						startup_done = true
						active_done = true
					end
				elseif not active_done then
					if active then
						hb_file:write("\t\t},\n\t\tactive = {\n")
						active_done = true
					end
				elseif not recover_done then
					if not active then
						hb_file:write("\t\t},\n\t\trecover = {\n")
						recover_done = true
					end
				end
			end

			-- if we detect a new animation, we store the basic informations : animation + duration and we're getting ready to store its hitboxes
			hb_file:write("\t\t\t{ animation = 0x"..string.format("%X",_player_obj.animation_id)..", duration = ".._player_obj.animation_frames_left..", hitboxes = {", "\n")
			-- We classify each box using its type and its id
			for i = 1, #_player_obj.boxes do
				local result = "\t\t\tcharacter_specific.".._player_obj.character_name..".boxes" -- all the hitboxes are indexed under "character_specific.character_name.boxes"
				if _player_obj.boxes[i].type == "push" then 
					result = result..".push[\"".._player_obj.boxes[i].id.."\"]"
				elseif  _player_obj.boxes[i].type == "attack" then 
					result = result..".attack[\"".._player_obj.boxes[i].id.."\"]"
				elseif  _player_obj.boxes[i].type == "vulnerability" then
					if _player_obj.boxes[i].address < vulnerability_address_range[2] then
						result = result..".vulnerability.top[\"".._player_obj.boxes[i].id.."\"]"
					elseif _player_obj.boxes[i].address < vulnerability_address_range[3] and _player_obj.boxes[i].address >= vulnerability_address_range[2] then
						result = result..".vulnerability.middle[\"".._player_obj.boxes[i].id.."\"]"
					elseif _player_obj.boxes[i].address >= vulnerability_address_range[3] then
						result = result..".vulnerability.bottom[\"".._player_obj.boxes[i].id.."\"]"
					end
				elseif  _player_obj.boxes[i].type == "proj. attack" then
					result = result..".projectile.attack[\"".._player_obj.boxes[i].id.."\"]"
				elseif  _player_obj.boxes[i].type == "proj. vulnerability" then
					result = result..".projectile.vulnerability[\"".._player_obj.boxes[i].id.."\"]"
				end
				hb_file:write(result)
				
				if i ~= #_player_obj.boxes then 
					hb_file:write(",\n") -- new box
				else
					if has_moved then
						writeCoord(_player_obj)
					end
				end
				listBoxes(_player_obj, _player_obj.boxes[i]) -- we define the boxes. We'll copy those definitions on the head of the file.
			end
		else
			if has_moved then
				writeCoord(_player_obj)
			end
		end
	------------
	-- Reset
	------------
	elseif initialization_done then
		if move_need_close then
			if anim_need_close then
				closeAnim()
			end
			closeMove()
			hb_file:write("\n}")
		end
		hb_file:close()
		
		initialization_done = false
		file_created = false
		animation_list = {-1}
		box_push_list = {}
		box_attack_list = {}
		box_v_top_list = {}
		box_v_mid_list = {}
		box_v_bot_list = {}
		vulnerability_address_range = {0,0,0}
		curr_inputs_saved = ""
		prev_inputs_saved = ""
		active = false
		startup_done = false
		active_done = false
		recover_done = false
		og_pos = {0,0}
		new_anim = false
		has_moved = false
		coord_written = false
		anim_need_close = false
		move_need_close = false
		------------------------------
		-- Debugging
		------------------------------
		if DEBUG then
			gui.text(100,140,"has moved : "..str(has_moved))
			gui.text(100,150,"is_jump : "..str(is_jump))
			gui.text(100,160,"Last anim saved: "..string.format("%x",animation_list[#animation_list]))
			gui.text(100,170,"Current anim: "..string.format("%x",gamestate.P1.animation_id))
		end
	end
end
-----------------------------------
-- Make the scrap automatic
-- Made quickly, really really messy
-----------------------------------
local current_button = 1
local current_direction = 5
local begin_scrap = false

local walk_jump_done = false
local ground_attack_done = false
local jump_attack_done = false
local command_attack_done = false
local all_specials_done = false

local need_to_be_cornered = false

local function launchAutomaticScrap()
	begin_scrap = not begin_scrap
	if not begin_scrap then
		walk_jump_done = false
		ground_attack_done = false
		jump_attack_done = false
		command_attack_done = false
	end
end
input.registerhotkey(8, launchAutomaticScrap)

local function waitCorrectDistance()
	if not walk_jump_done then
		if not gamestate.P2.is_cornered then
			modifyInputSet(gamestate.P2, 6)
			return true -- we want to continue anyway
		else
			return true
		end
	else
		if getDistanceBetweenPlayers() < 160 then
			need_to_be_cornered = true
		end
	end
	if need_to_be_cornered then
		modifyInputSet(gamestate.P1, 4)
		if gamestate.P1.is_cornered then
			modifyInputSet(gamestate.P1, 5)
			need_to_be_cornered = false
			return true
		else
			return false
		end
	else
		return true
	end
end

local counter_walk_jump = 0
local direction_held_walk_jump = {5, 6, 4, 2, 5, 8, 9, 7, 5}
local step_walk_jump = 1

local function doWalkAndJump()
	if step_walk_jump < #direction_held_walk_jump then
		local current_direction = direction_held_walk_jump[step_walk_jump]
		local framelimit_walk_jump = 40
		
		if current_direction == 7 or current_direction == 8 or current_direction == 9 then
			framelimit_walk_jump = 10
		end
		
		counter_walk_jump = countFrames(counter_walk_jump)
		
		if counter_walk_jump <= framelimit_walk_jump then
			modifyInputSet(gamestate.P1, current_direction)
		elseif (current_direction ~= 7 and current_direction ~= 8 and current_direction ~= 9) or gamestate.P1.prev.state ~= jumping then
			if step_walk_jump < #direction_held_walk_jump then
				step_walk_jump = step_walk_jump + 1
				counter_walk_jump = 0
			end
		end
	else
		if gamestate.P1.air_state == 0 then
			walk_jump_done = true
		end
	end
end

local direction_held_ground_attack = {5, 2}
local step_ground_attack = 1
local counter_ground_attack = 0
local framelimit_ground_attack = 100
local close_attack = false

local function doGroundMoves()
	if walk_jump_done and not ground_attack_done then
		if close_attack then
			print("ok")
			wb(0xFF85D1, 0x00)
		end
		local current_direction = direction_held_ground_attack[step_ground_attack]
		if counter_ground_attack <= 10 then -- we maintain the input at least 10 frames
			modifyInputSet(gamestate.P1, current_direction, current_button)
			counter_ground_attack = countFrames(counter_ground_attack)
		elseif counter_ground_attack <= 20 then -- we maintain the input at least 10 frames after the move is over, just to be sure
			modifyInputSet(gamestate.P1, current_direction, current_button)
			if not (gamestate.P1.state == doing_normal_move or gamestate.P1.state == doing_special_move) then
				counter_ground_attack = countFrames(counter_ground_attack)
			end
		else
			current_button = current_button + 1
			counter_ground_attack = 0
			if current_button > 6 then
				current_button = 1
				if step_ground_attack < #direction_held_ground_attack then
					step_ground_attack = step_ground_attack + 1
				else
					if not close_attack then
						step_ground_attack = 1
						close_attack = true
					else
						ground_attack_done = true
						close_attack = false
					end
				end
			end
		end
	end
end

local direction_held_jump_attack = {8, 7}
local step_jump_attack = 1
local counter_jump_attack = 0
local framelimit_jump_attack = 100
local do_jump_attack = false

local function doJumpMoves()
	if ground_attack_done and not jump_attack_done then
		local character = gamestate.P1.character
		if character == Chun or character == Deejay or character == Zangief or character == Hawk or character == Honda or character == Dhalsim then
			direction_held_jump_attack = {8, 7, 2}
		end
		if not do_jump_attack then
			if gamestate.P1.air_state == 0 then
				counter_jump_attack = countFrames(counter_jump_attack)
				if counter_jump_attack >= 30 then
					if step_jump_attack < 3 then
						modifyInputSet(gamestate.P1, direction_held_jump_attack[step_jump_attack])
					else
						modifyInputSet(gamestate.P1, 7)
					end
					counter_jump_attack = 0
				end
			end
			if gamestate.P1.prev.air_state == 0 and gamestate.P1.air_state > 0 then
				do_jump_attack = true
			end
		else
			counter_jump_attack = countFrames(counter_jump_attack)
			if counter_jump_attack <= framelimit_jump_attack then
				if step_jump_attack < 3 then
					modifyInputSet(gamestate.P1, direction_held_jump_attack[step_jump_attack], current_button)
				else
					if counter_jump_attack > 15 then
						modifyInputSet(gamestate.P1, direction_held_jump_attack[step_jump_attack], current_button)
					end
				end
			else
				current_button = current_button + 1
				counter_jump_attack = 0
				do_jump_attack = false
				if current_button > 6 then
					current_button = 1
					if step_jump_attack < #direction_held_jump_attack then
						step_jump_attack = step_jump_attack + 1
					else
						jump_attack_done = true
					end
				end
			end
		end
	end
end

local direction_held_command_attack = {6, 4, 3, 1}
local step_command_attack = 1
local counter_command_attack = 0
local framelimit_command_attack = 100

local function doCommandMoves()
	if jump_attack_done and not command_attack_done then
		local current_direction = direction_held_command_attack[step_command_attack]
		if counter_command_attack <= 10 then
			modifyInputSet(gamestate.P1, current_direction, current_button)
			counter_command_attack = countFrames(counter_command_attack)
		elseif counter_command_attack <= 40 then
			modifyInputSet(gamestate.P1, current_direction, current_button)
			if not (gamestate.P1.state == doing_normal_move or gamestate.P1.state == doing_special_move) then
				counter_command_attack = countFrames(counter_command_attack)
			end
		else
			current_button = current_button + 1
			counter_command_attack = 0
			if current_button > 6 then
				current_button = 1
				if step_command_attack < #direction_held_command_attack then
					step_command_attack = step_command_attack + 1
				else
					command_attack_done = true
				end
			end
		end
	end
end

local current_special = {}
local current_variation = {}
local special_counter = 1
local variation_counter = 1
local move_done = false
local timer = 0
local do_special_now = false

local function doAllSpecials()
	if command_attack_done and not all_specials_done then
		local character = gamestate.P1.character_name
		local current_special = character_specific[character].specials[special_counter]
		if gamestate.P1.state ~= doing_normal_move and gamestate.P1.state ~= doing_special_move and gamestate.P1.projectile_ready and do_special_now then
			timer = countFrames(timer)
			if timer > 20 then
				do_special_move(gamestate.P1, current_special, variation_counter, true)
				move_done = true
				do_special_now = false
				timer = 0
			end
		else
			if move_done then
				move_done = false
				if variation_counter < #current_special.input_variations then
					variation_counter = variation_counter + 1
				else
					variation_counter = 1
					if special_counter < #character_specific[character].specials then
						special_counter = special_counter + 1
					else
						special_counter = 1
						variation_counter = 1
						all_specials_done = true
					end
				end
			end
		end
	end
end

local function launchSpecialMove()
	do_special_now = true
end
input.registerhotkey(9, launchSpecialMove)

local function automaticScrap()
	if begin_scrap then
		gui.text(100,100, "Wait while the hitboxes are scraped...")
		gui.text(130,110, "New anim : "..current_move)
		if not waitCorrectDistance() then return end
			doWalkAndJump()
			doGroundMoves()
			doJumpMoves()
			doCommandMoves()
			doAllSpecials()
	end
end
---------------------------------------------
-- Write Framedata for all moves registered
-- to find errors
-- messy
---------------------------------------------
local DEBUG_DONE = false
local function debugFile(_player_obj)
	if not DEBUG_DONE then
		local hitbox_file = "games/ssf2xjr1/addon/resources/".._player_obj.character_name.."_hitboxes.lua"
		if fexists(hitbox_file) then
			dofile(hitbox_file)
			local a = {}
			for n in pairs (character_specific[_player_obj.character_name].move_details) do table.insert(a,n) end
			table.sort(a)
			local output = "games/ssf2xjr1/addon/hb/".._player_obj.character_name.."/".._player_obj.character_name.."_debug.lua"
			o = io.open(output, "w")
			for v, k in ipairs(a) do
				o:write(k,"\n\n")
				if character_specific[_player_obj.character_name].move_details[k].startup or character_specific[_player_obj.character_name].move_details[k].active then
					if character_specific[_player_obj.character_name].move_details[k].startup then
						o:write("Startup = [")
						for i = 1, #character_specific[_player_obj.character_name].move_details[k].startup do
							o:write(character_specific[_player_obj.character_name].move_details[k].startup[i].duration)
							if i ~= #character_specific[_player_obj.character_name].move_details[k].startup then
								o:write(" / ")
							end
						end
						o:write("]\n")
					end
					if character_specific[_player_obj.character_name].move_details[k].active then
						o:write("Active = [")
						for i = 1, #character_specific[_player_obj.character_name].move_details[k].active do
							o:write(character_specific[_player_obj.character_name].move_details[k].active[i].duration)
							if i ~= #character_specific[_player_obj.character_name].move_details[k].active then
								o:write(" / ")
							end
						end
						o:write("]\n")
					end
					if character_specific[_player_obj.character_name].move_details[k].recover then
						o:write("Recover = [")
						for i = 1, #character_specific[_player_obj.character_name].move_details[k].recover do
							o:write(character_specific[_player_obj.character_name].move_details[k].recover[i].duration)
							if i ~= #character_specific[_player_obj.character_name].move_details[k].recover then
								o:write(" / ")
							end
						end
						o:write("]")
					end
				else
					for i = 1, #character_specific[_player_obj.character_name].move_details[k] do
						o:write(character_specific[_player_obj.character_name].move_details[k][i].duration)
						if i ~= #character_specific[_player_obj.character_name].move_details[k] then
							o:write(" / ")
						end
					end
				end
				o:write("\n\n\n")
			end
			DEBUG_DONE = true
			o:close()
		else
			--print("Error : can't find the file to debug !")
			return
		end
	end
end
	
local function scrap()
	automaticScrap(gamestate.P1)
	scrapHitboxes(gamestate.P1)
	debugFile(gamestate.P1)
end
table.insert(ST_functions, scrap)