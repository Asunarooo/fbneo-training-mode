---------------------------------------------------------
-- Reading the move currently performed by a character
---------------------------------------------------------
move_part = {
	{name = "startup", prefix = "S"},
	{name = "active", prefix = "A"},
	{name = "recover", prefix = "R"}
}

function isJump(_move_name) -- Return true if the move is a jump
	if _move_name:find("JN") or _move_name:find("J ") then
		return true
	else
		return false
	end
end

local function moveDisambiguition(_player_obj) -- if two or more specials share the same anim, help to choose the correct move
	if _player_obj.character_nale == "ryu" then
		local ambig = {"Hurricane Kick"}
		for i = 1, #ambig do
			if string.find(_player_obj.move, ambig[i]) then
				print(_player_obj.reversal_strength)
				if _player_obj.reversal_strength == 0 then
					if string.find(_player_obj.move, " .P") then
						_player_obj.move = string.gsub(_player_obj.move, " .P"," LP")
					elseif string.find(_player_obj.move, " .K") then
						_player_obj.move = string.gsub(_player_obj.move, " .K"," LK")
					end
				elseif _player_obj.reversal_strength == 2 then
					if string.find(_player_obj.move, " .P") then
						_player_obj.move = string.gsub(_player_obj.move, " .P"," MP")
					elseif string.find(_player_obj.move, " .K") then
						_player_obj.move = string.gsub(_player_obj.move, " .K"," MK")
					end
				else
					if string.find(_player_obj.move, " .P") then
						_player_obj.move = string.gsub(_player_obj.move, " .P"," HP")
					elseif string.find(_player_obj.move, " .K") then
						_player_obj.move = string.gsub(_player_obj.move, " .K"," HK")
					end
				end
			end
		end
	end
end

function updateCurrMove(_player_obj) -- stock in _player_obj.move the name of the move performed
	local DEBUG = true
	if _player_obj.is_attacking then
		local movelist = character_specific[_player_obj.character_name].move_details
		for k in pairs(movelist) do
			local move = movelist[k]
			local key_anim = {first = nil, last = nil}
			for i = 1, #move_part do
				if move[move_part[i].name] then
					if not key_anim.first then
						key_anim.first = move[move_part[i].name][1].animation
					end
					key_anim.last = move[move_part[i].name][#move[move_part[i].name]].animation
				end
			end
			if key_anim.first and key_anim.last then
				if _player_obj.animation_id >= key_anim.first and _player_obj.animation_id <= key_anim.last then
					_player_obj.move = k
					if isJump(k) then
						local _jump_version = getJumpVersion(_player_obj)
						if _jump_version == "backward" then
							_player_obj.move = _player_obj.move.." (back)"
						elseif _jump_version == "forward" then
							_player_obj.move = _player_obj.move.." (forward)"
						end
					end
					moveDisambiguition(_player_obj)
					if DEBUG then
						if _player_obj.move ~= _player_obj.prev.move then
							print("0x"..string.format("%x", _player_obj.animation_id))
							print(_player_obj.move)
						end
					end
					return
				end
			end
		end
	end
end

function readMove(_player_obj, _move_name) -- Returns true if _player_obj is currently performing _move_name
	local move = character_specific[_player_obj.character_name].move_details[_move_name]
	local key_anim = {first = nil, last = nil}
	for i = 1, #move_part do
		if move[move_part[i].name] then
			if not key_anim.first then
				key_anim.first = move[move_part[i].name][1].animation
			end
			key_anim.last = move[move_part[i].name][#move[move_part[i].name]].animation
		elseif i == #move_part and not key_anim.first and not key_anim.last then
			key_anim.first = move[1].animation
			key_anim.last = move[#move].animation
		end
	end
	if _player_obj.animation_id >= key_anim.first and _player_obj.animation_id <= key_anim.last then
		return true
	else
		return false
	end
end

function readAnim(_player_obj, _move_name, _move_part, _anim) -- Returns true if _player_obj is currently in the animation described in argument
	if _player_obj.animation_id == character_specific[_player_obj.character_name].move_details[_move_name][_move_part][_anim].animation then
		return true
	else
		return false
	end
end