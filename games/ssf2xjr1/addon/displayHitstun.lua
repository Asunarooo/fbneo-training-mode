local display_hitstun_selector = 0

display_hitstun_button = {
		text = "Display Hitstun",
		olcolour = "black",
		func =	function()
				display_hitstun_selector = display_hitstun_selector + 1
				if display_hitstun_selector > 1 then
					display_hitstun_selector = 0
				end
			end,
		autofunc = function(this)
				if display_hitstun_selector == 0 then
					this.text = "Display Hitstun : Off"
				elseif display_hitstun_selector == 1 then
					this.text = "Display Hitstun : On"
				end
			end,
	}
insertAddonButton(display_hitstun_button)

--Determine the color of the bar based on the value (higher = darker)
local function colorVal(val,max_val)
	local color_val = {0x00FF5DA0,0x54FF00A0,0xAEFF00A0,0xFAFF00A0,0xFF5400A0,0xFF0026A0}
	local section = math.floor(val/(max_val/6)+0,5)+1
	if section > 6 then section = 6 end

	local color = color_val[section]
	
	return color
end

local function draw_hitstun()
	if display_hitstun_selector > 0 then
		for i = 1, #player do
			local hitstun = player[i].hitstun_counter
			local threshold = 0
			local hitstun_max_val = {0x69,0x7A,0x90} -- Light, Medium, High
			local coord = {x = get_player_msg_x(player[i]), y = get_player_msg_y(player[i])+7}
			local attacker = {}
			if i == 1 then attacker = gamestate.P2 else attacker = gamestate.P1 end

			if not player[i].is_knockdown and (player[i].in_hitstun or (player[i].in_hitfreeze and attacker.is_attacking)) then
				for j = 1, #hitstun_max_val do
					if hitstun <= hitstun_max_val[j] then
						threshold = hitstun_max_val[j]
						break
					end
				end
				gui.box(coord.x,coord.y,coord.x+2*(threshold-hitstun),coord.y+4,colorVal(threshold-hitstun,20),0x000000FF)
			end
		end
	end
end
table.insert(ST_functions, draw_hitstun)