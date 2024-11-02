---------------------------------------------------------------------
-- Reversal (patch method) by Asunaro
---------------------------------------------------------------------
local reversal_options_checked = {} -- Stocks the relevant values to perform the choosen reversals
local listen_modif = false
local once = false -- Condition for reversal_trigger 2

function stockReversalOptionsChecked()
	-- If the menu has been opened, clean the table
	if interactivegui.enabled and not listen_modif then
		for k in pairs(reversal_options_checked) do
			reversal_options_checked[k] = nil
		end
		patched_autoreversal_selector = 0
		listen_modif = true
	end
	if not interactivegui.enabled and listen_modif then -- If the menu has been closed, stock the options selected
		for i = 1, #reversal_options do
			if reversal_options[i].checked then
				table.insert(reversal_options_checked, reversal_options[i].move)
			end
		end
		if ST_buttons.reversalsettings["Nothing"].checked then
			table.insert(reversal_options_checked, "nothing")
		end
		if ST_buttons.reversalsettings["Custom Sequence"].checked then
			table.insert(reversal_options_checked, "custom_sequence")
		end
		if #reversal_options_checked == 0 then
			patched_autoreversal_selector = 0
		elseif #reversal_options_checked == 1 then
			if ST_buttons.reversalsettings["Nothing"].checked then
				patched_autoreversal_selector = 0
			else
				patched_autoreversal_selector = 1
			end
		elseif #reversal_options_checked > 1 then
			patched_autoreversal_selector = 2
		end
		listen_modif = false
		once = false
	end
end
---------------------------------------------------------------------------------------------
-- Special moves : I'm using a patch which NOP the line clearing +0x169 each frame.
-- If +0x169 is set to 0x01 the character will reversal the special defined in +0x16A
---------------------------------------------------------------------------------------------
local function clearReversal(_player_obj)
	if _player_obj.reversal_flag == 0x01 then
		if _player_obj.character_name == "boxer" then
			wb(_player_obj.addresses.reversal_flag_boxer, 0x00)
		else
			wb(_player_obj.addresses.reversal_flag, 0x00)
		end
	end
end

function setReversal(_player_obj, reversal)
	if _player_obj.reversal_flag == 0x00 then
		if _player_obj.character_name == "boxer" then
			wb(_player_obj.addresses.reversal_flag_boxer, 0x01)
		else
			wb(_player_obj.addresses.reversal_flag, 0x01)
		end
	end
	wb(_player_obj.addresses.reversal_id, reversal.id)
	wb(_player_obj.addresses.reversal_strength, reversal.strength)
	-- just a little fix
	if _player_obj.character_name == "thawk" then
		if not _player_obj.is_old then
			if reversal[1] == 0x00 then -- DP
				wb(0xFF88DE,reversal.strength)
				wb(0xFF88DD,reversal.strength)
			end
		else
			if reversal[1] == 0x00 then
				wb(0xFF88F0,reversal.strength)
				wb(0xFF88F1,reversal.strength)
			end
		end
	end
end
-----------------------------------------------------------------------------------------------
-- Reversal Throws : I'm using a patch which NOP the line writing p2 previous input dection (+0x394)
-- If we write 0x0000 in this address each input will now be autofired
-----------------------------------------------------------------------------------------------
local fixed_inputs = true

local function menuSelection()  -- Just a little fix : without it the cursor in character selection is buggy
	if gamestate.curr_state == 0x00 then -- In the character selection screen
		if gamestate.P2.curr_input ~= 0x0000 then
			ww(gamestate.P2.addresses.prev_input, 0xFFFF)
		end
	end
end

function fixPreviousInputDetection(_fixed_inputs) -- Restores the previous input detection / Disables the autofire
	if REPLAY then return end
	if _fixed_inputs then
		ww(gamestate.P2.addresses.prev_input, gamestate.P2.prev.curr_input)
	end
	menuSelection()
end

local reversal_throw_ready = false
local iswakeup = false

local function reversalThrow(_throw)
	if reversal_trigger_selector == 0 and not gamestate.P2.is_knockdown then -- gamestate.P2.is_knockdown is modified in patchedReversalLogic
		return
	end
	if reversal_trigger_selector == 1 and gamestate.P2.is_knockdown then
		setDirection(2,5)
		return
	end
	if gamestate.P2.state == being_hit and gamestate.P2.prev.state == being_hit then
		local counter = gamestate.P2.hitstun_counter -- We'll set reversal_throw_ready to true when the timing for a reversal is about to come

		if counter >= 0x69-0x03 and counter <= 0x69 then -- Light
			reversal_throw_ready = true
		elseif gamestate.P2.is_knockdown and counter >= 0x7A-0x0A and counter <= 0x7A then -- Knockdown : the range is voluntarily wider because a knockdown can be interrupted by the corner and thus so does the hitstun counter
			reversal_throw_ready = true
		elseif not gamestate.P2.is_knockdown and counter >= 0x7A-0x03 and counter <=0x7A then -- Medium
			reversal_throw_ready = true
		elseif counter >= 0x90-0x03 and counter <= 0x90 then -- Strong
			reversal_throw_ready = true
		elseif gamestate.P2.is_knockdown and counter == 0x6A then -- Red Hadouken
			reversal_throw_ready = true
		else
			reversal_throw_ready = false
		end
	elseif gamestate.P2.state == being_thrown and gamestate.P2.prev.state == being_thrown then
		reversal_throw_ready = true
	else
		reversal_throw_ready = false
	end

	if reversal_throw_ready then
		fixed_inputs = false -- We disable the fix : the game won't update prev_p2inputs anymore
		ww(gamestate.P2.addresses.prev_input, 0x0000) -- We stock 0000 in prev_p2inputs : the game will think that the p2 didn't hold anything in the previous frame. Each input will now be interpreted as a new one, basically we're creating an autofire
		if gamestate.P2.character_name == "blanka" then
			wb(0xFF88EC, 0x00) -- Disables Blanka HP electricity
		end
		if gamestate.P2.character_name == "ehonda" then
			wb(0xFF8916, 0x00) -- Disables Honda MP HHS
			wb(0xFF8918, 0x00) -- 				 HP HHS
			if gamestate.P2.is_old then -- Old Honda
				wb(0xFF88EA, 0x00) -- MP HHS
				wb(0xFF88EC, 0x00) -- HP HHS
			end
		end
		if playerTwoFacingLeft() then
				setDirection(2,"Right", determineThrowInput(_throw))
			else
				setDirection(2,"Left",determineThrowInput(_throw))
			end
		return
	else -- we enable the fix
		fixed_inputs = true
	end
	if gamestate.P2.state == doing_normal_move or gamestate.P2.state == doing_special_move then -- if the p2 attempts a throw we release the buttons
		setDirection(2,5)
	end
end

-------------------
-- Custom Sequence
-------------------
local p2_custom_sequence_ready = false

local function customSequence() -- Would need to be improved
	if gamestate.P2.hitfreeze_counter ~= 0x00 or (gamestate.P2.state == being_thrown and gamestate.P2.prev.state ~= being_thrown) then -- If the character has been thrown or if we detect hitfreeze (here it's more reliable than "gamestate.P2.state == 14 and gamestate.P2.prev.state ~= 14" because this expression can't detect combos)
		p2_custom_sequence_ready = true
		if (gamestate.P2.state == being_thrown) then
			iswakeup = true
		end
	end
	if (gamestate.P2.state == being_hit and gamestate.P2.prev.state == being_hit) then
	local onair = gamestate.P2.air_state
		if onair == 255 then
			iswakeup = true
			recording.playback = false
		end
	end

	if reversal_trigger_selector ~= 0 and (not iswakeup and p2_custom_sequence_ready and gamestate.P2.prev.state ~= standing and gamestate.P2.state ~= standing) then
		local counter = gamestate.P2.hitstun_counter
		--print("gamestate.P2.prev.state : "..gamestate.P2.prev.state)
		--print("curr_p2action : "..gamestate.P2.state)
		--print("counter : 0x"..string.format("%x",counter))
		if not recording.playback then
			if (counter == 0x68 and autoblock_selector == -1) or counter == 0x69 then -- Light
			togglePlayBack(nil, {})
			--print("Reversal on a Light")
			p2_custom_sequence_ready = false
			elseif (counter == 0x79 and autoblock_selector == -1) or counter == 0x7A then -- Medium
			togglePlayBack(nil, {})
			--print("Reversal on a Medium")
			p2_custom_sequence_ready = false
			elseif (counter == 0x8F and autoblock_selector == -1) or counter == 0x90 then -- Strong / Peut-être voir pour le red hado ?
			togglePlayBack(nil, {})
			--print("Reversal on a Strong")
			p2_custom_sequence_ready = false
			end
		end
	elseif reversal_trigger_selector ~= 1 and (iswakeup and (gamestate.P2.prev.state == being_hit and gamestate.P2.state ~= being_hit) or (gamestate.P2.prev.state == being_thrown and gamestate.P2.state ~= being_thrown)) then -- Would need to be more precise
		--print(" Reversal on Wakeup")
		togglePlayBack(nil, {})
		iswakeup = false
	end
	if recording.playback then
		p2_custom_sequence_ready = false
	end
end
-------------------
-- Reversal Logic
-------------------
local reversal_reroll = true -- Determine if a new reversal has to be selected
local current_recording_state = false

local function patchedReversalLogic()
	if ST_buttons.reversalsettings["Custom Sequence"].checked then
		local framesrecorded = #recording[recording.recordingslot]
		if (framesrecorded < 1) then
			gui.text(220,50,"Use the Replay Editor in the")
			gui.text(220,60,"Recording menu (hold coin) to")
			gui.text(220,70,"program the desired reversal action.")
			return
		end
	end
--------------------------
-- Reversal Trigger
--------------------------
	-- Off
	if reversal_trigger_selector == 3 or once then
		clearReversal(gamestate.P2)
		return
	end
	-- Knockdown only
	if gamestate.P2.substate == 0x06 and gamestate.P2.state ~= doing_special_move and gamestate.P2.state ~= doing_normal_move then
		knockdown_reversal = true
	end
	if reversal_trigger_selector == 0 then
		if not knockdown_reversal then
			clearReversal(gamestate.P2)
			return
		else
			iswakeup = true
			p2_custom_sequence_ready = true
		end
	end
	-- Hit only
	if reversal_trigger_selector == 1 then
		if (gamestate.P2.prev.state == being_hit and gamestate.P2.state ~= being_hit) or (gamestate.P2.prev.state == being_thrown and gamestate.P2.state ~= being_thrown) then
			knockdown_reversal = false
			iswakeup = false
		end
		if knockdown_reversal then
			clearReversal(gamestate.P2)
			return
		elseif gamestate.P2.hitfreeze_counter ~= 0x00 then
			iswakeup = false
			p2_custom_sequence_ready = true
		end
	end
------------------------------------
-- Reversal Logic
------------------------------------
	if patched_autoreversal_selector == 1 then -- One option has been checked
		if reversal_options_checked[1].id == "throw" then
			clearReversal(gamestate.P2)
			reversalThrow(reversal_options_checked[1].strength)
		elseif reversal_options_checked[1] == "custom_sequence" then
			clearReversal(gamestate.P2)
			customSequence()
			current_recording_state = recording.playback
		else
			if reversal_reroll or gamestate.P2.reversal_flag == 0x00 or gamestate.P2.reversal_id ~= reversal_options_checked[1] or gamestate.P2.reversal_strength ~= reversal_options_checked[2] then
				setReversal(gamestate.P2, reversal_options_checked[1])
				reversal_reroll = false
			end
		end
		if (gamestate.P2.prev.state ~= doing_special_move and gamestate.P2.state == doing_special_move) or (reversal_options_checked[1].id == "throw" and gamestate.P2.prev.state ~= doing_normal_move and gamestate.P2.state == doing_normal_move) or (reversal_options_checked[1] == "custom_sequence" and current_recording_state == true) then
			if reversal_trigger_selector == 2 then
				once = true
			end
		end

	elseif patched_autoreversal_selector == 2 then -- Multiple options checked
		if reversal_reroll then
			random_reversal = math.random(1,#reversal_options_checked)
		end
		if not recording.playback then
			if reversal_options_checked[random_reversal].id == "throw" then
				clearReversal(gamestate.P2)
				reversalThrow(reversal_options_checked[random_reversal][2])
			elseif reversal_options_checked[random_reversal] == "custom_sequence" then
				clearReversal(gamestate.P2)
				customSequence()
				current_recording_state = recording.playback
			elseif reversal_options_checked[random_reversal] == "nothing" then
				clearReversal(gamestate.P2)
			else
				if reversal_reroll or gamestate.P2.reversal_flag == 0x00 or gamestate.P2.reversal_id ~= reversal_options_checked[random_reversal].id or gamestate.P2.reversal_strength ~= reversal_options_checked[random_reversal].strength then
					setReversal(gamestate.P2, reversal_options_checked[random_reversal])
				end
			end
			reversal_reroll = false
			if (gamestate.P2.prev.state ~= doing_special_move and gamestate.P2.state == doing_special_move) or (reversal_options_checked[random_reversal].id == "throw" and gamestate.P2.prev.state ~= doing_normal_move and gamestate.P2.state == doing_normal_move) or (reversal_options_checked[random_reversal] == "nothing" and gamestate.P2.prev.state == being_hit and gamestate.P2.state ~= being_hit) or (reversal_options_checked[random_reversal] == "custom_sequence" and current_recording_state == true) then
				-- if p2 finished a special attack / if p2 attempted a throw / if p2 has been hit when "don't reversal" is selected
				-- if a playback has been launched -> reroll a special to be played
				reversal_reroll = true
				if reversal_trigger_selector == 2 then
					once = true
				end
			end
		end

	else
		clearReversal(gamestate.P2)
		reversal_reroll = true -- Set to true when you enter the gui
	end
	if (gamestate.P2.prev.state == being_hit and gamestate.P2.state ~= being_hit) or (gamestate.P2.prev.state == being_thrown and gamestate.P2.state ~= being_thrown) then
			knockdown_reversal = false
			iswakeup = false
	end
end

local function patchedAutoReversal()
	clearReversal(gamestate.P1)
	stockReversalOptionsChecked()
	patchedReversalLogic()
end
--------------------------------------------------------
--------------------------------------------------------
-- AutoReversal (Machine learning method) made by pof
--------------------------------------------------------
--------------------------------------------------------
local numframes = 0
local frame_for_reversal = 0
local iswakeup = false
local wakeup_reversal = 35
local counter_for_wakeup_reversal = 0
local frame_for_wakeup_reversal = 35
local framesleft_for_wakeup_reversal = {}
framesleft_for_wakeup_reversal[0] = -1
framesleft_for_wakeup_reversal[1] = -1
local doreversal = false
local reversal_executed = false
local reversal_executed_at = -1
local framesleft = -1
local reversal_guessed = 0

function autoReversal()
	if REPLAY then return end
	-- If the game is patched then use the "Select Reversal" function
	if gamestate.patched then
		patchedAutoReversal()
		return
	end
	-- Non-patched function
	local DEBUG = false
	local selector = contextual_buttons["Auto Reversal"].selector
	if selector == 0 then
		return
	end

	local framesrecorded = #recording[recording.recordingslot]
	if (framesrecorded < 1) then
		gui.text(220,50,"Use the Replay Editor in the")
		gui.text(220,60,"Recording menu (hold coin) to")
		gui.text(220,70,"program the desired reversal action.")
		gui.text(35,80,"To improve auto-reversal select Game -> Load Game -> Apply IPS patches -> Play")
		return
	end
	if (framesrecorded > 8) then
		gui.text(220,50,"The recorded reversal action")
		gui.text(220,60,"is too long. Please record a")
		gui.text(220,70,"new action shorter than 9 frames.")
		return
	end

	local reversal_flag = gamestate.P2.reversal_flag
	local frameanimation = gamestate.P2.hitstun_counter
	local onair = gamestate.P2.air_state
	local prev_framesleft = gamestate.P2.prev.animation_frames_left
	framesleft = gamestate.P2.animation_frames_left

	if (gamestate.P2.state == being_hit and gamestate.P2.prev.state ~= being_hit) or (gamestate.P2.state == being_thrown and gamestate.P2.prev.state ~= being_thrown) then
		numframes = 1
		reversal_executed_at = -1
		reversal_executed = false
		counter_for_wakeup_reversal = 0
		if (gamestate.P2.state == being_thrown) then
			iswakeup = true
		end
	end
	if (gamestate.P2.state == being_hit and gamestate.P2.prev.state == being_hit) or (gamestate.P2.state == being_thrown and gamestate.P2.prev.state == being_thrown) then
		numframes = numframes + 1
		if was_frameskip then
			--if DEBUG then print ("FRAMESKIP @ "..numframes) end
			numframes=numframes+1
			if prev_framesleft - 1 == framesleft and framesleft > 1 then
				framesleft = framesleft - 1
			end
		end
		if onair == 255 then
			if not iswakeup then
				setFrameskip(true)
			end
			iswakeup = true
		end
		if (onair == 0) then
			if was_frameskip then
				counter_for_wakeup_reversal = counter_for_wakeup_reversal + 2
			else
				counter_for_wakeup_reversal = counter_for_wakeup_reversal + 1
			end
			wakeup_reversal = counter_for_wakeup_reversal - framesrecorded - 1
		else
			counter_for_wakeup_reversal = 0
		end

		if iswakeup and reversal_executed_at > 0 and reversal_executed_at + framesrecorded + 1 < numframes and framesrecorded < 5 then
			if DEBUG then print ("!!! Previous reversal attempt failed, trying again...") end
			framesleft_for_wakeup_reversal[0] = framesrecorded + 2
			framesleft_for_wakeup_reversal[1] = framesrecorded + 1
			frame_for_wakeup_reversal = counter_for_wakeup_reversal
			reversal_executed = false
			reversal_executed_at = -1
		end

		if iswakeup and reversal_guessed==1 and reversal_flag==0 then
			framesleft_for_wakeup_reversal[2]=framesleft
			reversal_guessed=2
		end


		if iswakeup and reversal_guessed==2 and reversal_flag==1 and framesleft_for_wakeup_reversal[1] ~= framesleft_for_wakeup_reversal[2] then
			if DEBUG then print("Adjusting wrong reversal guess from: "..framesleft_for_wakeup_reversal[0].."/"..framesleft_for_wakeup_reversal[1].." to "..framesleft_for_wakeup_reversal[1].."/"..framesleft_for_wakeup_reversal[2]) end
			framesleft_for_wakeup_reversal[0] = framesleft_for_wakeup_reversal[1]
			framesleft_for_wakeup_reversal[1] = framesleft_for_wakeup_reversal[2]
			reversal_guessed=0
		end
	end

	if not iswakeup and (gamestate.P2.state ~= being_hit and gamestate.P2.prev.state == being_hit) then
		setFrameskip(true)
		if (reversal_flag==1) and (gamestate.P2.state == doing_special_move) then
			if (DEBUG) then print("=> SUCCESSFUL GROUND REVERSAL AT FRAME: [" .. frame_for_reversal .. "] / " ..numframes) end
		else
			if (DEBUG) then print("=> MISSED GROUND REVERSAL AT FRAME: [" .. frame_for_reversal .. "] / " ..numframes) end
		end
	elseif iswakeup and ( (gamestate.P2.state ~= being_hit and gamestate.P2.prev.state == being_hit) or (gamestate.P2.state ~= being_thrown and gamestate.P2.prev.state == being_thrown) ) then
		setFrameskip(true)
		if (reversal_flag==1) and (gamestate.P2.state == doing_special_move) then
			if (DEBUG) then print("=> SUCCESSFUL WAKEUP REVERSAL PERFORMED AT FRAME: [" .. frame_for_wakeup_reversal .. " / " ..counter_for_wakeup_reversal.. "] | [" .. frame_for_reversal .. " / " ..numframes.."] | rf="..reversal_flag.." framesleft="..framesleft) end
		elseif (counter_for_wakeup_reversal - frame_for_wakeup_reversal == framesrecorded) then
			if (DEBUG) then print("=> MISSED FRAME-PERFECT WAKEUP REVERSAL PERFORMED AT FRAME: [" .. frame_for_wakeup_reversal .. " / " ..counter_for_wakeup_reversal.. "] | [" .. frame_for_reversal .. " / " ..numframes.."] | rf="..reversal_flag.." framesleft="..framesleft) end
			wakeup_reversal = wakeup_reversal + 1
			framesleft_for_wakeup_reversal[0] = -1
			framesleft_for_wakeup_reversal[1] = -1
		elseif (counter_for_wakeup_reversal - frame_for_wakeup_reversal < framesrecorded) then
			if (DEBUG) then print("=> MISSED WAKEUP REVERSAL PERFORMED TOO LATE AT FRAME: [" .. frame_for_wakeup_reversal .. " / " ..counter_for_wakeup_reversal.. "] | [" .. frame_for_reversal .. " / " ..numframes.."] | rf="..reversal_flag.." framesleft="..framesleft) end
			framesleft_for_wakeup_reversal[0] = -1
			framesleft_for_wakeup_reversal[1] = -1
		elseif (counter_for_wakeup_reversal - frame_for_wakeup_reversal > framesrecorded) then
			if (DEBUG) then print("=> MISSED WAKEUP REVERSAL PERFORMED TOO EARLY AT FRAME: [" .. frame_for_wakeup_reversal .. " / " ..counter_for_wakeup_reversal.. "] | [" .. frame_for_reversal .. " / " ..numframes.."] | rf="..reversal_flag.." framesleft="..framesleft) end
			framesleft_for_wakeup_reversal[0] = -1
			framesleft_for_wakeup_reversal[1] = -1
		end
		frame_for_wakeup_reversal = wakeup_reversal
		iswakeup = false
		if (DEBUG) then
			print("=> FRAME FOR NEXT WAKEUP REVERSAL: ["..wakeup_reversal.." / "..counter_for_wakeup_reversal.."] @ framesleft == " .. framesleft_for_wakeup_reversal[0].."/"..framesleft_for_wakeup_reversal[1])
			print(" ")
		end
	end

	if not iswakeup and (gamestate.P2.state == being_hit) then
		if (frameanimation == 105 - framesrecorded) or (frameanimation == 104 - framesrecorded) or (frameanimation == 122 - framesrecorded) or (frameanimation == 121 - framesrecorded) or (frameanimation == 144 - framesrecorded) or (frameanimation == 143 - framesrecorded) then
			if not recording.playback then
				setFrameskip(false)
				togglePlayBack(nil, {})
				frame_for_reversal = numframes
				if (DEBUG) then print("GROUND REVERSAL! numframes=[" .. numframes .. "]") end
			end
		end
	end
	if iswakeup and (gamestate.P2.state == being_hit or gamestate.P2.state == being_thrown) and not reversal_executed then

		if counter_for_wakeup_reversal == frame_for_wakeup_reversal-4 or (counter_for_wakeup_reversal == frame_for_wakeup_reversal-3 and was_frameskip) then
			setFrameskip(false)
		end

		if (framesleft_for_wakeup_reversal[0] == -1 and counter_for_wakeup_reversal == frame_for_wakeup_reversal) then
			if (DEBUG) then print (">>> numframes="..numframes.." - performing reversal wakeup: cfwr["..counter_for_wakeup_reversal.."]==ffwr["..frame_for_wakeup_reversal.."]") end
			doreversal = true
		end
		if (framesleft_for_wakeup_reversal[0] ~= -1 and ( prev_framesleft ~= framesleft_for_wakeup_reversal[0] and framesleft == framesleft_for_wakeup_reversal[0]) and counter_for_wakeup_reversal > frame_for_wakeup_reversal - 1) then
			if (DEBUG) then print (">>> numframes="..numframes.." - performing EARLY reversal wakeup: prev_framesleft("..prev_framesleft..")!=framesleft_fwr[0]("..framesleft_for_wakeup_reversal[0]..") AND framesleft("..framesleft..")==framesleft_fwr[0]("..framesleft_for_wakeup_reversal[0]..")") end
			doreversal = true
		end
		if (framesleft_for_wakeup_reversal[0] ~= -1 and ( prev_framesleft == framesleft_for_wakeup_reversal[0] and framesleft == framesleft_for_wakeup_reversal[1]) and counter_for_wakeup_reversal > frame_for_wakeup_reversal - 2) then
			if (DEBUG) then print (">>> numframes="..numframes.." - performing LATE reversal wakeup: prev_framesleft("..prev_framesleft..")==framesleft_fwr[0]("..framesleft_for_wakeup_reversal[0]..") AND framesleft("..framesleft..")==framesleft_fwr[1]("..framesleft_for_wakeup_reversal[1]..")") end
			doreversal = true
		end

		local p2character = isChargeCharacter(gamestate.P2)

		if p2charge == false and (framesleft_for_wakeup_reversal[0] ~= -1 and ( framesleft == framesrecorded+2 or framesleft == framesrecorded+1) and counter_for_wakeup_reversal >= frame_for_wakeup_reversal) then
			if (DEBUG) then print (">>> numframes="..numframes.." - performing DESPERATE reversal wakeup: framesleft("..framesleft..")==framesrecorded("..framesrecorded..")+1or+2 AND cfwr("..counter_for_wakeup_reversal..")>="..frame_for_wakeup_reversal) end
			doreversal = true
		end
		if p2charge == false and counter_for_wakeup_reversal > 30 and framesrecorded < 5 and not doreversal and not recording.playback and (framesleft_for_wakeup_reversal[0] ~= -1 and ( framesleft == framesrecorded+2 or framesleft == framesrecorded+1) and counter_for_wakeup_reversal <= frame_for_wakeup_reversal) then
			if (DEBUG) then print (">>> numframes="..numframes.." - performing EARLY BLIND reversal wakeup: framesleft("..framesleft..")==framesrecorded("..framesrecorded..")+1or+2 AND cfwr("..counter_for_wakeup_reversal..")<="..frame_for_wakeup_reversal) end
			setFrameskip(false)
			togglePlayBack(nil, {})
		end

		if doreversal and not recording.playback then
			setFrameskip(false)
			togglePlayBack(nil, {})
			frame_for_reversal = numframes
			framesleft = gamestate.P2.animation_frames_left
			if framesleft == framesrecorded + 1 then
				framesleft_for_wakeup_reversal[0] = prev_framesleft
				framesleft_for_wakeup_reversal[1] = framesleft
				if (DEBUG) then print ("PERFECT 1 flfwr="..framesleft_for_wakeup_reversal[0].."/"..framesleft_for_wakeup_reversal[1]) end
				reversal_guessed=0
			elseif framesleft > framesrecorded + 1 then
				framesleft_for_wakeup_reversal[0] = framesrecorded + 2
				framesleft_for_wakeup_reversal[1] = framesrecorded + 1
				if (DEBUG) then print ("PERFECT 2 flfwr="..framesleft_for_wakeup_reversal[0].."/"..framesleft_for_wakeup_reversal[1]) end
				reversal_guessed=0
			elseif framesleft_for_wakeup_reversal[0] == -1 then
				framesleft_for_wakeup_reversal[0] = prev_framesleft
				framesleft_for_wakeup_reversal[1] = framesleft
				if (DEBUG) then print ("GUESSED flfwr="..framesleft_for_wakeup_reversal[0].."/"..framesleft_for_wakeup_reversal[1]) end
				reversal_guessed=1
			end
			if (DEBUG) then print("WAKEUP REVERSAL! cfwr="..counter_for_wakeup_reversal.." frame_for_wakeup_reversal=[" .. frame_for_wakeup_reversal .. "] numframes="..numframes.." framesleft="..framesleft) end
			doreversal = false
			reversal_executed = true
			reversal_executed_at = numframes
		end
	end
end