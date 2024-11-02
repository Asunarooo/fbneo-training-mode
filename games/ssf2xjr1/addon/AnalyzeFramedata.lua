local function analyzeFramedata(character)
	local movelist = character_specific[character].move_details
	local file_address = "games/ssf2xjr1/addon/resources/analysis/"
	local output = io.open(file_address..character..".lua", "a+")
	for k in pairs(movelist) do
		local table_by_startup = {}
		local startup_length = 0
		if movelist[k].startup then
			for anim = 1, #movelist[k].startup do
				startup_length = startup_length + movelist[k].startup[anim].duration
			end
			if not table_by_startup["\""..startup_length.."\""] then
				table_by_startup["\""..startup_length.."\""] = {}
			else
				table.insert(table_by_startup["\""..startup_length.."\""], k)
			end
			output:write("\n\n\t\t"..k.."\n\nStartup : "..startup_length)
		end
	end
	print(table_by_startup)
end