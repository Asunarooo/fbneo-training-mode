function loadConfig()
	-- create a custom config for training mode
	local config_file = "games/ssf2xjr1/config/customconfig.lua"
	if not fexists(config_file) then
		local file = io.open(config_file, "w")
		file:write("customconfig = {\n")
		for k in pairs(ST_buttons) do
			file:write("\t"..k.." = {\n")
			for b in pairs(ST_buttons[k]) do
				local button = ST_buttons[k][b]
				if not button.link then
					local default_value = button.checked and "false" or 0
					local values = ""
					if button.options then
						if type(button.options) == "table" then
							for o = 1, #button.options do
								values = values.."[".. o-1 .."] = "..button.options[o]
								if o ~= #button.options then values = values.." / " end
							end
						end
					end
					file:write("\t\t[\""..b.."\"] = "..default_value..",".." --"..values.."\n")
				end
			end
			file:write("\t},\n")
		end
		file:write("}")
		file:close()
	end
	-- create a custom config file for replay mode
	local replay_options = {
		basicsettings = {
			"Toggle ST HUD", 
		},
		advancedsettings = {
			"No Music", "Frame Advantage", "Frame Trap", "Crossup", "Safe Jump", "Tick Throw"
		},
	}
	local replay_config_file = "games/ssf2xjr1/config/customconfig_replay.lua"
	if not fexists(replay_config_file) then
		local file = io.open(replay_config_file, "w")
		file:write("customconfig = {\n")
		for k in pairs(replay_options) do
			file:write("\t"..k.." = {\n")
			for i = 1, #replay_options[k] do
				file:write("\t\t[\""..replay_options[k][i].."\"] = 0,\n")	
			end
			file:write("\t},")
		end
		file:write("}")
		file:close()
	end
	-- Load the correct config
	if REPLAY then dofile(replay_config_file) else dofile(config_file) end
	for k in pairs(customconfig) do
		for b, v in pairs(customconfig[k]) do
			ST_buttons[k][b].selector = v
		end
	end
end