-- Used for navigation
ST_menu = {
	home = "Training",
	page = "",
	subpage = "",
	pages_selector = 1,
	subpages_selector = {
		["Main Menu"] = {},
		["Training"] = {},
	},
	state = "active",
	popup = false,
	level = 1, -- 1 = main training menu, 2 = popup etc.
	back = {
		page = "",
		selection = 1
	},
	sortedButtons = {},
	scrollbar = {},
}

function createSTGauge(BaseMenu, button)
	-- local uf = 	function(n) 
		-- if n then
			-- changeConfig("p1", "maxmeter", modulevars.p1.maxmeter+n, modulevars.p1)
		-- end
		-- return modulevars.p1.maxmeter
	-- end
	guipages[button.name.." Gauge"] = createScrollingBar(BaseMenu, button.x, button.y, button.gauge.min, button.gauge.max, button.gauge.updatefunc, button.gauge.length)
	print("ok")
end

function CreateSTPopUpMenu(BaseMenu, name)
	-- Creating a copy of the base menu
	guipages[name] = {}
	for i,v in pairs(BaseMenu) do -- copy over the table and make sure ipairs wont pick up the elements
		guipages[name]["a"..i] = v
	end
	-- A way to exit the popup with func3 button. We create an invisble button to run the following autofunc
	guipages[name]["exit"] = {
		x = 0, y = 0, text = "", buffer = -1,
		autofunc = function(this)
			if guiinputs.P1[returnFuncKey("func3")] then
				if not guiinputs.P1.previousinputs[returnFuncKey("func3")] then
					this.buffer = this.buffer + 1 -- MK should be hold at least 2 frames in order to not trigger the popup again
				else
					if this.buffer == 0 then
						this.buffer = -1
						menuBack()
					end
				end
			end
		end
	}
end

function openPopup(button)
	ST_menu.state = "background"
	ST_menu.level = ST_menu.level + 1
	ST_menu.popup = true
	ST_menu.back.page, ST_menu.back.selection = interactivegui.page, interactivegui.selection
	CIG(interactivegui.page.." "..button.name.." Popup", 1)
end

function menuBack()
	if ST_menu.level > 1 then -- If the main training menu is not the active window anymore
		ST_menu.state = "active"
		ST_menu.level = ST_menu.level - 1
		if ST_menu.popup then
			for i = 1, #guipages[interactivegui.page] + 1 do -- Make the previously hidden buttons visible again (see drawPopupWindow() in drawMenu.lua)
				hideButton(guipages[interactivegui.page]["a"..i], false)
			end
			ST_menu.popup = false
		end
		CIG(ST_menu.back.page, ST_menu.back.selection)
	end
end

function returnSubpagesSelector(page) -- return page in "page:subpage"
	for i in string.gmatch(page, "[^:]+") do
		return i
	end
end

function manageSubpages()
	if not subpages_name[ST_menu.home][returnSubpagesSelector(interactivegui.page)] or ST_menu.popup then return end
	local page = returnSubpagesSelector(interactivegui.page)
	local selector = ST_menu.subpages_selector[ST_menu.home][returnSubpagesSelector(interactivegui.page)]
	local max = #subpages_name[ST_menu.home][returnSubpagesSelector(interactivegui.page)]
	if guiinputs.P1.left and not guiinputs.P1.previousinputs.left then
		selector = selector - 1
		if selector < 1 then
			selector = max
		end
		CIG(page..":"..subpages_name[ST_menu.home][page][selector], 1)
	elseif guiinputs.P1.right and not guiinputs.P1.previousinputs.right then
		selector = selector + 1
		if selector == max + 1 then
			selector = 1
		end
		CIG(page..":"..subpages_name[ST_menu.home][page][selector], 1)
	end
	ST_menu.subpage = subpages_name[ST_menu.home][page][selector]
	ST_menu.subpages_selector[ST_menu.home][returnSubpagesSelector(interactivegui.page)] = selector
end