function determineStrengthValue(_variation, _strength_set)
	local strength = {
		{
			["L"] = 0x00,
			["M"] = 0x01,
			["H"] = 0x02
		},
		{
			["L"] = 0x00,
			["M"] = 0x02,
			["H"] = 0x04
		},
		{
			-- Dhalsim TP
			["B+K"] = 0x00,
			["B+P"] = 0x02,
			["F+P"] = 0x04,
			["F+K"] = 0x06,
			-- Boxer TAP
			["1"] = 0x00,
			["2"] = 0x01,
			["3"] = 0x02,
			["4"] = 0x03,
			["5"] = 0x04,
			["6"] = 0x05,
			["7"] = 0x06,
			["Final"] = 0x07
		}
	}
	if string.find(_variation, "[LMH][PK]") then _variation = string.match(_variation, "[LMH]") end
	if _strength_set == 0 then return 0 else
	return strength[_strength_set][_variation] end
end

function getBoxerThrowDistance(opponent)
	local throw = {}
	if opponent == Dhalsim then
		throw = {{"MP",40},{"HP",30}}
	elseif opponent == Zangief then
		throw = {{"MP",41},{"HP",31}}
	elseif opponent == Guile then
		throw = {{"MP",50},{"HP",40}}
	elseif opponent == Chun or opponent == Cammy or opponent == Fei or opponent == Hawk or opponent == Ken or opponent == Ryu then
		throw = {{"MP",51},{"HP",41}}
	elseif opponent == Claw or opponent == Deejay or opponent == Dictator or opponent == Sagat then
		throw = {{"MP",52},{"HP",42}}
	elseif opponent == Boxer then
		throw = {{"MP",53},{"HP",43}}
	elseif opponent == Blanka then
		throw = {{"MP",63},{"HP",53}}
	elseif opponent == Honda then
		throw = {{"MP",64},{"HP",58}}
	end
	character_specific.boxer.hitboxes.throw = throw
end 

function determineThrowInput(_throw)
	if _throw == "MP" then 
		return "Medium Punch"
	elseif _throw == "HP" then 
		return "Strong Punch"
	elseif _throw == "MK" then 
		return "Medium Kick"
	elseif _throw == "HK" then 
		return "Strong Kick"
	end 
end

function getJumpVersion(_player_obj) -- Returns neutral, back or forward
	local left = isCharacterLeft(_player_obj)
	local coeff = rb(_player_obj.base + 0x11)
	
	if left then
		if coeff == 0x01 then
			return "forward"
		elseif coeff == 0x00 then
			return "backward"
		end
	else
		if coeff == 0x01 then
			return "backward"
		elseif coeff == 0x00 then
			return "forward"
		end
	end
end

function getJumpDuration(_player_obj, _jump_version) -- Returns the total of uncancellable jump frames
	--
	local character = _player_obj.character
	local old = _player_obj.is_old
	local duration = 0
	--
	if _jump_version == "neutral" then
		if character == Claw then
			duration = 42
		elseif character == Blanka or (character == Sagat and old) then
			duration = 45
		elseif character == Hawk or (character == Sagat and not old) then
			duration = 47
		elseif character == Zangief then
			duration = 48
		elseif character == Boxer or (character == Deejay and not old) or character == Fei or (old and (character == Ken or character == Ryu)) then
			duration = 49
		elseif character == Chun or (not old and (character == Ken or character == Ryu)) then
			duration = 50
		elseif character == Honda or (character == Deejay and old) then
			duration = 51
		elseif character == Cammy or character == Dictator then
			duration = 52
		elseif character == Guile then
			duration = 53
		elseif character == Dhalsim then
			duration = 67
		end
	elseif _jump_version == "back" then
		if character == Claw then
			duration = 42
		elseif character == Blanka or character == Hawk then
			duration = 46
		elseif (character == Sagat and old) then
			duration = 47
		elseif old and (character == Ken or character == Ryu) then
			duration = 48
		elseif character == Ken or character == Ryu or character == Sagat or character == Zangief then
			duration = 49
		elseif character == Boxer or (character == Deejay and not old) or character == Fei then
			duration = 50
		elseif character == Chun or character == Honda then
			duration = 51
		elseif character == Cammy or (character == Deejay and old) then
			duration = 52
		elseif character == Dictator or character == Guile then
			duration = 53
		elseif character == Dhalsim then
			duration = 68
		end
	elseif _jump_version == "forward" then
		if character == Claw then
			duration = 41
		elseif character == Blanka or (character == Sagat and old) then
			duration = 44
		elseif character == Fei or character == Hawk or character == Zangief or (character == Deejay and old) or (character == Sagat and not old) then
			duration = 46
		elseif character == Boxer or (character == Deejay and not old) or (old and (character == Ken or character == Ryu)) then
			duration = 48
		elseif not old and (character == Ken or character == Ryu) then
			duration = 49
		elseif character == Cammy or character == Chun or character == Honda then
			duration = 50
		elseif character == Dictator then
			duration = 51
		elseif character == Guile then
			duration = 52
		end
	end

	return duration
end

function getReversalStartup(_player_obj)
	--
	local character = _player_obj.character
	local old = _player_obj.is_old
	local has_super = (_player_obj.special_meter == 48)
	--
	if character == Chun and not old then
		return 2
	elseif character == Sagat then
		return 3
	elseif character == Cammy or character == Deejay or character == Hawk or character == Ryu then
		return 4
	elseif character == Guile or (character == Claw and not old) then
		return 5
	elseif character == Fei or character == Honda or (character == Boxer and has_super) then
		return 6
	elseif character == Dictator and has_super then
		return 9
	elseif character == Boxer and not has_super then
		return 11
	elseif character == Chun and old then
		return 17
	end
end