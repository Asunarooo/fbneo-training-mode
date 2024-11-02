------------------------------------------------------------------------------------------------------------
-- New functions used by the training mode
-- Overwriting some functions used by peon's training mode for menu navigation
------------------------------------------------------------------------------------------------------------
-- Changes :
--	- 3 different functions can be called by a button
--	- MP = back
--	- HP/HK are used to cycle through the pages
--	- Left/Right are no longer used to select a button but they can change its value (see createButton.lua)
------------------------------------------------------------------------------------------------------------
 -- Return the key used by func
function returnFuncKey(func)
	for k in pairs(menu_settings.functions) do
		if menu_settings.functions[k] == func then
			return k
		end
	end
end

function updateSelectorWithDir(selector, max)
	if guiinputs.P1.left and not guiinputs.P1.previousinputs.left then
		selector = selector - 1
		if selector < 0 then
			selector = max - 1
		end
	elseif guiinputs.P1.right and not guiinputs.P1.previousinputs.right then
		selector = selector + 1
		if selector == max then
			selector = 0
		end
	end
	return selector
end

-- New functions
local callGUIFunc = function(func_id) -- Custom functions used by a button
	local f = {"func1","func2","func3"}
	local func = interactiveguipages[interactivegui.page][interactivegui.selection][f[func_id]]
	if not interactivegui.enabled or not func then return end
	func()
end

local callGUIBack = function()
	menuBack() -- see menuNavigation.lua
end

local callGUINextPage = function()
	if not ST_menu.popup then
		local page = ""
		ST_menu.pages_selector = ST_menu.pages_selector + 1
		if ST_menu.pages_selector > #pages_name[ST_menu.home] then
			ST_menu.pages_selector = 1
		end
		if subpages_name[ST_menu.home][pages_name[ST_menu.home][ST_menu.pages_selector]] then
			local curr_page = pages_name[ST_menu.home][ST_menu.pages_selector]
			page = curr_page..":"..subpages_name[ST_menu.home][curr_page][ST_menu.subpages_selector[ST_menu.home][curr_page]]
		else
			page = pages_name[ST_menu.home][ST_menu.pages_selector]
		end
		CIG(page, 1)
	end
end

local callGUIPrevPage = function()
	if not ST_menu.popup then
		ST_menu.pages_selector = ST_menu.pages_selector - 1
		if ST_menu.pages_selector == 0 then
			ST_menu.pages_selector = #pages_name[ST_menu.home]
		end
		if subpages_name[ST_menu.home][pages_name[ST_menu.home][ST_menu.pages_selector]] then
			local curr_page = pages_name[ST_menu.home][ST_menu.pages_selector]
			page = curr_page..":"..subpages_name[ST_menu.home][curr_page][ST_menu.subpages_selector[ST_menu.home][curr_page]]
		else
			page = pages_name[ST_menu.home][ST_menu.pages_selector]
		end
		CIG(page, 1)
	end
end

-- Associates a name to the new functions. This name is used by menuconfig.functions (see menuconfig.lua)
local menuFunc = {
	["func1"] = function() callGUIFunc(1) end,
	["func2"] = function() callGUIFunc(2) end,
	["func3"] = function() callGUIFunc(3) end,
	["back"] = function() callGUIBack() end,
	["Previous Page"] = function() callGUIPrevPage() end,
	["Next Page"] = function() callGUINextPage() end
}

function updateDrawInteractiveGUIFuncs()
	-- New function for each key. The corresponding function to a key is defined in menuconfig.lua
	local new_funcs = {}
	for i = 5, 10 do -- ST_key : cycles from LP to HK
		if menu_settings.functions[ST_keys[i]] then
			function f(but)
				if guiinputs.P1[keyToButton(ST_keys[i])] and not guiinputs.P1.previousinputs[keyToButton(ST_keys[i])] then
					menuFunc[menu_settings.functions[ST_keys[i]]]()
				end
			end
		end
		table.insert(new_funcs, f)
	end
	
	-- Mostly the same code as peon's except we're getting rid of left/right navigation
	new_funcs.other = function() -- runs every frame regardless
		local s -- selection
		local t = guipagesformatted[interactivegui.page] -- format table
		local l -- location
		
		local function prevSelec()
			s = interactivegui.selection
			l = t["A"..s]
			interactivegui.previousselection = s
			if l[1]-1<=0 then
				if t[t.len][l[2]] then
					interactivegui.selection = t[t.len][l[2]]
				else
					interactivegui.selection = t[t.len][t[t.len].len]
				end
			else
				if t[l[1]-1][l[2]] then
					interactivegui.selection = t[l[1]-1][l[2]]
				else
					interactivegui.selection = t[l[1]-1][t[l[1]-1].len]
				end
			end
		end
		local function nextSelec()
			s = interactivegui.selection
			l = t["A"..s]
			interactivegui.previousselection = s
			if l[1]+1>t.len then
				if t[1][l[2]] then
					interactivegui.selection = t[1][l[2]]
				else
					interactivegui.selection = t[1][t[1].len]
				end
			else
				if t[l[1]+1][l[2]] then
					interactivegui.selection = t[l[1]+1][l[2]]
				else
					interactivegui.selection = t[l[1]+1][t[l[1]+1].len]
				end
			end
		end

		if guiinputs.P1.up and not guiinputs.P1.previousinputs.up then
			prevSelec()
			for i = 1, #guipages[interactivegui.page] do
				local available = guipages[interactivegui.page][interactivegui.selection].available -- We don't want to stop on an unavailable feature
				if not available then
					prevSelec()
				else
					break
				end
			end
		elseif guiinputs.P1.down and not guiinputs.P1.previousinputs.down then
			nextSelec()
			for i = 1, #guipages[interactivegui.page] do
				local available = guipages[interactivegui.page][interactivegui.selection].available
				if not available then
					nextSelec()
				else
					break
				end
			end
		end	
	end
	new_funcs.name = "drawInteractiveGUIFuncs"
	return new_funcs
end

function updateButtonHandler()
	local func = function(t)
		for i = 1, #t.funcs do
			t[i] = t[i] or {name = " "}
			t[i].button = t[i].button or "button"..(tonumber(t[i-1].button:sub(7))+1)
		end
		
	t.len=#t

	helpElements.more = helpElements.more or 0

	if helpElements.name==nil or t.funcs.name~=helpElements.name then -- new set of buttons, should be checking using enums
		helpElements = {name = t.funcs.name}

		for i,v in ipairs(t.funcs) do t[i].func=v end -- copy across funcs

		helpElements.funcs = t.funcs
		helpElements.len = t.len
		for i = 1, helpElements.len do
			helpElements[i]={name=t[i].name, button=buttonHandlerInputs[t[i].button], buttonnum=t[i].button, func=t[i].func}
		end
		helpElements.len = math.min(nbuttons,helpElements.len)
		helpElements.len=0 -- real length ( account for {} in table )
		for _,v in ipairs(helpElements) do
			if v.name and v.button then helpElements.len=helpElements.len+1 end
		end
		helpElements.len = math.min(nbuttons,helpElements.len)
	end  
	
	helpElements.name = t.funcs.name
	
	end
	return func
end