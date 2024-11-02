-- Keys
local keys = {"back","down","up","forward","LP","MP","HP","LK","MK","HK"}
local keys_desc = {"L","D","U","R","LP","MP","HP","LK","MK","HK"}
-- Column
local column = {}
local column_length = 13
-- X
local grid_x1 = 210
local grid_x2 = grid_x1 + column_length * #keys
-- Y
local grid_y1, grid_y2 = 10, 250
local grid_length = grid_y2 - grid_y1
-- Sections
local section_nb = grid_length/2 -- 2px = 1 frame
local section_length = grid_length/section_nb

for i = 1, #keys_desc do
	column[keys_desc[i]] = {
		x1 = grid_x1 + column_length * (i - 1),
		y1 = grid_y1,
		x2 = grid_x1 + column_length * i,
		y2 = grid_y2,
		key_desc = keys_desc[i],
		key_desc_color = "white",
		color = "white",
		fill = 0,
	}
end

local function keyToColumn(key)
	local column = ""
	if key == "back" then
		if playerOneFacingLeft() then
			column = "R"
		else
			column = "L"
		end
	elseif key == "forward" then
		if playerOneFacingLeft() then
			column = "L"
		else
			column = "R"
		end
	elseif key == "down" then
		column = "D"
	elseif key == "up" then
		column = "U"
	else
		column = key
	end
	return column
end


local combo1 = {
	ini = {
		{key = {"down"}, frame = {}, state = "press"},
	},
	main = {
		{key = {"down","forward"}, frame = {1,8}, state = "press"},
		{key = {"forward"}, frame = {1,8}, state = "press"},
		{key = {"LP"}, frame = {1,8}, state = "press"},
	}
}
for i = 1, #combo1.main do
	if i == 1 then
		combo1.main[i].curr_pos = {combo1.main[i].frame[1], combo1.main[i].frame[2]}
	else
		combo1.main[i].curr_pos = {combo1.main[i-1].frame[1]+combo1.main[i].frame[1], combo1.main[i].frame[1]combo1.main[i-1].frame[2]}
	end
end

local play_combo = false
local frame_count = 0

local curr_keys_to_be_pressed = {}
for i = 1, #keys do
	curr_keys_to_be_pressed[keys[i]] = false
end

local function streetStreetRevolution()
	-- Scrolling the inputs
	if not play_combo then
		play_combo = true
		for k in pairs(combo1.ini) do
			column[keyToColumn(k)].key_desc_color = "yellow"
			if isPressed(gamestate.P1, k) then
				-- column[keyToColumn(k)].key_desc_color = "green"
			else
				column[keyToColumn(k)].key_desc_color = "yellow"
				play_combo = false
			end
		end
	else
		if gamestate.frame_number ~= gamestate.prev.frame_number then
			if not gamestate.P1.in_hitfreeze then
				frame_count = countFrames(frame_count)
			end
		end
	end
	-- Drawing the grid
	for k in pairs(column) do
		gui.box(column[k].x1, column[k].y1, column[k].x2, column[k].y2, column[k].fill, column[k].color)
		gui.text(column[k].x1 + 6 - #column[k].key_desc, column[k].y1 - 10, column[k].key_desc, column[k].key_desc_color)
	end
	for i = 1 #combo1.main do
		if combo1.main[i].frame[2] >= 0 then
			combo1.main[i].curr_pos[i] = combo1.main[k].frame[i] - frame_count
		end
		for _k in pairs(column) do
			if keyToColumn(k) == _k then
				local x1, x2 = column[_k].x1 + 1, column[_k].x2 - 1
				local y1, y2 = column[_k].y1 + (combo1.main[k].curr_pos[1] * section_length), column[_k].y1 + (combo1.main[k].curr_pos[2] * section_length)
				gui.box(x1, y1, x2, y2, "red","red")
				if combo1.main[k].curr_pos[1] <= 0 and combo1.main[k].curr_pos[2] >= 0 then
					column[_k].key_desc_color = "yellow"
					curr_keys_to_be_pressed[k] = true
				else
					column[_k].key_desc_color = "white"
					curr_keys_to_be_pressed[k] = false
				end
			end
		end
	end
	-- Checking the inputs
	for k in pairs(curr_keys_to_be_pressed) do
		if curr_keys_to_be_pressed[k] then
			if isPressed(gamestate.P1, k) then
				print("Nice !")
			end
		end
	end
end



table.insert(ST_functions, streetStreetRevolution)