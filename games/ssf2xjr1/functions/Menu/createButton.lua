------------------------------------------------------------------------------------------------------------
-- Shortcut for creating basic buttons and inserting them in the correct page
------------------------------------------------------------------------------------------------------------
-- A button should, at least, be declared this way :
-- button = {
	-- name = "name",
	-- id = int
-- }
-- But some values determine how a button will behave
------------------------------------------------------------
-- options = {"option0", "option1, ...} OR options = int
------------------------------------------------------------
-- If specified, the button will be able to switch between multiple values.
-- A variable called "selector" will be created. 
-- If button.selector = 0 then button.text = option0, if button.selector = 1 then button.text = option0 ...
-- Use left/right to decrease/increase the value
-------------------------------------------------
-- link = "page"
-------------------------------------------------
-- If specified, the button will link to the chosen page
-------------------------------------------------
-- if no optional values are specified then the button will work as a checkbox
-- A bool named checked will be created.
-- Pressing the button change the bool
--------------------------------------------------
function sortButtonsByID(buttons) -- Sorting the buttons by ID to insert them in the right order
	local t = {}
	for b in pairs(buttons) do
		table.insert(t, b)
	end
	table.sort(t, function(a, b)
		if buttons[a].id and buttons[b].id then
			return buttons[a].id < buttons[b].id
		end
	end)
	return t
end

local function initializeX(button)
	local text = button.text and button.text or button.name
	if button.config[2] ~= "selector_button" then
		return menu_settings.buttons[button.config[2]].coords.x - #text * 2
	else
		return menu_settings.buttons[button.config[2]].coords.x
	end
end

local function initializeY(button)
	if button.id <= MAX_BUT then
		button.pos = button.id
		return menu_settings.buttons.preset_pos[button.id]
	else
		button.pos = "hide"
		return menu_settings.buttons.preset_pos["hide"] + button.id -- out of sight. We add button.id for guiTableFormatting() (see fbneo-training-mode.lua). It helps to cycle through the buttons in the correct order once a scrollbar will be created.
	end
end

function changePos(button, new_pos) -- move a button to the desired preset position
	button.pos = new_pos
	button.y = menu_settings.buttons.preset_pos[button.pos]
end

function hideButton(button, bool) -- Hide temporarily a button. button.pos is not modified in order to retrieve the previous position once hideButton(button, false) is used
	if bool then
		button.y = menu_settings.buttons.preset_pos["hide"]
	else
		button.y = menu_settings.buttons.preset_pos[button.id]
	end
end

-- Default autofuncs
default_autofunc = {
	["basic"] = function(button)
		getButtonColour(button)
		drawButton(button)
		drawButtonDisplayedValues(button)
		drawButtonHelp(button)
	end,
	["selector_button"] = function(button)
		-- Display the current option and arrows
		drawSelectorButtonOption(button)
		-- If button button is selected then use left and right to modify the option
		local max = type(button.options) == "table" and #button.options or button.options
		if interactivegui.selection == button.id then
			button.selector = updateSelectorWithDir(button.selector, max)
		end
	end,
	["check_button"] = function(button)
		drawCheckButtonCheckbox(button)
	end,
	["link_button"] = function(button)

	end,
	["gauge_button"] = function(button)
		drawGauge(button)
	end,
	["other_button"] = function(button)
	
	end,
	["settings"] = function(button)
		-- drawButtonSettings(button)
	end
}

function createButton(page, button)
	if not button.name then
		print("Error : A name must be specified in order to create a button")
		return
	end
	if not button.id then
		print("Error : ID or Coords must be specified in order to create a button")
		return
	end
	-- Returning the correct default values for a specific type of button. If a value is already specified in a button then the default value will be ignored
	local returnDefaultValues = {
		-- values shared by all buttons
		["basic"] = function(_button)
			return {
				text = button.name,
				textcolour = menu_settings.buttons.colours.active.available,
				available = true,
				x = initializeX(button),
				y = initializeY(button),
				olcolour = nil,
				desc = "",
				autofunc = function(this)
					for i = 1, #this.config do
						default_autofunc[this.config[i]](this)
					end
				end
			}
		end,
		-- values used by buttons leading to another page
		["link_button"] = function (_button)
			return {
				func1 = function()
					CIG(button.link, 1)
				end,
				func1_desc = "Confirm"
			}
		end,
		-- values used by buttons with multiple options
		["selector_button"] = function(_button)
			return {
				selector = 0, -- points toward the selected option
				selector_desc = "Change Settings"
			}
		end,
		-- values used by buttons working like a checkbox
		["check_button"] = function(_button)
			return {
				draw_borders = true,
				func2 = function()
					button.checked = not button.checked
				end,
				func2_desc = "Enable/Disable"
			}
		end,
		-- values used by buttons working like a checkbox
		["gauge_button"] = function(_button)
			return {
				-- updatefunc = function(n) 
					-- if n then
						-- button.value = button.value + n
					-- end
					-- return button.value
				-- end,
				func1 = function()
					CIG(button.name.." Gauge")
				end
			}
		end,
		-- values used by buttons which can lead to a popup
		["settings"] = function(_button)
			return {
				settings_selector = 0,
				setting_displayed = "",
				select_to_show = false,
				func3 = function()
					openPopup(_button)
				end,
				func3_desc = "Open Settings"
			}
		end
	}
	
	button.config = {"basic"}
	-- Determining button type
	if button.link then	-- is leading to another page
		table.insert(button.config, "link_button")
	end
	if button.options then -- has multiple options
		table.insert(button.config, "selector_button")
	end
	if button.gauge then
		table.insert(button.config, "gauge_button")
	end
	if button.checked ~= nil then -- can be turned on or off
		table.insert(button.config, "check_button")
	end
	if #button.config == 1 then
		table.insert(button.config, "other_button")
	end
	-- Inserting settings func
	if button.popup then
		table.insert(button.config, "settings")
	end

	for i = 1, #button.config do
		if returnDefaultValues[button.config[i]] then
			local values = returnDefaultValues[button.config[i]](button)
			for k, v in pairs(values) do
				if button[k] == nil then
					button[k] = v
				end
			end
		end
	end
	table.insert(page, button)
end

function removeButton(page, button)
	for i = 1, #page do
		if i == button.id then
			table.remove(page, i)
			return
		end
	end
end