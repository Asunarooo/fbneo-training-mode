local function returnTruncateMsg(msg, max_char_per_line) -- Returns a table of strings. Each string represents a line.
	local msg_table = {""}
	local line = 1
	if #msg > max_char_per_line then
		for w in string.gmatch(msg, "%a+") do -- iterates through words
			if #msg_table[line] + #w > max_char_per_line then -- if adding the current world would make the string's length superior to max_char
				line = line + 1
				msg_table[line] = ""
			end
			msg_table[line] = msg_table[line]..w.." "
		end
	else
		msg_table[1] = msg
	end
	return msg_table
end

function displayMsg(x, y, _msg, col, _max_char) -- Display a text. If the text is longer than max_char_per_line then automatically do a line break
	local col = _col and _col or "white"
	local max_char = _max_char and _max_char or msg_config.default_max_char
	local msg = returnTruncateMsg(_msg, max_char)
	for i = 1, #msg do
		gui.text(x, y + 8*(i-1), msg[i], col)
	end
end