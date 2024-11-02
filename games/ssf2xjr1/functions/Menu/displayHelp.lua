local keys = {"LP","MP","HP","LK","MK","HK"}
local button_func = {"func1","back","func2","func3"}

local help = {"option","navigation"}
local help_selector = 1

local function changeHelp()
	if guiinputs.P1[menu_settings.help.key] and not guiinputs.P1.previousinputs[menu_settings.help.key] then
		help_selector = help_selector + 1
		if help_selector > #help then
			help_selector = 1
		end
	end
end

local function displayOptionDesc()
	local desc = guipages[interactivegui.page][interactivegui.selection].desc
	if desc then
		displayMsg(menu_settings.option_desc.coords.x, menu_settings.option_desc.coords.y, desc, menu_settings.option_desc.colour, menu_settings.option_desc.max_char_per_line)
	end
end

local function displayNavigationHelp()
	local button = guipages[interactivegui.page][interactivegui.selection]
	local navigation_help = "Up/Down : Navigate\t"
	if button.selector then
		navigation_help = navigation_help.."Left/Right : Change Settings\t"
	end
	navigation_help = navigation_help.."HK/HP : Previous or Next Page"
	gui.text(menu_settings.help.coords.x, menu_settings.help.coords.y, navigation_help)
end

local function displayFuncDesc()
	local button = guipages[interactivegui.page][interactivegui.selection]
	local func_desc = ""
	 for i = 1, #button_func do
		if button[button_func[i]] or button_func[i] == "back" then
			for j = 1, #keys do
				if menu_settings.functions[keys[j]] == button_func[i] then
					local desc = ""
					if button_func[i] == "back" then
						if ST_menu.level > 1 then
							desc = "Back"
						end
					elseif button[button_func[i].."_desc"] then
						desc = button[button_func[i].."_desc"]
					end
					if desc ~= "" then
						func_desc = func_desc..keys[j].." : "..desc.."\t"
					end
					break
				end
			end
		end
	end
	gui.text(menu_settings.help.coords.x, menu_settings.help.coords.y + 9, func_desc)
end

function drawButtonHelp(button)
	if interactivegui.selection == button.id then
		for i = 1, #button_func do
			if button[button_func[i]] and menu_settings.button_help[button_func[i]] then
				local settings = menu_settings.button_help[button_func[i]]
				gui.text(settings.coords.x, settings.coords.y(button), returnFuncKey(button_func[i]), settings.colour)
			end
		end
	end
end

function displayHelp()
	changeHelp()
	if help[help_selector] == "option" then
		displayOptionDesc()
	elseif help[help_selector] == "navigation" then
		displayNavigationHelp()
		displayFuncDesc()
	end
end