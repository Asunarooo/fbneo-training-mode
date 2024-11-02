local function drawMenuWindow()
	local settings = menu_settings.window
	guiShadedBox(settings.coords.boxx, settings.coords.boxy, settings.coords.boxx2, settings.coords.boxy2, settings.colours[ST_menu.state].first, settings.colours[ST_menu.state].last, settings.colours[ST_menu.state].outline, "vertical", settings.colours[ST_menu.state].core)
end

local function drawSelection(button)
	local settings = menu_settings.selection
	if button.available then
		guiShadedBox(settings.coords.x1, settings.coords.y1(button), settings.coords.x2, settings.coords.y2(button), settings.colours.selected.first, settings.colours.selected.last, settings.colours.selected.outline, "horizontal", settings.colours.selected.core)
	end
end

local function drawButtonBorder(button)
	local settings = menu_settings.selection
	if button.available then
		guiShadedBox(settings.coords.x1, settings.coords.y1(button), settings.coords.x2, settings.coords.y2(button), settings.colours.not_selected.first, settings.colours.not_selected.last, settings.colours.not_selected.outline, "horizontal", settings.colours.not_selected.core)
	end
end

function drawButton(button)
	if interactivegui.selection == button.id then
		drawSelection(button)
	elseif button.draw_borders then
		drawButtonBorder(button)
	end
end

function drawButtonDisplayedValues(button)
	if (not button.select_to_show) or (button.select_to_show and interactivegui.selection == button.id) then
		if button.display1 then
			gui.text(menu_settings.display1.coords.x(button), menu_settings.display1.coords.y(button), button.display1(), button.textcolour) 
		end
		if button.display2 then
			gui.text(menu_settings.display2.coords.x(button), menu_settings.display2.coords.y(button), button.display2(), button.textcolour) 
		end
	end
end
-------------------------------------
-- Selector Button
-------------------------------------
function drawSelectorButtonOption(button)
	local settings = menu_settings.buttons.selector_button
	-- Displaying the arrows
	local arrows_x1, arrows_x2 = settings.arrows.coords.x1, settings.arrows.coords.x2
	local arrows_y = settings.arrows.coords.y(button)
	local arrows_center = arrows_x1 + (arrows_x2 - arrows_x1)/2 -- center of the space between the arrows
	gui.text(arrows_x1, arrows_y, "<", button.textcolour)
	gui.text(arrows_x2, arrows_y, ">", button.textcolour)
	-- Displaying the current option
	local is_table = type(button.options) == "table" and true or false -- options can be a table of strings or an integer
	local current_option = is_table and button.options[button.selector + 1] or button.selector + 1
	local name_size = is_table and #current_option or #tostring(current_option)
	local option_colour = nil
	if is_table and button.selector > 0 then -- Display the "set" colour if the option is no longer the default one. Don't do it for numbers
		if button.available then
			if not button.in_popup then
				option_colour = settings.option.colours.set[ST_menu.state].available
			else
				option_colour = settings.option.colours.set.active.available -- If in popup, should always be active
			end
		else
			option_colour = settings.option.colours.set[ST_menu.state].not_available
		end
	else
		option_colour = button.textcolour
	end
	gui.text(arrows_center - name_size*2, arrows_y, current_option, option_colour)
end
-------------------------------------
-- Checkbox Button
-------------------------------------
function drawCheckButtonCheckbox(button)
	local settings = menu_settings.buttons.check_button
	if interactivegui.selection == button.id then
		gui.text(menu_settings.selection.coords.x1 + 5, settings.checkbox.coords.y1 + button.y + 1, "LK", menu_settings.help.colour)
	end
	
	local checkbox_state = button.checked and "on" or "off"
	gui.box(settings.checkbox.coords.x1, settings.checkbox.coords.y1 + button.y, settings.checkbox.coords.x2, settings.checkbox.coords.y2 + button.y, settings.checkbox.colours.inside[checkbox_state][ST_menu.state].available, settings.checkbox.colours.outline[checkbox_state][ST_menu.state].available)
	if button.checked then
		gui.text(settings.checkbox.coords.x1 + 7, settings.checkbox.coords.y1 + button.y + 1, "On")
	else
		gui.text(settings.checkbox.coords.x1 + 5, settings.checkbox.coords.y1 + button.y + 1, "Off")
	end
end
-------------------------------------
-- Draw Gauge
-------------------------------------
function drawGauge(button)
	local settings = menu_settings.buttons.gauge_button
	-- gui.box(button.x, button.y, settings.gauge.coords.x2, settings.gauge.coords.y2 + button.y, settings.gauge.colours.inside, settings.gauge.colours.outline)
end

function drawButtonSettings(button)
	if (interactivegui.selection ~= button.id) and button.select_to_show then
		return
	else
		local setting_name = ""
		if button.setting_displayed ~= "" then
			if button.popup[button.setting_displayed] then
				if button.settings_options then
					setting_name = button.settings_options[button.popup[button.setting_displayed].selector + 1]
				end
			else
				setting_name = button.setting_displayed
			end
		end
		local x = menu_settings.selection.coords.x2 - #setting_name*4 - 20
		local y = menu_settings.window.coords.boxy + button.y
		gui.text(x, y + 2, setting_name)
		if interactivegui.selection == button.id then
			gui.text(x + 30, y + 2, "MK", menu_settings.help.colour)
		end
	end
end

local function drawPopUpWindow(menu)
	if ST_menu.popup then
		local settings = menu_settings.popup
		for i = 1, #guipages[interactivegui.page] + 1 do -- Hide as many buttons in the main training page as the number of buttons in popup + 1
			hideButton(guipages[interactivegui.page]["a"..i], true)
		end
		settings.coords.y2 = settings.coords.y1 + (#guipages[interactivegui.page] + 1) * (9 + (menu_settings.buttons.space_between_buttons/2))
		guiShadedBox(interactivegui.boxx, settings.coords.y1, interactivegui.boxx2, settings.coords.y2, settings.colours.first, settings.colours.last, settings.colours.outline, "vertical", settings.colours.core)
	end
end

function getButtonColour(button)
	if button.in_popup then
		button.textcolour = menu_settings.buttons.colours["active"].available -- a popup button will always be in the active window
		return
	end
	if button.available then
		button.textcolour = menu_settings.buttons.colours[ST_menu.state].available
	else
		button.textcolour = menu_settings.buttons.colours[ST_menu.state].not_available
	end
end

local function displayScrollbar()
	if ST_menu.scrollbar[interactivegui.page] then
		drawScrollbar(guipages[interactivegui.page], ST_menu.scrollbar[interactivegui.page])
	end
end

local function displayTitle()
	local curr_page = returnSubpagesSelector(interactivegui.page)
	local prev_title, next_title = nil, nil
	-- Finding the previous and next pages + Shortening their names
	for i = 1, #pages_name[ST_menu.home] do
		if pages_name[ST_menu.home][i] == curr_page then
			prev_title = i ~= 1 and pages_name[ST_menu.home][i-1] or pages_name[ST_menu.home][#pages_name[ST_menu.home]]
			next_title = i ~= #pages_name[ST_menu.home] and pages_name[ST_menu.home][i+1] or pages_name[ST_menu.home][1]
			prev_title = "<< ".. string.gsub(prev_title,"Settings","")
			next_title = string.gsub(next_title,"Settings","").." >>"
			break
		end
	end
	-- Display
	if ST_pages[ST_menu.home][interactivegui.page] then
		ST_pages[ST_menu.home][interactivegui.page].title.textcolour = menu_settings.title.colours[ST_menu.state].current
	else
		--ST_pages[ST_menu.home][ST_menu.back.page].title.textcolour = menu_settings.title.colours[ST_menu.state].current
	end
	if prev_title and next_title then
		gui.text(interactivegui.boxx + 20, interactivegui.boxy + 16, prev_title, menu_settings.title.colours[ST_menu.state].adjacent)
		gui.text(interactivegui.boxx2 - #next_title * 4 - 20, interactivegui.boxy + 16, next_title, menu_settings.title.colours[ST_menu.state].adjacent)
		local settings = menu_settings.button_help["Previous Page"]
		gui.text(settings.coords.x, settings.coords.y, returnFuncKey("Previous Page"), settings.colour)
		settings = menu_settings.button_help["Next Page"]
		gui.text(settings.coords.x, settings.coords.y, returnFuncKey("Next Page"), settings.colour)
	end
	if subpages_name[ST_menu.home][curr_page] then
		settings = menu_settings.subtitle
		gui.text(settings.coords.x(), settings.coords.y, "< "..ST_menu.subpage.." >", settings.colours[ST_menu.state].current)
		 -- gui.text(100, 110, "< "..ST_menu.subpage.." >", settings.colours[ST_menu.state].current)
	end
end

local function drawBackgroundShadow()
	gui.box(0,0,emu.screenwidth(),emu.screenheight(),0x000000A0)
end

function displaySTGui()
	drawBackgroundShadow()
	drawMenuWindow()
	drawPopUpWindow()
	displayScrollbar()
	displayTitle()
	displayHelp()
end