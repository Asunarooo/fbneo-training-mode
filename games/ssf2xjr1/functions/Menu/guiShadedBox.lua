---------------------------------------------------------------
-- Creating a box with shadings (see function guiShadedBox)
---------------------------------------------------------------
local col_order = {"red","green","blue","opacity"} -- each colour is described by 4 bytes : RR/GG/BB + opacity
local correct_val = "%x%x%x%x%x%x%x%x"

local function formatColour(hex_colour) --split the different values of a hex colour in order to manage them individually 
	local hex_colour_str = string.format("%x",hex_colour)
	-- If not enough digits then we insert 0 at the left
	if #hex_colour_str < 8 then
		for d = 8 - #hex_colour_str, 8 do
			hex_colour_str = "0"..hex_colour_str
		end
	end
	local col_val = {
		hex = {},
		decimal = {}
	}
	if hex_colour_str:find(correct_val)then
		-- We split hex_colour_str : RR/GG/BB/OP
		local byte = {}
		for b in hex_colour_str:gmatch"(%x%x)" do
			table.insert(byte,tonumber(b,16))
		end
		-- Each value is stocked under the correct key : col_val["red"] = RR, col_val["green"] = GG etc.
		for c = 1, #col_order do
			col_val.decimal[col_order[c]] = byte[c]
			local hex_value = string.format("%x", col_val.decimal[col_order[c]])
			if #hex_value == 1 then hex_value = "0"..hex_value end
			col_val.hex[col_order[c]] = hex_value
		end
	end
	return col_val
end

local function getColourIncrement(curr_hex_colour, goal_hex_colour, distance)
	local col_val = {
		curr = formatColour(curr_hex_colour),
		goal = formatColour(goal_hex_colour)
	}
	local increment = {}
		-- Calculating the increment
		local increment = {}
		for c = 1, #col_order do
			increment[col_order[c]] = (col_val.goal.decimal[col_order[c]]-col_val.curr.decimal[col_order[c]])/distance
		end
		return increment
end

local function incrementColour(colour_table, increment)
	local new_colour = "0x"
	for c = 1, #col_order do
		local new_val = colour_table.decimal[col_order[c]] + increment[col_order[c]]
		colour_table.decimal[col_order[c]] = new_val
		local byte_str = colour_table.hex[col_order[c]]
		if math.floor(new_val) > tonumber(colour_table.hex[col_order[c]],16) then
			byte_str = string.format("%x",math.floor(new_val))
			if #byte_str == 1 then byte_str = "0"..byte_str end
			colour_table.hex[col_order[c]] = byte_str
		end
		new_colour = new_colour..colour_table.hex[col_order[c]]
	end
	colour_table.value = new_colour
	return colour_table
end

local function guiSquare(x1, y1, x2, y2, outline_colour)
	gui.line(x1,y1,x2,y1, outline_colour)
	gui.line(x1,y2,x2,y2, outline_colour)
	gui.line(x1,y1,x1,y2, outline_colour)
	gui.line(x2,y1,x2,y2, outline_colour)
end

function guiShadedBox(x1, y1, x2, y2, first_colour, last_colour, outline_colour, _direction, core)
	local direction = (_direction == "vertical" or _direction == "horizontal") and _direction or "vertical"
	local mid_axis = 0
	-- the more the up / down we are, the more we tend toward "last_colour"
	if direction == "vertical" then
		mid_axis = y1 + (y2 - y1)/2
		radius = y2 - mid_axis
	 -- the more the left / right we are, the more we tend toward "last_colour"
	elseif direction == "horizontal" then
		mid_axis = x1 + (x2 - x1)/2
		radius = x2 - mid_axis
	end
	
	local spectrum = {
		start = core and mid_axis + core/2 or mid_axis,
		finish = mid_axis + radius
	}
	
	if core then
		if direction == "vertical" then
			gui.box(x1, mid_axis - core/2, x2, mid_axis + core/2, first_colour)
		elseif direction == "horizontal" then
			gui.box(mid_axis - core/2, y1, mid_axis + core/2, y2, first_colour)
		end
	end
	
	local curr_colour = formatColour(first_colour)
	
	local increment = getColourIncrement(first_colour, last_colour, (spectrum.finish - spectrum.start))
	
	local start = core and core/2 or 0
	
	for i = start, radius do
		curr_colour = incrementColour(curr_colour, increment)
		if direction == "vertical" then
			gui.box(x1, mid_axis + i, x2, mid_axis + i, tonumber(curr_colour.value))
			gui.box(x1, mid_axis - i, x2, mid_axis - i, tonumber(curr_colour.value))
		elseif direction == "horizontal" then
			gui.box(mid_axis + i, y1, mid_axis + i, y2, tonumber(curr_colour.value))
			gui.box(mid_axis - i, y1, mid_axis - i, y2, tonumber(curr_colour.value))
		end
	end
	
	if outline_colour then
		guiSquare(x1, y1, x2, y2, outline_colour)
	end
end