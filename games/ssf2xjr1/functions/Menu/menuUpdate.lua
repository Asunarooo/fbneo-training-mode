----------------------------------------------------------------------
-- Creates a new menu for ssf2xjr1, mimicking the SF6 training mode
----------------------------------------------------------------------
local ini = false
-- Loading functions used by the menu
local functions = {
	"guiFuncUpdate", "guiShadedBox", "drawMenu", "guiScrollbar", "createButton", "menuNavigation", "displayHelp", "updateContextualSettings"
}
for i = 1, #functions do
	require(func_path.."Menu/"..functions[i])
end

local function initializeSTMenu()
	-- Overwriting some functions used by peon's training mode
	drawInteractiveGUIFuncs = updateDrawInteractiveGUIFuncs()
	buttonHandler = updateButtonHandler()
	-- Making peon's menu + buttons' borders + help section invisible
	interactivegui.bgcolour, interactivegui.olcolour = 0,0
	interactivegui.selectioncolour = 0
	toggledrawhelp = false
	-- Modifying the size of the menu
	for k in pairs(menu_settings.window.coords) do
		interactivegui[k] = menu_settings.window.coords[k]
	end
	-- Removing default pages
	for k in pairs(guipages) do
		guipages[k] = nil
	end
	-- Inserting the new ones
	for home in pairs(ST_pages) do
		for p, v in pairs(ST_pages[home]) do
			guipages[p] = v
		end
	end
	-- Inserting the buttons
	for home in pairs(pages_name) do -- cycle through the new pages
		for n = 1, #pages_name[home] do
			local popup = {}
			local gauge = {}
			page = pages_name[home][n]
			local subpages_nb = 1
			if subpages_name[home][page] then subpages_nb = #subpages_name[home][page] end
			ST_menu.subpages_selector[home][page] = 1
			for _n = 1, subpages_nb do
				if subpages_nb > 1 then page = pages_name[home][n]..":"..subpages_name[home][pages_name[home][n]][_n] end
				ST_menu.sortedButtons[page] = sortButtonsByID(ST_buttons[home][page])
				-- Inserting the buttons placed in the main training page
				for b = 1, #ST_menu.sortedButtons[page] do
					local button_name = ST_menu.sortedButtons[page][b]
					createButton(ST_pages[home][page], ST_buttons[home][page][button_name])
					if ST_buttons[home][page][button_name].popup then
						table.insert(popup, button_name)
					end
					if ST_buttons[home][page][button_name].gauge then
						table.insert(gauge, button_name)
					end
				end
				-- Creating popup pages + Inserting the buttons placed in popups
				for _p = 1, #popup do
					local popup_button_name = popup[_p]
					CreateSTPopUpMenu(ST_pages[home][page], page.." "..popup_button_name.." Popup")
					ST_menu.sortedButtons[page][popup_button_name] = sortButtonsByID(ST_buttons[home][page][popup_button_name].popup)
					for b = 1, #ST_menu.sortedButtons[page][popup_button_name] do
						local button_name = ST_menu.sortedButtons[page][popup_button_name][b]
						ST_buttons[home][page][popup_button_name].popup[button_name].in_popup = true
						createButton(guipages[page.." "..popup_button_name.." Popup"], ST_buttons[home][page][popup_button_name].popup[button_name])
					end
				end
				for _g = 1, #gauge do
					local gauge_button_name = gauge[_g]
					local button = ST_buttons[home][page][gauge_button_name]
					createSTGauge(ST_pages[home][page], button)
				end
				-- Creating a scrollbar if the page has more buttons than it can display at the same time
				if #ST_pages[home][page] > MAX_BUT then
					ST_menu.scrollbar[page] = createScrollbar(ST_pages[home][page])
				end
			end
		end
	end
	interactivegui.page, interactivegui.selection = pages_name[ST_menu.home][1], 1
end

function displayMenu()
	if not ini then
		initializeSTMenu()
		ini = true
	end
	if interactivegui.enabled then
		displaySTGui()
	end
end