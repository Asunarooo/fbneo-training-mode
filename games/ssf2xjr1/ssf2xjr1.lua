-------------------------------------------
-- ssf2x training mode by @pof & @asunaro
-------------------------------------------
-- Making sure the main script is being run
assert(rb,"Run fbneo-training-mode.lua")

-- paths
ssf2xjr1 = "games/ssf2xjr1/"
savestate_path = ssf2xjr1.."savestates/"
func_path = ssf2xjr1.."functions/"

-- Loading Constants
require("games/ssf2xjr1/data/universal/constants")
for i = 1, #characters do
	require("games/ssf2xjr1/data/character_specific/"..characters[i].."/"..characters[i].."_infos")
end
require("games/ssf2xjr1/character_specific") -- to be removed

-- Loading basic config
require("games/ssf2xjr1/config/gamedefaultconfig")
require("games/ssf2xjr1/config/menuconfig") -- le mettre ailleurs peut-être ?
require("games/ssf2xjr1/config/msgconfig") -- le mettre ailleurs peut-être ?

-- Loading gamestate.lua, where most of in-game values are updated
require("games/ssf2xjr1/data/universal/gamestate")

-- Loading Functions
local functions = {
	["/"] = {"loadConfig", "basics", "drawMessages", "moveDetection", "easySpecials", "playerControl", "ST_HUD", "reversal"},
	["/Controls"] = {"STKeys"},
	["/Messages"] = {"drawMessages"},
	["/Menu"] = {"menuUpdate"},
	["/Basic Settings"] = {"handleSavestates", "returnToCharacterSelect"},
	["/Advanced Hitbox Viewer Settings"] = {"displayHitbox"},
	["/Environment Settings"] = {"roundStart", "gameSpeed"},
}

for k in pairs(functions) do
	for f = 1, #functions[k] do
		require("games/ssf2xjr1/functions"..k.."/"..functions[k][f])
	end
end
----------------------------
----------------------------
-- Initialization
----------------------------
----------------------------
local first_load = true
-- Initialize RNG
math.randomseed(os.time())
math.random(); math.random(); math.random()
--
gamestate.read_game_vars()
gamestate.prev = gamestate.stock_game_vars()

gamestate.reset_player_objects()

player = {
	gamestate.P1,
	gamestate.P2
}

for i = 1, 2 do
	gamestate.read_player_vars(player[i])
	player[i].prev = gamestate.stock_player_vars(player[i])
	gamestate.initialize_advanced_player_vars(player[i])
end
-----------------------------
-----------------------------
-- General Functions
-----------------------------
-----------------------------
-----------------------
-- Character related
-----------------------
function printName(_player_obj)
	return character_specific[_player_obj.character_name].infos.name
end

function isChargeCharacter(_player_obj)
	if character_specific[_player_obj.character_name].infos.charge_character then
		return true
	else
		return false
	end
end

function isCharacterLeft(_player_obj)
	if _player_obj.id == 1 then
		return gamestate.P2.pos_x-gamestate.P1.pos_x > 0
	elseif _player_obj.id == 2 then
		return not (gamestate.P2.pos_x-gamestate.P1.pos_x > 0)
	end
end

function playerOneFacingLeft()
	return gamestate.P1.pos_x >= gamestate.P2.pos_x
end

function playerTwoFacingLeft()
	return gamestate.P1.pos_x < gamestate.P2.pos_x
end

function getDistanceBetweenPlayers()
	if playerOneFacingLeft() then
		distance = gamestate.P1.pos_x - gamestate.P2.pos_x
	else
		distance = gamestate.P2.pos_x - gamestate.P1.pos_x
	end
	return distance
end

function displayZone(min, max, color, func) -- display a specific distance from P2
	local flip = 1
	if not playerTwoFacingLeft() then flip = -1 end
	local x1 = min*flip + gamestate.P1.screen_relative_pos_x
	local x2 = max*flip + gamestate.P1.screen_relative_pos_x
	gui.box(x1, 200,x2, 207, color)
	if func then
		func()
	end
end

function playerCrouching(_player_obj)
	if _player_obj.state == crouching then
		return true
	end
	if _player_obj.state == jumping or _player_obj.state == landing then
		return false
	end
	if (_player_obj.state == doing_normal_move or _player_obj.state == doing_special_move) then
		local ypos = _player_obj.pos_y
		if (ypos <= 40) then
			return bit.band(_player_obj.curr_input, 0x4) == 0x4
		end
	end
	return false
end
---------------------
-- Game related
---------------------
local function setFrameskip(status)
	if status then
		local turbo = gamestate.turbo
		if turbo == 0 then frameskip_value = 0x80
		elseif turbo == 1 then frameskip_value = 0x70
		elseif turbo == 2 then frameskip_value = 0x60
		elseif turbo == 3 then frameskip_value = 0x50
		end
		wb(addresses.global.frameskip, frameskip_value) -- frameskip enabled
	else
		wb(addresses.global.frameskip, 0xff) -- frameskip disabled
	end
end

was_frameskip = false

local function checkFrameskip()
	local x = gamestate.prev.frame_number - gamestate.frame_number
	if x % 2 == 0 then
		was_frameskip = true
	else
		was_frameskip = false
	end
end

function countFrames(event_frame_count)
	local frame_count = event_frame_count
	if gamestate.prev.frame_number == gamestate.frame_number then
		return frame_count
	end
	if was_frameskip then
		return frame_count + 2
	end
	return frame_count + 1
end

function isPressed(_player_obj, _input)
	local bitmask = 0
	if _input == "left" then
		bitmask = 0x0001
	elseif _input == "right" then
		bitmask = 0x0002
	elseif _input == "forward" then
		if _player_obj.flip_input then
			bitmask = 0x0001
		else
			bitmask = 0x0002
		end
	elseif _input == "back" then
		if _player_obj.flip_input then
			bitmask = 0x0002
		else
			bitmask = 0x0001
		end
	elseif _input == "down" then
		bitmask = 0x0004
	elseif _input == "up" then
		bitmask = 0x0008
	elseif _input == "direction" then
		bitmask = 0x000F
	elseif _input == "LP" then
		bitmask = 0x0010
	elseif _input == "MP" then
		bitmask = 0x0020
	elseif _input == "HP" then
		bitmask = 0x0040
	elseif _input == "punch" then
		bitmask = 0x00F0
	elseif _input == "LK" then
		bitmask = 0x0100
	elseif _input == "MK" then
		bitmask = 0x0200
	elseif _input == "HK" then
		bitmask = 0x0400
	elseif _input == "kick" then
		bitmask = 0x0F00
	elseif _input == "button" then
		bitmask = 0x0FF0
	end
	if _player_obj.prev.curr_input == _player_obj.prev_input then
		return bit.band(_player_obj.curr_input, bitmask) > 0
	else
		return bit.band(_player_obj.prev_input, bitmask) > 0
	end
end

function wasPressed(_player_obj, _input)
	local bitmask = 0
	if _input == "left" then
		bitmask = 0x0001
	elseif _input == "right" then
		bitmask = 0x0002
	elseif _input == "forward" then
		if _player_obj.flip_input then
			bitmask = 0x0001
		else
			bitmask = 0x0002
		end
	elseif _input == "back" then
		if _player_obj.flip_input then
			bitmask = 0x0002
		else
			bitmask = 0x0001
		end
	elseif _input == "down" then
		bitmask = 0x0004
	elseif _input == "up" then
		bitmask = 0x0008
	elseif _input == "direction" then
		bitmask = 0x000F
	elseif _input == "LP" then
		bitmask = 0x0010
	elseif _input == "MP" then
		bitmask = 0x0020
	elseif _input == "HP" then
		bitmask = 0x0040
	elseif _input == "punch" then
		bitmask = 0x00F0
	elseif _input == "LK" then
		bitmask = 0x0100
	elseif _input == "MK" then
		bitmask = 0x0200
	elseif _input == "HK" then
		bitmask = 0x0400
	elseif _input == "kick" then
		bitmask = 0x0F00
	elseif _input == "button" then
		bitmask = 0x0FF0
	end
	if _player_obj.prev.curr_input == _player_obj.prev_input then
		return bit.band(_player_obj.prev.curr_input, bitmask) > 0
	else
		return bit.band(_player_obj.prev.prev_input, bitmask) > 0
	end
end

function isPressedKKK(_player_obj)
	return isPressed(_player_obj, "LK") and isPressed(_player_obj, "MK") and isPressed(_player_obj, "HK")
end

function wasPressedKKK(_player_obj)
	return wasPressed(_player_obj, "LK") and wasPressed(_player_obj, "MK") and wasPressed(_player_obj, "HK")
end

function isPressedPPP(_player_obj)
	return isPressed(_player_obj, "LP") and isPressed(_player_obj, "MP") and isPressed(_player_obj, "HP")
end

function wasPressedPPP(_player_obj)
	return wasPressed(_player_obj, "LP") and wasPressed(_player_obj, "MP") and wasPressed(_player_obj, "HP")
end
----------------------
-- Check for changes
----------------------
function characterChanged(_player_obj)
	if _player_obj.prev.character ~= _player_obj.character then
		return true
	else
		return false
	end
end

function oldStatusChanged(_player_obj)
	if _player_obj.prev.is_old ~= _player_obj.is_old then
		return true
	else
		return false
	end

end
-------------
-- Hotkeys
-------------
local hotkeys_functions = {}

function newHotkey(_key,_func,_desc)
	local key_name = {"LP", "MP", "HP", "LK", "MK", "HK"}
	local translation = {"button1", "button2", "button3", "button4", "button5", "button6"}
	for i = 1, #key_name do if _key == key_name[i] then _key = translation[i] end end
	local new_func = function() if guiinputs.P1[_key] and not guiinputs.P1.previousinputs[_key] then _func() end end
	table.insert(hotkeys_functions, {func = new_func, desc = _desc})
end

local function startHotkeys()
	if gamestate.is_in_match then
		if guiinputs.P1.start then
			-- Disable P1 input detection
			setFrameskip(false)
			ww(addresses.players[1].input, 0x0000)
			local x = 20
			local y = 40
			for i = 1, #hotkeys_functions do
				hotkeys_functions[i].func()
				if string.find(hotkeys_functions[i].desc, "%uK") then x = 210 else x = 20 end
				if string.find(hotkeys_functions[i].desc, "L%u") then y = 40 end
				if string.find(hotkeys_functions[i].desc, "M%u") then y = 50 end
				if string.find(hotkeys_functions[i].desc, "H%u") then y = 60 end
				gui.text(x,y, hotkeys_functions[i].desc)
			end
		end
	end
end
-- Misc
function str(bool)
	if bool then
		return "true"
	else
		return "false"
	end
end
---------------------------------
---------------------------------
-- AutoBlock (made by pof)
---------------------------------
---------------------------------
local forceblock = false
local inputs_at_jumpstart = 0
local autoblock_skip_counter = 60
local canblock = false
local canblock_counter = 0
local canblock_length = 20

local autoBlock = function()
	if REPLAY then return end

	local selector = ST_buttons["Training"]["Dummy Settings"]["Block"].selector

	if selector == 0 or gamestate.P1.throw_flag == 0x01 then -- If P2 is thrown we return, this way the dummy can tech a throw
		return
	end

	local DEBUG=false

	-- neutral when opponent is neutral, crouching or landing
	if (gamestate.P1.state == standing or gamestate.P1.state == crouching or gamestate.P1.state == landing) then
		setDirection(2,5)
		forceblock = false
		if selector == 3 and canblock == true then
			canblock_counter = countFrames(canblock_counter)
			if canblock_counter >= canblock_length then
				canblock = false
				canblock_counter = 0
			end
		end
		return
	end

	local distance = getDistanceBetweenPlayers()

	-- if opponent is ground attacking, ground block
	if (gamestate.P1.state == doing_normal_move or gamestate.P1.state == doing_special_move) and distance < 265 then

		-- block: auto
		if selector == 3 and canblock == false then
			if gamestate.P2.state == being_hit then
				setDirection(2,5)
				canblock = true
			end
			return
		end

		-- block: random
		if selector == 4 then
			autoblock_skip_counter = autoblock_skip_counter -1
			if autoblock_skip_counter == 0 then
				autoblock_skip_counter = 60
			end
			if autoblock_skip_counter > 40 then
				return
			end
		end

		local p1crouching = playerCrouching(gamestate.P1)
		if playerOneFacingLeft() and p1crouching then
			setDirection(2,1)
		end
		if playerTwoFacingLeft() and p1crouching then
			setDirection(2,3)
		end
		if playerOneFacingLeft() and not p1crouching then
			setDirection(2,4)
		end
		if playerTwoFacingLeft() and not p1crouching then
			setDirection(2,6)
		end
		if DEBUG then print("ground block @ p1action=" .. gamestate.P1.state .. " | inputs=" .. gamestate.P1.curr_input .. " | distance=" .. distance) end
		return
	end

	-- block jump attacks
	local p1attacking = false
	if selector ~= 2 and selector ~= 3 and gamestate.P1.state == jumping and distance < 265 then

		if selector == 4 then
			autoblock_skip_counter = autoblock_skip_counter -1
			if autoblock_skip_counter == 0 then
				autoblock_skip_counter = 60
			end
			if autoblock_skip_counter > 30 then
				return
			end
		end

		local p1buttons = bit.band(gamestate.P1.curr_input, 0x000F)
		if gamestate.P1.prev.state ~= jumping then
			inputs_at_jumpstart = gamestate.P1.curr_input-p1buttons
			p1attacking = false
		end
		if gamestate.P1.curr_input-p1buttons ~= inputs_at_jumpstart and gamestate.P1.curr_input-p1buttons > 10 then
			-- buttons pressed changed during jump, Player one is attacking
			p1attacking = true
			forceblock = true
		end
		if (gamestate.P2.state ~= landing and gamestate.P2.state ~= blocking_attempt and gamestate.P2.state ~= being_hit) then
			forceblock = false
		end

		if (p1attacking or forceblock) then
			if playerOneFacingLeft() then
				setDirection(2,4)
			else
				setDirection(2,6)
			end
			if DEBUG then print("block high @ p1action=" .. gamestate.P1.state .. " | p2action=" .. gamestate.P2.state .. " | inputs=" .. gamestate.P1.curr_input .. "/" .. p1buttons .. " | distance=" .. distance .. " | p1attacking=" .. tostring(p1attacking) .. " | forceblock=" .. tostring(forceblock)) end
			return
		end
		setDirection(2,5)
		if DEBUG then print("neutral @ p1action=" .. gamestate.P1.state .. " | p2action=" .. gamestate.P2.state .. " | inputs=" .. gamestate.P1.curr_input .. "/" .. p1buttons .. " | distance=" .. distance .. " | p1attacking=" .. tostring(p1attacking) .. " | forceblock=" .. tostring(forceblock)) end
		forceblock = false
		return
	end

	-- stop blocking
	if (distance >= 265 or gamestate.P1.state == crouching) then
		setDirection(2,5)
		if DEBUG then print("neutral-4 @ p1action=" .. gamestate.P1.state .. " | inputs=" .. gamestate.P1.curr_input .. " | distance=" .. distance) end
		forceblock = false
		return
	end
	if DEBUG then print("FINAL @ p1action=" .. gamestate.P1.state .. " | inputs=" .. gamestate.P1.curr_input .. " | distance=" .. distance) end

end

--------------------------
-- Choosing a stage
--------------------------
local stageSelect = function()
	if REPLAY then return end
	local selector = ST_buttons["Training"]["Basic Settings"]["Select Stage"].selector
	if selector == 0 then
		return
	end
	local stage_id = character_specific[characters[selector]].infos.id
	if gamestate.curr_state == 0x04 then
		wb(addresses.global.stage_select, stage_id)
	end
	wb(0xFF8C51,0)
	ww(0xFFE18A,stage_id)
end
---------------------------
-- Dizzy settings
---------------------------
local p2DizzyControl = function()
	if REPLAY then return end
	local dizzy = 0
	local selector = ST_buttons["Training"]["Parameter Settings"]["Stun Control"].selector
	if selector == 0 then
		return
	end
	if selector == 2 then
		dizzy = 0x40
	end
	ww(0xFF88AA, dizzy) -- timeout
	ww(0xFF88AC, dizzy) -- damage
end
-------------------------------------
-- Round Start Training made by pof
-------------------------------------
local statecount=0
local round_state=-1
local fight_anim = 123
local roundstart_played=false
local roundStart = function()
	if REPLAY then return end

	local DEBUG=false
	local selector = ST_buttons["Training"]["Advanced Settings"]["Round Start"].selector
	
	if selector == 0 then
		return
	end

	local framesrecorded = #recording[recording.recordingslot]
	prev_round_state = round_state
	round_state = rw(0xFF8008) -- 4 -> 6 -> 8 -> 10
	if (framesrecorded < 1) then
		if (round_state >= 4 and round_state < 10) then
			gui.text(220,50,"Use the Replay Editor in the")
			gui.text(220,60,"Recording menu (hold coin) to")
			gui.text(220,70,"program the desired round start action.")
		end
		return
	end
	if (round_state == 10 and prev_round_state == 10) or (round_state ~= 8 and round_state ~= 10) then
		return
	end
	if round_state~=prev_round_state then
		if DEBUG then print("prev_round_state="..prev_round_state.." => round_state="..round_state.." (at "..prev_round_state.." during "..statecount.." frames)") end
		if (round_state == 10) and (prev_round_state ==8) then
			if DEBUG then print("fight_anim: "..fight_anim.." => "..statecount) end
			fight_anim = statecount
		end
		statecount=0
		roundstart_played = false
	end
	statecount=statecount+1
	if (round_state==8) then
		if DEBUG then print("FRAME: "..statecount) end
	end

	if selector == 1 and (round_state == 8) and (statecount >= fight_anim - framesrecorded ) and not recording.playback then
		if not roundstart_played then
			if DEBUG then print("PLAYBACK pre-start @ frame "..statecount.."/"..fight_anim.." (framesrecorded="..framesrecorded..")") end
			togglePlayBack(nil, {})
			roundstart_played = true
		end
	end

	if selector == 2 and (round_state == 10) and (prev_round_state == 8) and not recording.playback then
		if DEBUG then print("PLAYBACK post-start") end
		togglePlayBack(nil, {})
	end
end

-----------------------------------------------------------
-----------------------------------------------------------
-- Asunaro - Character Specific and Advanced Settings
-----------------------------------------------------------
-----------------------------------------------------------

-----------------------------
-- Advanced Settings
-----------------------------

---------------------------
-- Locking the characters
-- by pressing "Start"
---------------------------
local lock_selector = 0
local locking = {}
locking["P1"] = false
locking["P2"] = false
local p1_locked = false
local p2_locked = false
local p1_lock_distance = 0
local p2_lock_distance = 0

local function lockSelector()
	lock_selector = lock_selector + 1
	p1_locked = false
	p2_locked = false

	if lock_selector > 3 then
		lock_selector = 0
	end
end

local function lockCharacters()
	if REPLAY then return end
	if not gamestate.is_in_match then
		lock_selector = 0
		return
	end

	if lock_selector == 0 then
		locking["P1"] = false
		locking["P2"] = false
	elseif lock_selector == 1 then
		locking["P1"] = true
		locking["P2"] = false
		gui.text(6,7,"P1 Locked")
	elseif lock_selector == 2 then
		locking["P1"] = false
		locking["P2"] = true
		gui.text(342,7,"P2 Locked")
	elseif lock_selector == 3 then
		locking["P1"] = true
		locking["P2"] = true
		gui.text(6,7,"P1 Locked")
		gui.text(342,7,"P2 Locked")
	end

	if locking["P1"] then
		if not p1_locked then
			p1_lock_distance = gamestate.P1.pos_x
		end
		ww(gamestate.P1.addresses.pos_x, p1_lock_distance)
		p1_locked = true
	end
	if locking["P2"] then
		if not p2_locked then
			p2_lock_distance = gamestate.P2.pos_x
		end
		ww(gamestate.P2.addresses.pos_x, p2_lock_distance)
		p2_locked = true
	end
end
newHotkey("LP",lockSelector, "LP : Lock a character's position")
------------------------------------
-- Enable/Disable Auto Tech Throws
------------------------------------
local function techThrowControl()
	if REPLAY then return end
	local selector = ST_buttons["Training"]["Dummy Settings"]["Throw Escape"].selector
	if selector == 1 then
		if gamestate.P1.throw_flag == 0x01 then
			modifyInputSet(gamestate.P2,6,3)
			wb(gamestate.P2.addresses.grab_break, 0x00) -- will now automatically escape hold throws
		end
	end
end
-----------------------------
-- Enable/Disable frameskip
-----------------------------
local frameskipControl = function()
	local selector = ST_buttons["Training"]["Advanced Settings"]["Frameskip"].selector
	if selector == 0 then
		setFrameskip(true)
	else
		setFrameskip(false)
	end
end
-----------------------------
-- Enable/Disable projectile
-- impact slowdown
-----------------------------
local slowdownControl = function()
	if REPLAY then return end
	local selector = ST_buttons["Training"]["Advanced Settings"]["Slowdown"].selector
	if selector == 0 then
		return
	else
		wb(addresses.global.slowdown,0x00)
	end
end
-----------------------------
-- Enable/Disable background music
-----------------------------
local nomusicControl = function()
	local selector = ST_buttons["Training"]["Advanced Settings"]["No Music"].selector
	if selector == 0 then
		memory.writeword_audio(addresses.global.bgmusic,0xE378)
	else
		memory.writeword_audio(addresses.global.bgmusic,0)
	end
end

-------------------------------------------
-- Enable/Disable Frame Advantage Display
-------------------------------------------
local step = 0
local calculation_end = false
local frame_advantage = 0
local frame_disadvantage = 0
local frame_addition = 0
local frame_advantage_result = 0
local frame_advantage_msg_fcount = 0
-- Read the kind of move performed
local projectile_hit = false
local projectile_duel = false
local knockdown = false
local successful_throw = false
local teched_throw = false
-- Help to continue the calculation even if the attacker is performing other actions after hitting the dummy
local projectile_move_ended = false
local attacker_duel_projectile_move_ended = false
local defender_duel_projectile_move_ended = false
local general_sequence_ended = false
local knockdown_sequence_ended = false
local throw_ended = false

local throw_exception = false

local function frameAdvantageDisplay()
	if not gamestate.is_in_match then
		return
	end
	local selector = ST_buttons["Training"]["Screen Display Settings"]["Frame Advantage"].selector

	if selector > 0 then
		-------------------
		-- Initialization
		-------------------
		local DEBUG = false
		local attacker = {}
		local defender = {}
		local player = ""
		
		if selector == 1 then
			attacker = gamestate.P1
			defender = gamestate.P2
			player = "P1"
		elseif selector == 2 then
			attacker = gamestate.P2
			defender = gamestate.P1
			player = "P2"
		end
		-------------------
		-- Reset (new hit)
		-------------------
		 -- not a projectile
		if attacker.in_hitfreeze and defender.in_hitfreeze and not throw_exception and not defender.is_attacking then
			--
			frame_advantage = 0
			frame_disadvantage = 0
			--
			projectile_hit = false
			projectile_duel = false
			knockdown = false
			successful_throw = false
			teched_throw = false
			--
			general_sequence_ended = false
			projectile_move_ended = false
			attacker_duel_projectile_move_ended = false
			defender_duel_projectile_move_ended = false
			knockdown_sequence_ended = false
			throw_ended = false
			--
			if DEBUG then print("Reset : hit (not a projectile)") end
			step = 1
		end
		-- projectile
		if not attacker.projectile_ready and not attacker.in_hitfreeze and defender.in_hitfreeze then -- projectile
			--
			frame_advantage = 0
			frame_disadvantage = 0
			--
			projectile_hit = true
			projectile_duel = false
			knockdown = false
			successful_throw = false
			teched_throw = false
			--
			general_sequence_ended = false
			projectile_move_ended = false
			attacker_duel_projectile_move_ended = false
			defender_duel_projectile_move_ended = false
			knockdown_sequence_ended = false
			throw_ended = false
			--
			if DEBUG then print("Reset : hit (projectile)") end
			step = 1
		end

		if not attacker.prev.projectile_ready and not defender.prev.projectile_ready then -- Sometimes it won't trigger because of the frameskip, maybe we'll have to find a fix
			if attacker.projectile_ready and defender.projectile_ready then
			--
			frame_advantage = 0
			frame_disadvantage = 0
			--
			projectile_hit = false
			projectile_duel = true
			knockdown = false
			successful_throw = false
			teched_throw = false
			--
			general_sequence_ended = false
			projectile_move_ended = false
			attacker_duel_projectile_move_ended = false
			defender_duel_projectile_move_ended = false
			knockdown_sequence_ended = false
			throw_ended = false
			--
			if DEBUG then print("Reset : projectile duel") end
			step = 1
			end
		end
		-- throw
		if attacker.throw_flag == 0x01 then
			if attacker.character == Guile or attacker.character == Cammy or attacker.character == Zangief or attacker.character == Hawk then
				throw_exception = true -- Those characters can trigger hitfreeze with their throws
			end
		end
		if attacker.prev.throw_flag == 0x01 and attacker.throw_flag == 0x00 then
			if defender.state == being_thrown and defender.prev.state ~= being_thrown then
				if DEBUG then print("Reset : throw (successful)") end
				successful_throw = true
				teched_throw = false
			elseif defender.state == being_hit and defender.prev.state ~= being_hit then
				if DEBUG then print("Reset : throw (teched)") end
				teched_throw = true
				successful_throw = false
			end
			--
			frame_advantage = 0
			frame_disadvantage = 0
			--
			projectile_hit = false
			projectile_duel = false
			knockdown = false
			--
			general_sequence_ended = false
			projectile_move_ended = false
			attacker_duel_projectile_move_ended = false
			defender_duel_projectile_move_ended = false
			knockdown_sequence_ended = false
			throw_ended = false
			--
			step = 1
			--end
		end
		----------------
		-- Calculation
		----------------
		if step == 1 then
			frame_advantage_result = ""
			frame_advantage_msg_fcount = 0
			-- Display frameskip
			if DEBUG then
				if gamestate.prev.frame_number ~= gamestate.frame_number then
					if was_frameskip then
						frame_addition = 2
					else
						frame_addition = 1
					end
				end
			end
		----------------------
		-- Frame Advantage
		----------------------
			-- Projectile : We'll add hitfreeze to frame advantage
			if projectile_hit then
				if not attacker.is_attacking and defender.state == being_hit then -- problem : if P1 performs an attack right when the hitfreeze begins the count won't be exact
					projectile_move_ended = true
				end
				if defender.in_hitfreeze and projectile_move_ended then
					if DEBUG then print("Advantage + "..frame_addition.." (Hitfreeze)") end
					frame_advantage = countFrames(frame_advantage)
				end
			end
			if projectile_duel then
				if not attacker.is_attacking then
					attacker_duel_projectile_move_ended = true
				end
				if not defender.is_attacking then
					defender_duel_projectile_move_ended = true
				end
				if attacker_duel_projectile_move_ended and not defender_duel_projectile_move_ended then
					if DEBUG then print("Advantage + "..frame_addition.." (Projectile Duel)") end
					frame_advantage = countFrames(frame_advantage)
				end
			end
			-- Throw
			if successful_throw or teched_throw then
				if attacker.throw_flag == 0x00 and attacker.state ~= 0x0A and attacker.state ~= doing_special_move and attacker.substate ~= 0x04 then
					throw_ended = true
				end
				if throw_ended then
					if DEBUG then print("Advantage + "..frame_addition.." (Throw)") end
					frame_advantage = countFrames(frame_advantage)
				end
			end
			-- Knockdown / Air recovery
			if defender.air_state == 255 then -- Knockdown or Air recovery
				knockdown = true
			end
			if not teched_throw and knockdown then
				if not attacker.is_attacking then
					knockdown_sequence_ended = true
				end
				if knockdown_sequence_ended then
					if DEBUG then print("Advantage + "..frame_addition.." (Knockdown/Air recovery)") end
					frame_advantage = countFrames(frame_advantage)
				end
			end
			-- Normal moves / Non-projectile specials / Projectiles (when P2 hitfreeze ends)
			if defender.in_hitstun then
				if not knockdown and not attacker.is_attacking then
					general_sequence_ended = true
				end
				if general_sequence_ended or projectile_move_ended then
					if DEBUG then print("Advantage + "..frame_addition.." (Hit/blockstun)") end
					frame_advantage = countFrames(frame_advantage)
				end
			end
			-------------------------
			-- Frame Disadvantage
			-------------------------
			if not defender.in_hitstun then
				if not successful_throw and not teched_throw and not knockdown and not projectile_move_ended and not projectile_duel and not general_sequence_ended then
					if attacker.is_attacking and not defender.in_hitfreeze then
						if DEBUG then print("Disadvantage + "..frame_addition) end
						frame_disadvantage = countFrames(frame_disadvantage)
					end
				end
			end
			if projectile_duel then
				if not attacker_duel_projectile_move_ended and defender_duel_projectile_move_ended then
					if DEBUG then print("Disadvantage + "..frame_addition) end
					frame_disadvantage = countFrames(frame_disadvantage)
				end
			end
			--------------------------
			-- Knowing when to end
			--------------------------
			if projectile_duel then
				if attacker_duel_projectile_move_ended and defender_duel_projectile_move_ended then
					if DEBUG then print("End (Projectile duel) : Both players have finished their moves") end
					calculation_end = true
				end
			elseif not knockdown and not successful_throw and not teched_throw then
				if not attacker.is_attacking and not defender.in_hitfreeze and not defender.in_hitstun then
					if DEBUG then print("End (General) : Defender is not in hitfreeze/hitstun/blockstun anymore") end
					calculation_end = true
				end
			elseif knockdown then
				if defender.prev.state == being_hit and defender.state ~= being_hit then
					if DEBUG then print("End (Knockdown/Air recovery) : Defender has landed on his feet") end
					calculation_end = true
				end
			elseif successful_throw then
				if defender.prev.state == being_thrown and defender.state ~= being_thrown then
					if DEBUG then print("End (Successful Throw) : Defender has recovered from the throw") end
					calculation_end = true
				end
			elseif teched_throw then
				if defender.prev.state == being_hit and defender.state ~= being_hit then
					if DEBUG then print("End (Teched Throw) : Defender has recovered from the throw") end
					calculation_end = true
				end
			end
		end
		----------------------------------------------
		----------------------------------------------
		if calculation_end then
			step = 0
			-- just to be sure, but maybe we should delete these lines
			projectile_hit = false
			knockdown = false
			successful_throw = false
			teched_throw = false

			general_sequence_ended = false
			projectile_move_ended = false
			projectile_duel = false
			attacker_duel_projectile_move_ended = false
			defender_duel_projectile_move_ended = false
			knockdown_sequence_ended = false
			throw_ended = false
			throw_exception = false
			--------------------------------
			if frame_disadvantage > 0 then
				frame_advantage_result = "-"..frame_disadvantage
				frame_advantage_msg_fcount = MSG_FRAMELIMIT-120
			else
				frame_advantage_result = "+"..frame_advantage
				frame_advantage_msg_fcount = MSG_FRAMELIMIT-120
			end
			calculation_end = false
		end
		
		if frame_advantage_msg_fcount >= MSG_FRAMELIMIT then
			frame_advantage_result = ""
			frame_advantage_msg_fcount = 0
		elseif frame_advantage_msg_fcount > 0 then
			frame_advantage_msg_fcount = countFrames(frame_advantage_msg_fcount)
		end
		gui.text(140,216,"Frame Advantage ("..player..") : "..frame_advantage_result)

		if DEBUG then
			gui.text(230,50,"Frame advantage : "..frame_advantage)
			gui.text(230,60,"Frame disadvantage : "..frame_disadvantage)

			gui.text(10,50,"Att. state : "..attacker.state)
			gui.text(10,60,"Att. substate : "..attacker.substate)
			gui.text(10,70,"Att. attacking : "..str(attacker.is_attacking))
			gui.text(10,80,"Att. throw : "..attacker.throw_flag)


			gui.text(120,50,"Def. state : "..defender.state)
			gui.text(120,60,"Def. substate : "..defender.substate)
			gui.text(120,70,"Def. hitfreeze : "..str(defender.in_hitfreeze))
			gui.text(120,80,"Def. hitstun : "..str(defender.in_hitstun))
		end
	end
end

---------------------------------------
-- Enable/Disable Frame Trap Display
-- (when the dummy goes out of blockstun/hitstun,
-- counts how many frames
-- are left before a new hit happens)
---------------------------------------
local frame_trap_step = {0,0}
local frame_trap_timer = {0,0}
local post_first_hit = {false, false}
local frame_trap_calculated = {{false,false,false,false,false,false},{false,false,false,false,false,false}}
local frame_trap_result = {{"","","","","",""},{"","","","","",""}}
local frame_trap_calculation_end = {false,false}
local frame_trap_reset = {false,false}
local nb_calculation = {1,1}

local function frameTrapAnalysis(_player_obj)
	if not gamestate.is_in_match then
		return
	end
	---------------------
	-- Initialization
	---------------------
	local DEBUG = false

	if DEBUG then
		gui.text(40,120,"P1 Step : "..frame_trap_step[1])
		gui.text(40,130,"P1 Reset : "..str(frame_trap_reset[1]))
		gui.text(40,140,"P1 Frame trap calculation end :"..str(frame_trap_calculation_end[1]))
		gui.text(40,150,"P2 State : "..gamestate.P2.state)

		gui.text(230,120,"P2 Step : "..frame_trap_step[2])
		gui.text(230,130,"P2 Reset : "..str(frame_trap_reset[2]))
		gui.text(230,140,"P2 Frame trap calculation end :"..str(frame_trap_calculation_end[2]))
		gui.text(230,150,"P1 State : "..gamestate.P1.state)
	end

	local attacker = _player_obj
	local defender = {}
	if attacker.id == 1 then
		defender = gamestate.P2
	elseif attacker.id == 2 then
		defender = gamestate.P1
	end
	-----------------------
	-- Begin/Reset
	-----------------------
	if frame_trap_step[attacker.id] == 0 and defender.in_hitstun then
		-- begin
		frame_trap_step[attacker.id] = 1
		frame_trap_timer[attacker.id] = 0
		-- reset
		if frame_trap_calculated[attacker.id][#frame_trap_calculated[attacker.id]] or frame_trap_reset[attacker.id] then
			for i = 1, #frame_trap_calculated[attacker.id] do
				frame_trap_calculated[attacker.id][i] = false
			end
			for i = 1, #frame_trap_result[attacker.id] do
				frame_trap_result[attacker.id][i] = ""
			end
			nb_calculation[attacker.id] = 1
			post_first_hit[attacker.id] = false
			frame_trap_reset[attacker.id] = false
		end
	end
	-------------------------
	-- Calculation
	-------------------------
	if frame_trap_step[attacker.id] == 1 then
		if defender.in_hitstun then
			post_first_hit[attacker.id] = true
		end
		if defender.state ~= being_hit then
			frame_trap_timer[attacker.id] = countFrames(frame_trap_timer[attacker.id])
			if not frame_trap_calculated[attacker.id][nb_calculation[attacker.id]] then
				frame_trap_result[attacker.id][nb_calculation[attacker.id]] = frame_trap_timer[attacker.id]
			end
		end
		if defender.in_hitfreeze then
			if post_first_hit[attacker.id] and frame_trap_timer[attacker.id] == 0 and defender.combo_counter == 0x00 and defender.air_state ~= 255 then
				if not frame_trap_calculated[attacker.id][nb_calculation[attacker.id]] then
					frame_trap_result[attacker.id][nb_calculation[attacker.id]] = "blockstring"
				end
				frame_trap_calculation_end[attacker.id] = true
			end
		end
		if defender.state == being_hit or attacker.throw_flag == 0x01 then -- If we detect a new hit or a throw
			if frame_trap_timer[attacker.id] ~= 0 then
				if not frame_trap_calculated[attacker.id][nb_calculation[attacker.id]] then
					frame_trap_result[attacker.id][nb_calculation[attacker.id]] = frame_trap_timer[attacker.id]
				end
				frame_trap_calculation_end[attacker.id] = true
			end
		end
	end

	if frame_trap_calculation_end[attacker.id] then
		if not frame_trap_calculated[attacker.id][nb_calculation[attacker.id]] then
			frame_trap_calculated[attacker.id][nb_calculation[attacker.id]] = true
		end
		if not frame_trap_calculated[attacker.id][#frame_trap_calculated[attacker.id]] then
			frame_trap_step[attacker.id] = 0
		else
			frame_trap_step[attacker.id] = -1
		end
		if frame_trap_reset[attacker.id] then
			frame_trap_step[attacker.id] = -1
		end
		nb_calculation[attacker.id] = nb_calculation[attacker.id] + 1
		if nb_calculation[attacker.id] > #frame_trap_calculated[attacker.id] then
			nb_calculation[attacker.id] = 1
		end

		frame_trap_timer[attacker.id] = 0
		post_first_hit[attacker.id] = false
		frame_trap_calculation_end[attacker.id] = false
	end

	if frame_trap_step[attacker.id] == -1 and (defender.state ~= being_hit and defender.state ~= being_thrown) then
		frame_trap_step[attacker.id] = 0
	end

	if (frame_trap_timer[attacker.id] >= 50 and frame_trap_step[attacker.id] == 1) or (defender.air_state == 255 or attacker.throw_flag == 0x01) then
		frame_trap_step[attacker.id] = -1
		frame_trap_timer[attacker.id] = 0
		frame_trap_reset[attacker.id] = true
		if not frame_trap_calculated[attacker.id][nb_calculation[attacker.id]] then
			frame_trap_result[attacker.id][nb_calculation[attacker.id]] = ""
		end
	end
	----------------------
	-- Display
	----------------------
	local x = 0
	local y = 100
	if attacker.id == 1 then
		x = inputs.properties.scrollinginput.scrollinginputxoffset[1] + 90
	elseif attacker.id == 2 then
		x = inputs.properties.scrollinginput.scrollinginputxoffset[2] - 90
	end
	if frame_trap_calculated[attacker.id][#frame_trap_calculated[attacker.id]] then
		for i = 1, #frame_trap_calculated[attacker.id] do
			gui.text(x,y+10*i,"Gap "..i.." : "..frame_trap_result[attacker.id][i])
		end
	elseif frame_trap_reset[attacker.id] then
		for i = 1, #frame_trap_calculated[attacker.id] do
			if frame_trap_calculated[attacker.id][i] then
				gui.text(x,y+10*i,"Gap "..i.." : "..frame_trap_result[attacker.id][i])
			end
		end
	else
		for i = 1, nb_calculation[attacker.id] do
			if frame_trap_result[attacker.id][i] ~= "" then
				gui.text(x,y+10*i,"Gap "..i.." : "..frame_trap_result[attacker.id][i])
			end
		end
	end
end

local function frameTrapDisplay()
	local selector = ST_buttons["Training"]["Advanced Settings"]["Frame Trap"].selector
	if selector == 1 then
		frameTrapAnalysis(gamestate.P1)
		frameTrapAnalysis(gamestate.P2)
	end
end
-------------------------
-- Tick Throw
-------------------------
local tick_step = {0,0}
local tick_timer = {0,0}
local throwable_timer = {0,0}
local reset_tick = {false,false}

local function tickThrow(_player_obj)
	-------------------
	-- Initialization
	-------------------
	local attacker = _player_obj
	local defender = {}
	if attacker.id == 1 then
		defender = gamestate.P2
	else
		defender = gamestate.P1
	end
	--------------------
	-- Reset
	--------------------
	if reset_tick[attacker.id] then
		tick_step[attacker.id] = 0
		tick_timer[attacker.id] = 0
		throwable_timer[attacker.id] = 0
		reset_tick[attacker.id] = false
	end
	---------------------
	-- Count
	---------------------
	if tick_step[attacker.id] == 0 and defender.in_hitstun and attacker.throw_flag == 0x00 then
		tick_step[attacker.id] = 1
		tick_timer[attacker.id] = 0
	elseif tick_step[attacker.id] == 1 then
		if defender.state ~= being_hit then
			tick_timer[attacker.id] = countFrames(tick_timer[attacker.id])
		end
		if tick_timer[attacker.id] > 12 or defender.in_hitfreeze then
			reset_tick[attacker.id] = true
		end
		if attacker.throw_flag == 0x01 then -- If we detect a throw after a tick, return true
			reset_tick[attacker.id] = true
			return true, tick_timer[attacker.id]
		end
	end
	-- return false if _player_obj did not tick throw
	return false
end

local p1_throw_range = {}
local p2_throw_range = {}
local could_have_been_thrown = {false,false}
local begin_throw_display = false
local buffersize_modified = false
msg_tick_throw = true

local function resetThrowDisplay(_player_obj)
	-- Display the correct Boxer throw distance
	if gamestate.P1.character == Boxer then
		getBoxerThrowDistance(gamestate.P2.character)
	elseif gamestate.P2.character == Boxer then
		getBoxerThrowDistance(gamestate.P1.character)
	end
	-- Reset throw range values
	local character = _player_obj.character_name
	if _player_obj.id == 1 then
		for i = 1, #p1_throw_range do
			p1_throw_range[i] = nil
		end
		for i = 1, #character_specific[character].hitboxes.throw do
			p1_throw_range[i] = {"", 0, nil}
			p1_throw_range[i][1] = character_specific[character].hitboxes.throw[i][1]
		end
	elseif _player_obj.id == 2 then 
		for i = 1, #p2_throw_range do
			p2_throw_range[i] = nil
		end
		for i = 1, #character_specific[character].hitboxes.throw do
			p2_throw_range[i] = {"", 0, nil}
			p2_throw_range[i][1] = character_specific[character].hitboxes.throw[i][1]
		end
	end
	-- Modify buffersize in scrolling-input-display, this way inputs won't overlap with the informations drawn
	if gamestate.P1.character == Zangief or gamestate.P2.character == Zangief then
		buffersize = 9
		scrollingInputClear()
		buffersize_modified = true
	else
		buffersize = 13
	end
end

local function throwInformationsDisplay()
	-- Throw Display initialization
	local p1character = gamestate.P1.character_name
	local p2character = gamestate.P2.character_name
	if characterChanged(gamestate.P1) then
		resetThrowDisplay(gamestate.P1)
	end
	if characterChanged(gamestate.P2) then
		resetThrowDisplay(gamestate.P2)
	end
	if gamestate.is_in_match then
		-- Get Throw Informations
		if gamestate.P1.throw_flag == 0x00 and gamestate.P2.throw_flag == 0x00 then
			-- P1 throw range
			if gamestate.P1.flip_input then
				for i = 1, #character_specific[p1character].hitboxes.throw do
					p1_throw_range[i][2] = (gamestate.P1.pos_x + character_specific[p1character].hitboxes.throw[i][2]) - (gamestate.P2.pos_x - character_specific[p2character].hitboxes.throwable)
				end
			else
				for i = 1, #character_specific[p1character].hitboxes.throw do
					p1_throw_range[i][2] = (gamestate.P2.pos_x + character_specific[p2character].hitboxes.throwable) - (gamestate.P1.pos_x - character_specific[p1character].hitboxes.throw[i][2])
				end
			end
			-- P2 throw range
			if gamestate.P2.flip_input then
				for i = 1, #character_specific[p2character].hitboxes.throw do
					p2_throw_range[i][2] = (gamestate.P2.pos_x + character_specific[p2character].hitboxes.throw[i][2]) - (gamestate.P1.pos_x - character_specific[p1character].hitboxes.throwable)
				end
			else
				for i = 1, #character_specific[p2character].hitboxes.throw do
					p2_throw_range[i][2] = (gamestate.P1.pos_x + character_specific[p1character].hitboxes.throwable) - (gamestate.P2.pos_x - character_specific[p2character].hitboxes.throw[i][2])
				end
			end
			-- Can P1 throw ?
			for i = 1, #p1_throw_range do
				if p1_throw_range[i][2] >= 0 then
					p1_throw_range[i][3] = true
					if (tick_step[2] == 1) and (gamestate.P1.state == standing or gamestate.P1.state == blocking_attempt or gamestate.P1.state == doing_normal_move or gamestate.P1.state == doing_special_move or gamestate.P1.state == 0x06) and (gamestate.P2.state ~= being_hit or gamestate.P2.state ~= being_thrown) then
						throwable_timer[2] = countFrames(throwable_timer[2])
					end
				else
					p1_throw_range[i][3] = false
				end
			end
			-- Can P2 throw ?
			for i = 1, #p2_throw_range do
				if p2_throw_range[i][2] >= 0 then
					p2_throw_range[i][3] = true
					if (tick_step[1] == 1) and (gamestate.P2.state == standing or gamestate.P2.state == blocking_attempt or gamestate.P2.state == doing_normal_move or gamestate.P2.state == doing_special_move or gamestate.P2.state == 0x06) and (gamestate.P1.state ~= being_hit or gamestate.P1.state ~= being_thrown) then
						throwable_timer[1] = countFrames(throwable_timer[1])
					end
				else
					p2_throw_range[i][3] = false
				end
			end
		end
		-- Informations at the bottom of the screen
		-- P1
		gui.text(85,165,"P1")
		for i = 1, #p1_throw_range do
			local column = 1
			if i > 3 then column = 2 end
			local line = (i%3)
			if line == 0 then line = 3 end
			local x_base = 0
			if #p1_throw_range > 3 then x_base = -88 else x_base = -15 end
			local x = x_base+100*column
			local y = 165 + 10*line
			if not p1_throw_range[i][3] then
				gui.text(x,y,p1_throw_range[i][1].." : "..p1_throw_range[i][2])
			else
				gui.text(x,y,p1_throw_range[i][1].." : OK (+"..p1_throw_range[i][2]..")")
			end
		end
		-- P2
		gui.text(265,165,"P2")
		for i=1, #p2_throw_range do
			local column = 1
			if i > 3 then column = 2 end
			local line = (i%3)
			if line == 0 then line = 3 end
			local x_base = 0
			if #p2_throw_range > 3 then x_base = 102 else x_base = 165 end
			local x = x_base+100*column
			local y = 165 + 10*line
			if not p2_throw_range[i][3] then
				gui.text(x,y,p2_throw_range[i][1].." : "..p2_throw_range[i][2])
			else
				gui.text(x,y,p2_throw_range[i][1].." : OK (+"..p2_throw_range[i][2]..")")
			end
		end
	end
end

local function tickThrowAnalysis(_player_obj)
	if gamestate.is_in_match then
		--------------------
		-- Initialization
		--------------------
		local attacker = _player_obj
		local defender = {}
		defender_throw_range = {}
		if attacker.id == 1 then
			defender = gamestate.P2
			defender_throw_range = p2_throw_range
		elseif attacker.id == 2 then
			defender = gamestate.P1
			defender_throw_range = p1_throw_range
		end
		---------------------
		-- Tick analysis
		---------------------
		if tickThrow(attacker) and msg_tick_throw then
			if attacker.id == 1 then
				msg1 = "Succesful tick throw: you threw "..tick_timer[attacker.id].." frames after your tick."
			elseif attacker.id == 2 then
				msg1 = "Succesful tick throw: P2 threw "..tick_timer[attacker.id].." frames after their tick."
			end
			msg_fcount = MSG_FRAMELIMIT-220
		end
		if attacker.throw_flag == 0x01 and tick_timer[attacker.id] > 0 and tick_timer[attacker.id] <= 12 then -- If the attacker did a tick
			for i = 1, #defender_throw_range do
				if defender_throw_range[i][3] then -- If the defender could have thrown
					could_have_been_thrown[attacker.id] = true
				end
			end
			if could_have_been_thrown[attacker.id] then
				if throwable_timer[attacker.id] == 0 then
					throwable_timer[attacker.id] = 1
				else
					throwable_timer[attacker.id] = countFrames(throwable_timer[attacker.id])
				end
			end
			if msg_tick_throw then
				if (not could_have_been_thrown[attacker.id]) and (throwable_timer[attacker.id] > 0) then
					if attacker.id == 1 then
						msg2 = "P2 could've thrown for "..throwable_timer[attacker.id].." frames, but you threw outside of P2 range."
					elseif attacker.id == 2 then
						msg2 = "You could've thrown for "..throwable_timer[attacker.id].." frames, but P2 threw outside of your range."
					end
				elseif (not could_have_been_thrown[attacker.id]) or (throwable_timer[attacker.id] == 0) then
					if attacker.id == 1 then
						msg2 = "P2 couldn't have thrown you. Nice!"
					elseif attacker.id == 2 then
						msg2 = "You couldn't have thrown P2!"
					end
				elseif could_have_been_thrown[attacker.id] and (throwable_timer[attacker.id] >= tick_timer[attacker.id]) then
					if attacker.id == 1 then
						msg2 = "However P2 could have thrown you :("
					elseif attacker.id == 2 then
						msg2 = "However you could have thrown them!"
					end
				elseif could_have_been_thrown[attacker.id] and (throwable_timer[attacker.id] < tick_timer[attacker.id]) then
					if attacker.id == 1 then
						msg2 = "However P2 could have thrown you during "..throwable_timer[attacker.id].." frames :("
					elseif attacker.id == 2 then
						msg2 = "However you could have thrown them during "..throwable_timer[attacker.id].." frames!"
					end
				end
				msg_fcount = MSG_FRAMELIMIT-300
			end
			could_have_been_thrown[attacker.id] = false
		end
	end
end

local function tickThrowDisplay()
	if ST_buttons["Training"]["Screen Display Settings"]["Tick Throw"].selector > 0 then
		begin_throw_display = false
		if buffersize_modified then -- Can I simply write "buffersize = 13" every frame ? What is the most efficient ?
			buffersize = 13
			buffersize_modified = false
		end
	else
		if not begin_throw_display then
			resetThrowDisplay(gamestate.P1)
			resetThrowDisplay(gamestate.P2)
			begin_throw_display = true
		end
		throwInformationsDisplay()
		tickThrowAnalysis(gamestate.P1)
		tickThrowAnalysis(gamestate.P2)
	end
end
---------------------------------
-- Crossup Display
---------------------------------
local begin_crossup_display = {false,false}
local jump_crossup_attempt = {false,false}
local ground_crossup_attempt = {false,false}
local special_crossup_attempt = {false,false}
local prev_flip_value = {nil,nil}
local prev_attacker_left_side = {false,false}
local did_not_crossup = {false,false}
local block_direction = {"",""}

local function crossupAnalysis(_player_obj)
	---------------------
	-- Initialization
	---------------------
	local DEBUG = false
	local attacker = _player_obj
	local defender = {}
	if attacker.id == 1 then
		defender = gamestate.P2
	elseif attacker.id == 2 then
		defender = gamestate.P1
	end
	---------------------
	-- Analysis
	---------------------
	if gamestate.is_in_match then
		if DEBUG then
			gui.text(250,80, "Def. Flip Input : "..str(defender.flip_input))
			gui.text(250,90, "Def. Hitfreeze counter : "..defender.hitfreeze_counter)
			if defender.flip_input then
				block_direction[attacker.id] = "left"
			else
				block_direction[attacker.id] = "right"
			end
		end
		if gamestate.frame_number ~= gamestate.prev.frame_number then
			if begin_crossup_display[attacker.id] then
				-- Correcting some attemps mislabeled
				if ground_crossup_attempt[attacker.id] and (attacker.character == Claw and attacker.state == doing_special_move and attacker.airborn) then 
					if DEBUG then
						print("Claw Flying move -> Correcting : Special crossup attempt")
					end
					begin_crossup_display[attacker.id] = false
					prev_flip_value[attacker.id] = nil
					jump_crossup_attempt[attacker.id] = false
					ground_crossup_attempt[attacker.id] = false
					special_crossup_attempt[attacker.id] = true
				end
				-- Reseting
				if jump_crossup_attempt[attacker.id] and ((attacker.prev.state == jumping and attacker.state ~= jumping) or (defender.prev.state == jumping and (defender.state == being_hit or defender.state == being_thrown))) then
					if DEBUG then
						print("Reset (Jump)")
					end
					begin_crossup_display[attacker.id] = false
					prev_flip_value[attacker.id] = nil
					jump_crossup_attempt[attacker.id] = false
					ground_crossup_attempt[attacker.id] = false
					special_crossup_attempt[attacker.id] = false
				elseif ground_crossup_attempt[attacker.id] and not attacker.is_attacking then
					if DEBUG then
						print("Reset (Ground)")
					end
					begin_crossup_display[attacker.id] = false
					prev_flip_value[attacker.id] = nil
					jump_crossup_attempt[attacker.id] = false
					ground_crossup_attempt[attacker.id] = false
					special_crossup_attempt[attacker.id] = false
				elseif special_crossup_attempt[attacker.id] and attacker.prev.state == doing_special_move and attacker.state ~= doing_special_move then
					if DEBUG then
						print("Reset (Special)")
					end
					begin_crossup_display[attacker.id] = false
					prev_flip_value[attacker.id] = nil
					jump_crossup_attempt[attacker.id] = false
					ground_crossup_attempt[attacker.id] = false
					special_crossup_attempt[attacker.id] = false
				end
			end

			if not begin_crossup_display[attacker.id] then
				if special_crossup_attempt[attacker.id] then
					if attacker.character == Claw then
						if attacker.prev.is_attacking and not attacker.is_attacking then -- Claw did bounce against a wall
							begin_crossup_display[attacker.id] = true
							prev_attacker_left_side[attacker.id] = isCharacterLeft(attacker)
							did_not_crossup[attacker.id] = false
						end
					end
				elseif attacker.state == jumping and attacker.prev.state ~= jumping then
					jump_crossup_attempt[attacker.id] = true
					begin_crossup_display[attacker.id] = true
					prev_attacker_left_side[attacker.id] = isCharacterLeft(attacker)
					did_not_crossup[attacker.id] = false
					if DEBUG then
						print("Jump crossup attempt")
					end
				elseif attacker.is_attacking and attacker.prev.state ~= jumping and attacker.throw_flag ~= 0x01 and defender.state ~= being_thrown then
					ground_crossup_attempt[attacker.id] = true -- slides etc.
					begin_crossup_display[attacker.id] = true
					prev_attacker_left_side[attacker.id] = isCharacterLeft(attacker)
					did_not_crossup[attacker.id] = false
					if DEBUG then
						print("Ground crossup attempt")
					end
				end
			end

			if begin_crossup_display[attacker.id] then
				if prev_flip_value[attacker.id] == nil then
					if jump_crossup_attempt[attacker.id] or special_crossup_attempt[attacker.id] then
						prev_flip_value[attacker.id] = not isCharacterLeft(attacker)
						if DEBUG then
							local side = ""
							if prev_attacker_left_side[attacker.id] then
								side = "Left"
							else
								side = "Right"
							end
							if jump_crossup_attempt[attacker.id] then
								print("Saving jump original side (jump crossup attempt) : "..side)
							elseif special_crossup_attempt[attacker.id] then
								print("Saving special move original side (special crossup attempt) : "..side)
							end
						end
					elseif ground_crossup_attempt[attacker.id] then
						prev_flip_value[attacker.id] = not isCharacterLeft(attacker)
						if DEBUG then
							local side = ""
							if prev_attacker_left_side[attacker.id] then
								side = "Left"
							else
								side = "Right"
							end
							print("Saving attack original side (ground crossup attempt) : "..side)
						end
					end
				end
				if DEBUG then
					if (defender.hitfreeze_counter > defender.prev.hitfreeze_counter) and defender.state == jumping then
						print("Air-to-Air : This is not a crossup")
					end
				end
				if (defender.hitfreeze_counter > defender.prev.hitfreeze_counter) and defender.state ~= jumping then
					if DEBUG then 
						print("Hit. gamestate prev/curr flip input : "..str(defender.prev.flip_input).."/"..str(defender.flip_input))
						print("Hit happened at :"..getDistanceBetweenPlayers())
					end
					if prev_attacker_left_side[attacker.id] ~= isCharacterLeft(attacker) then
						if prev_flip_value[attacker.id] == nil then
							if defender.flip_input then
								block_direction[attacker.id] = "left"
							else
								block_direction[attacker.id] = "right"
							end
							msg1 = "We couldn't determine if it was a crossup"
							msg2 = "Dummy should have blocked "..block_direction[attacker.id]
							msg_fcount = MSG_FRAMELIMIT-300
						end
						if (defender.flip_input ~= prev_flip_value[attacker.id]) or (defender.prev.flip_input ~= prev_flip_value[attacker.id]) then
							if DEBUG then
								print("> True Crossup : should have been blocked "..block_direction[attacker.id])
							end
							player_msg1[attacker.id] = "True crossup"
							if DEBUG then
								player_msg1[attacker.id] = "True crossup : should block "..block_direction[attacker.id]
							end
							player_msg1_fcount[attacker.id] = MSG_FRAMELIMIT-120
						else
							if DEBUG then
								print("> Fake Crossup : should have been blocked "..block_direction[attacker.id])
							end
							player_msg1[attacker.id] = "Fake crossup"
							if DEBUG then
								player_msg1[attacker.id] = "Fake crossup : should block "..block_direction[attacker.id]
							end
							player_msg1_fcount[attacker.id] = MSG_FRAMELIMIT-120
						end
					else
						if DEBUG then
							player_msg1[attacker.id] = "Non crossup : should block "..block_direction[attacker.id]
							player_msg1_fcount[attacker.id] = MSG_FRAMELIMIT-120
							print("> Non Crossup : should have been blocked "..block_direction[attacker.id])
						end
						did_not_crossup[attacker.id] = true
					end
				end
			end
		end
		if special_crossup_attempt[attacker.id] and (did_not_crossup[attacker.id] and isCharacterLeft(attacker) ~= prev_attacker_left_side[attacker.id]) then -- If Claw did a Barcelona over his opponent we want to display a message even if the special hit from front
			if DEBUG then
				print("> Fake Crossup : should have been blocked "..block_direction[attacker.id])
			end
			player_msg1[attacker.id] = "Fake crossup"
			if DEBUG then
				player_msg1[attacker.id] = "Fake crossup : should block "..block_direction[attacker.id]
			end
			player_msg1_fcount[attacker.id] = MSG_FRAMELIMIT-120
			did_not_crossup[attacker.id] = false
		end
	end
end

local function crossupDisplay()
	if ST_buttons["Training"]["Screen Display Settings"]["Crossup"].selector > 0 then
		crossupAnalysis(gamestate.P1)
		crossupAnalysis(gamestate.P2)
	end
end
---------------------------------
-- Safe Jump Display
---------------------------------
---------------------
-- Detect Safe Jump
---------------------
local safe_jump_attempt = {false,false}
local recovery_count = {0,0}
local jump_version = {"",""}
local jump_duration = {0,0}
-- DEBUG values
local curr_jump_frame = {0,0}
local landing_frame = {false,false}
local landing_msg_counter = 0
local debug_diff = {0,0}
local debug_recovery_count = {0,0}
--
local function detectSafeJump(_player_obj)
	--
	local DEBUG = false
	--
	local attacker = _player_obj
	local defender = {}
	if attacker.id == 1 then
		defender = gamestate.P2
	elseif attacker.id == 2 then
		defender = gamestate.P1
	end
	-- Detecting a safe jump attempt
	if defender.is_knockdown then
		if (attacker.prev.state ~= jumping and attacker.state == jumping) then -- to be fixed : some moves trigger the jumping state
			-- Is the jump a safe jumpt attempt ? (Maybe add distance conditions)
			jump_version[attacker.id] = getJumpVersion(attacker)
			if jump_version[attacker.id] == "back" or (jump_version[attacker.id] ~= "neutral" and jump_version[attacker.id] ~= "forward") then return end
			-- Can the defender be safe jumped ?
			if defender.character == Blanka or defender.character == Ken or defender.character == Zangief then
				player_msg2[attacker.id] = printName(defender).." can't be safe jumped"
				player_msg2_fcount[attacker.id] = MSG_FRAMELIMIT-120
				return
			elseif defender.character == Dhalsim or (defender.character == Dictator and defender.special_meter ~= 48) or (defender.character == Claw and defender.is_old) then
				player_msg2[attacker.id] = printName(defender).." doesn't have any invulnerable reversal"
				player_msg2_fcount[attacker.id] = MSG_FRAMELIMIT-120
				return
			end
			-- If they can, continue
			jump_duration[attacker.id] = getJumpDuration(attacker,jump_version[attacker.id])
			safe_jump_attempt[attacker.id] = true
			if DEBUG then
				-- Reset debug values
				curr_jump_frame[attacker.id] = 0
				debug_diff[attacker.id] = 0
				debug_recovery_count[defender.id] = 0
			end
		end
	end
	-- Is the jump safe ?
	if safe_jump_attempt[attacker.id] then
		if defender.is_knockdown then
			recovery_count[defender.id] = countFrames(recovery_count[defender.id])
		else
			if jump_duration[attacker.id] >= recovery_count[defender.id] then -- If the attacker lands (or would have landed) after the defender recovered
				if jump_duration[attacker.id]-recovery_count[defender.id] <= getReversalStartup(defender) then -- Check if the attacker lands (or would have landed) before the reversal's active frames
					player_msg2[attacker.id] = "Safe jump"
				else
					player_msg2[attacker.id] = "Too late ("..jump_duration[attacker.id]-recovery_count[defender.id].."f)"
				end
			else -- If the attacker lands before the defender recovers
				player_msg2[attacker.id] = "Too soon ("..recovery_count[defender.id]-jump_duration[attacker.id].."f)"
			end
			player_msg2_fcount[attacker.id] = MSG_FRAMELIMIT-120
			safe_jump_attempt[attacker.id] = false
			recovery_count[defender.id] = 0
		end
	end
	if DEBUG then
		--
		local x = 0
		if attacker.id == 1 then
			x = 100
		elseif attacker.id == 2 then
			x = 230
		end
		--
		if safe_jump_attempt[attacker.id] then
			if curr_jump_frame[attacker.id] < jump_duration[attacker.id] then
				curr_jump_frame[attacker.id] = countFrames(curr_jump_frame[attacker.id])
			elseif (curr_jump_frame[attacker.id] ~= 0) and (curr_jump_frame[attacker.id] >= jump_duration[attacker.id]) then
				landing_frame[attacker.id] = true
			end
			debug_recovery_count[defender.id] = recovery_count[defender.id]
			debug_diff[attacker.id] = jump_duration[attacker.id]-recovery_count[defender.id]
			if getReversalStartup(defender) ~= nil then
				debug_diff[attacker.id] = debug_diff[attacker.id].." (max = "..getReversalStartup(defender)..")"
			else
				debug_diff[attacker.id] = debug_diff[attacker.id].." (can't be safe jumped)"
			end
		end
		-- Display
		gui.text(x,50,"P"..attacker.id.." State : "..player[attacker.id].state)
		gui.text(x,60,"P"..defender.id.." is knockdown : "..str(player[defender.id].is_knockdown))
		--gui.text(x,60,"P"..attacker.id.." Curr. Jump Frame : "..curr_jump_frame[attacker.id])
		gui.text(x,70,"P"..attacker.id.." Total Jump Duration : "..jump_duration[attacker.id])
		gui.text(x,80,"P"..defender.id.." Recovery Count : "..debug_recovery_count[defender.id])
		gui.text(x,90,"Diff : "..debug_diff[attacker.id])

		if landing_frame[attacker.id] then
			landing_msg_counter = countFrames(landing_msg_counter)
			if landing_msg_counter < 30 then
				gui.text(x,130,"P"..attacker.id.." Landing frame")
			else
				landing_msg_counter = 0
				landing_frame[attacker.id] = false
			end
		end
	end
end

local function safeJumpDisplay()
	if ST_buttons["Training"]["Screen Display Settings"]["Safe Jump"].selector > 0 then
		detectSafeJump(gamestate.P1)
		detectSafeJump(gamestate.P2)
	end
end
-------------------------
-------------------------
-- Character Specific
-------------------------
-------------------------
local projectile_delay = math.random(-150,0)

local function throwProjectile(_projectile_id)
	if not gamestate.is_in_match then
		return
	end
	local selector = ST_buttons["Training"]["Advanced Settings"]["Projectile Frequency"].selector

	local character = gamestate.P2.character_name

	if not interactivegui.enabled then
		if gamestate.P2.projectile_ready and not gamestate.P2.is_attacking and gamestate.P2.state ~= being_hit then
			if projectile_delay < 0 and selector == 0 then
				projectile_delay = countFrames(projectile_delay)
			end
		end
		if not isChargeCharacter(gamestate.P2) then
			if gamestate.P2.projectile_ready then
				if selector == 0 and projectile_delay < 0 then
					return
				end
				if not gamestate.P2.is_attacking and gamestate.P2.state ~= being_hit then
					ready_to_fire = true
				end
			end
		elseif character == "chunli" then
			if (rb(0xFF84CE+p2) < 0x04 and gamestate.P2.projectile_ready) or (selector == -1 and not gamestate.P2.projectile_ready and easy_charge_moves_selector <= 0) or (selector == 0 and projectile_delay < 0)then
				if gamestate.P2.flip_input then
					modifyInputSet(gamestate.P2,1)
				else
					modifyInputSet(gamestate.P2,3)
				end
			elseif rb(0xFF84CE+p2) == 0x04 then
				modifyInputSet(gamestate.P2,5)
			elseif rb(0xFF84CE+p2) == 0x06 then
				ready_to_fire = true
			end
		elseif character == "deejay" then
			if (rb(0xFF84E0+p2) < 0x04 and gamestate.P2.projectile_ready) or (selector == -1 and not gamestate.P2.projectile_ready and easy_charge_moves_selector <= 0) or (selector == 0 and projectile_delay < 0)then
				if gamestate.P2.flip_input then
					modifyInputSet(gamestate.P2,1)
				else
					modifyInputSet(gamestate.P2,3)
				end
			elseif rb(0xFF84E0+p2) == 0x04 then
				modifyInputSet(gamestate.P2,5)
			elseif rb(0xFF84E0+p2) == 0x06 then
				ready_to_fire = true
			end
		elseif character == "guile" then
			if (rb(0xFF84CE+p2) < 0x04 and gamestate.P2.projectile_ready) or (selector == -1 and not gamestate.P2.projectile_ready and easy_charge_moves_selector <= 0) or (selector == 0 and projectile_delay < 0)then
			if gamestate.P2.flip_input then
					modifyInputSet(gamestate.P2,1)
				else
					modifyInputSet(gamestate.P2,3)
				end
			elseif rb(0xFF84CE+p2) == 0x04 then
				modifyInputSet(gamestate.P2,5)
			elseif rb(0xFF84CE+p2) == 0x06 then
				ready_to_fire = true
			end
		end
	end
	if ready_to_fire then
		if not isChargeCharacter(gamestate.P2) then
			do_special_move(gamestate.P2, character_specific[character].specials[_projectile_id[1]], _projectile_id[2], true)
		else
			do_special_move(gamestate.P2, character_specific[character].specials[_projectile_id[1]], _projectile_id[2], false)
		end
		if selector == 0 then
			if projectile_delay >= 0 then
				projectile_delay = math.random(-150,0)
			end
		end
		ready_to_fire = false
	end
end

local projectiles_checked = {} -- Stocks the relevant values to perform the choosen projectiles
local listenProjectileSettingsModfications = false

function stockProjectilesChecked()
	if interactivegui.enabled and not listenProjectileSettingsModfications then -- If the menu has been opened, clean the table (maybe there's a cleaner way)
		for k in pairs(projectiles_checked) do
			projectiles_checked[k] = nil
		end
		projectile_selector = 0
		listenProjectileSettingsModfications = true
	end
	if not interactivegui.enabled and listenProjectileSettingsModfications then -- If the menu has been closed, check the options selected
		for i = 1, #projectile_options do
			if projectile_options[i].checked then
					table.insert(projectiles_checked, projectile_options[i].projectile_id)
			end
		end
		if #projectiles_checked == 0 then
			projectile_selector = 0
		elseif #projectiles_checked == 1 then
			projectile_selector = 1
		elseif #projectiles_checked > 1 then
			projectile_selector = 2
		end
		listenProjectileSettingsModfications = false
	end
end

local projectile_reroll = true -- Determine if a new projectile has to be selected

local function throwProjectilesLogic()
	if projectile_selector == 1 then -- One option has been checked
		throwProjectile(projectiles_checked[1])
	elseif projectile_selector == 2 then -- Multiple options checked
		if projectile_reroll then
			random_projectile = math.random(1,#projectiles_checked)
		end
		throwProjectile(projectiles_checked[random_projectile])
		projectile_reroll = false
		if (gamestate.P2.prev.state ~= doing_special_move and gamestate.P2.state == doing_special_move) then -- if p2 finished a special attack -> reroll a special to be played
			projectile_reroll = true
		end
	else
		projectile_reroll = true -- Set to true when you enter the gui
	end
end

local function projectileTraining()
	if REPLAY then return end
	stockProjectilesChecked()
	throwProjectilesLogic()
end
------------------------------------------
------------------------------------------
-- Display the relevant options
------------------------------------------
------------------------------------------

function displayReversalSettings()
	if first_load or (gamestate.patched ~= gamestate.prev.patched) then
		makeReversalSettings(gamestate.patched)
	end
end

function displayProjectileSettings()
	if first_load then
		makeProjectileSettings()
	end
	if characterChanged(gamestate.P2) then
		if #projectiles_checked > 0 then
			for k in pairs(projectiles_checked) do
				projectiles_checked[k] = nil
			end
		end
		projectile_selector = 0
		reloadProjectileSettings()
	end
end

function displayContextualSettings()
	if REPLAY then return end
	displayReversalSettings()
	displayProjectileSettings()
end
---------------------------------------
---------------------------------------
-- Run
---------------------------------------
---------------------------------------
local function updateGamestate()
	-- prev
	gamestate.prev = gamestate.stock_game_vars()
	gamestate.P1.prev = gamestate.stock_player_vars(gamestate.P1)
	gamestate.P2.prev = gamestate.stock_player_vars(gamestate.P2)
	-- curr
	gamestate.read_game_vars()
	gamestate.read_player_vars(gamestate.P1)
	gamestate.read_player_vars(gamestate.P2)
	-- global
	checkFrameskip()
end

local function ST_Training_basic_settings()
	if REPLAY then return end
	neverEnd()
	autoBlock()
	--autoReversal()
	p2DizzyControl()
	techThrowControl()
	-- stageSelect()
end

local function ST_Training_advanced_settings()
	displayMenu()
	new_hud()
	gameSpeed()
	lockCharacters()
	frameskipControl()
	slowdownControl()
	nomusicControl()
	easyChargeControl()
	frameAdvantageDisplay()
	frameTrapDisplay()
	-- tickThrowDisplay()
	crossupDisplay()
	safeJumpDisplay()
	projectileTraining()
	roundStart()
end
local replay_ini = false
local function ST_Training_misc()
	if REPLAY and not replay_ini then initializeSTMenu() loadConfig() replay_ini = true return elseif replay_ini then return end
	-- displayContextualSettings()
	fixPreviousInputDetection(fixed_inputs)
	if first_load then
		-- initializeSTMenu()
		-- loadConfig()
		first_load = false
	end
end

ST_functions = {updateGamestate, ST_Training_misc, ST_Training_basic_settings, ST_Training_advanced_settings, drawMessages}
require("games/ssf2xjr1/addon/frameDataBar")


-- reg_frame = 0
-- local function test()
	-- print("REGISTERREAD : "..rb(0xFF801D))
	-- print("PC : "..string.format("%x", memory.getregister("m68000.pc")))
	-- reg_frame = rb(0xFF801D)
	-- setReversal(gamestate.P1, {id = 0, strength = 0})
-- end

function Run() -- runs every frame
-- update_sf2_hitboxes()
	for i = 1, #ST_functions do
		ST_functions[i]()
	end
end

memory.registerwrite(0xFF801D, Run) -- permet de lancer une fonction chaque frame, même si elle est skipée. Voir comment réorganiser les fonctions