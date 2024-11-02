-----------------------------------------------------------------------------------------------------------------------------
-- Used by menuUpdate.lua to automatically create a scrollbar if a page has more buttons than it can display at the same time
-----------------------------------------------------------------------------------------------------------------------------
local settings = menu_settings.scrollbar

function createScrollbar(page)
	if #page > MAX_BUT then
		local scrollbar = {
			curr_indentation = 1, -- 1 = bar at the top
			prev_indentation = 1,
			bar_length = (settings.coords.y2 - settings.coords.y1) / (#page - MAX_BUT + 1) -- the higher the buttons, the shorter the bar
		}
		return scrollbar
	end
end

local function drawArrow(x, y, side) -- Drawing up and down arrows manually because they look nicer than "^" and "v"
	gui.box(x, y, x + 4, y + 2, "black")
	if side == "down" then
		gui.line(x + 1, y + 3, x + 3, y + 3, "black")
		gui.line(x + 1, y + 1, x + 2, y + 2, settings.colours[ST_menu.state].arrows)
		gui.line(x + 2, y + 2, x + 3, y + 1, settings.colours[ST_menu.state].arrows)
	else
		gui.line(x + 1, y - 1, x + 3, y - 1, "black")
		gui.line(x + 1, y + 1, x + 2, y, settings.colours[ST_menu.state].arrows)
		gui.line(x + 2, y, x + 3, y + 1, settings.colours[ST_menu.state].arrows)
	end
end

function drawScrollbar(page, scrollbar)
	-- Drawing the core of the scrollbar
	gui.box(settings.coords.x1, settings.coords.y1, settings.coords.x2, settings.coords.y2, settings.colours[ST_menu.state].core)
	drawArrow(settings.coords.x1, settings.coords.y1 - 4, "up")
	drawArrow(settings.coords.x1, settings.coords.y1 - 7, "up")
	drawArrow(settings.coords.x1, settings.coords.y2 + 2, "down")
	drawArrow(settings.coords.x1, settings.coords.y2 + 5, "down")
	-- Remembering the previous indentation
	scrollbar.prev_indentation = scrollbar.curr_indentation
	-- Calculating the desired indentation
	if (interactivegui.selection - MAX_BUT) >= scrollbar.curr_indentation then
		scrollbar.curr_indentation = (interactivegui.selection - MAX_BUT + 1)
	elseif interactivegui.selection < scrollbar.curr_indentation then
		scrollbar.curr_indentation = interactivegui.selection
	end
	-- Drawing the scrollbar at the correct distance
	gui.box(settings.coords.x1 + 1, settings.coords.y1 + scrollbar.bar_length * (scrollbar.curr_indentation - 1) + 1, settings.coords.x2 - 1, settings.coords.y1 + scrollbar.bar_length * scrollbar.curr_indentation - 1, settings.colours[ST_menu.state].bar)
	-- Shifting and hiding the correct buttons
	if scrollbar.prev_indentation ~= scrollbar.curr_indentation then
		local shift = scrollbar.curr_indentation - 1 -- How many time we should shift
		for i = 1, #page do
			if i - shift > 0 and i - shift <= MAX_BUT then
				changePos(page[i], i - shift)
			else
				changePos(page[i], "hide")
			end
		end
	end
end