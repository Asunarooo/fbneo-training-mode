local player_keys = {
	"Up",
	"Down",
	"Left",
	"Right",
	"Weak Punch",
	"Medium Punch",
	"Strong Punch",
	"Weak Kick",
	"Medium Kick",
	"Strong Kick",
}

local player_keys_extra = {
	"Start",
	"Coin",
}

local sequence_to_key_mapping = {
	up = "Up",
	down = "Down",
	LP = "Weak Punch",
	MP = "Medium Punch",
	HP = "Strong Punch",
	LK = "Weak Kick",
	MK = "Medium Kick",
	HK = "Strong Kick",
}

key_to_sequence_mapping = {}
for k, v in pairs(sequence_to_key_mapping) do
	key_to_sequence_mapping[v] = k
end

function sequence_input_to_key(_key, _flip_input)
	if _key == "forward" then
		if _flip_input then
			return "Right"
		else
			return "Left"
		end
	elseif _key == "back" then
		if _flip_input then
			return "Left"
		else
			return "Right"
		end
	else
		return sequence_to_key_mapping[_key]
	end
end

function clearInputSet(player)
	inputs.properties.enableinputset = true 
	if player == 1 then
		for i = 1, #player_keys do
			inputs.setinputs["P1 "..player_keys[i]] = false
		end
	elseif player == 2 then
		for i = 1, #player_keys do
			--print(player_keys[i])
			inputs.setinputs["P2 "..player_keys[i]] = false
		end
	end
	setInputs()
end 

function modifyInputSet(_player_obj, ...)
	inputs.properties.enableinputset = true 
	local dir, button1, button2, button3, button4, button5, button6 = ...
	local dir1, dir2 = nil
	local buttons = {button1, button2, button3, button4, button5, button6}
	local direction_set = {{"Down", "Left"}, {"Down"}, {"Down", "Right"}, {"Left"}, {}, {"Right"}, {"Up", "Left"}, {"Up"}, {"Up", "Right"}} -- numpad
	local button_set = {{"Weak Punch","LP"}, {"Medium Punch","MP"}, {"Strong Punch","HP"}, {"Weak Kick","LK"}, {"Medium Kick","MK"}, {"Strong Kick","HK"}}
	
	if type(dir) == "number" then
		if direction_set[dir][2] ~= nil then
			dir2 = direction_set[dir][2]
		end
		dir1 = direction_set[dir][1]
	elseif type(dir) == "table" then
		dir1 = dir[1]
		if dir[2] then dir2 = dir[2] end
	end

	for i = 1, #buttons do
		if type(buttons[i]) == "number" then
			buttons[i] = button_set[buttons[i]][1]
		elseif type(buttons[i]) == "string" then
			for j = 1, #button_set do
				if buttons[i] == button_set[j][2] then
					buttons[i] = button_set[j][1]
				end
			end
		end
	end

	if dir1 then inputs.setinputs[_player_obj.prefix.." "..dir1] = true end
	if dir2 then inputs.setinputs[_player_obj.prefix.." "..dir2] = true end
	for i = 1, #buttons do
		if buttons[i] then
			inputs.setinputs[_player_obj.prefix.." "..buttons[i]] = true
		end
	end
	
	setInputs()
end

function do_special_move(_player_obj, _special, _variation, easy_special_status)
	local dir1 = nil -- numpad neutral
	local dir2 = nil
	local dir = {}
	local button1 = ""
	local button2 = ""
	local button3 = ""
	
  -- Toggle easy special
	if easy_special_status == true then
		for i, byte in pairs(_special.memory_map) do
			wb(_player_obj.base + byte[1], byte[2])
		end
	end

  -- Cancel all input
	clearInputSet(_player_obj.id)

	if #_special.input ~= 1 then -- If not PPP or KKK then
		for i, _stick in pairs(_special.input[#_special.input]) do
			if i == 1 then
				dir1 = sequence_input_to_key(_stick, _player_obj.flip_input)
			elseif i == 2 then
				dir2 = sequence_input_to_key(_stick, _player_obj.flip_input)
			end
		end
		dir = {dir1, dir2}
		for i, _button in pairs(_special.input_variations[_variation]) do
			if i == 1 then
				button1 = sequence_input_to_key(_button, _player_obj.flip_input)
			elseif i == 2 then
				button2 = sequence_input_to_key(_button, _player_obj.flip_input)
			elseif i == 3 then
				button3 = sequence_input_to_key(_button, _player_obj.flip_input)
			end
		end
	else
		for i, _button in pairs(_special.input[1]) do
			if i == 1 then
				button1 = sequence_input_to_key(_button, _player_obj.flip_input)
			elseif i == 2 then
				button2 = sequence_input_to_key(_button, _player_obj.flip_input)
			elseif i == 3 then
				button3 = sequence_input_to_key(_button, _player_obj.flip_input)
			end
		end
	end
	modifyInputSet(_player_obj, dir, button1, button2, button3)
end