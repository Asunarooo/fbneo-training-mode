local display_zone_selector = 0

display_zone_button = {
		text = "Display Zone",
		olcolour = "black",
		func =	function()
				display_zone_selector = display_zone_selector + 1
				if display_zone_selector > 1 then
					display_zone_selector = 0
				end
			end,
		autofunc = function(this)
				if display_zone_selector == 0 then
					this.text = "Display Zone : Off"
					msg_tick_throw = true
				elseif display_zone_selector == 1 then
					this.text = "Display Zone : On"
				end
			end,
	}
-- insertAddonButton(display_zone_button)

local ini = false
local character = ""
zones = {}
for i = 1, #characters do
  zones[characters[i]] = {}
  for j = 1, #characters do
	zones[characters[i]][characters[j]] = {}
  end
end
local curr_zone = 1

local function inc_zone()
	curr_zone = curr_zone + 1
	print("ok")
end
input.registerhotkey(9, inc_zone)

local function displayZoneInReplay()
	if REPLAY or display_zone_selector > 0 then
		local p1, p2 = gamestate.P1.character_name, gamestate.P2.character_name
		if not ini then
			if fexists("games/ssf2xjr1/addon/resources/zones/"..p1.."/"..p2.."_zones.lua") then
				dofile("games/ssf2xjr1/addon/resources/zones/"..p1.."/"..p2.."_zones.lua")
				ini = true
			end
		elseif gamestate.is_in_match and p1 and p2 then
			if curr_zone > #zones[p1][p2] then curr_zone = 1 end
			local zone = zones[p1][p2][curr_zone]
			local y = 60
			for i = 1, #zone do
				-- print(#zone)
				displayZone(zone[i].min, zone[i].max, zone[i].color)
				local distance = getDistanceBetweenPlayers()
				if distance >= zone[i].min and distance <= zone[i].max and gamestate.P1.state ~= jumping then
					if zone[i].msg then
						local msg = zone[i].msg
						y = y + 10
						gui.text(100,y,msg)
					end
				end
			end
		end
		if characterChanged(gamestate.P2) then
			ini = false
		end
	end
end
table.insert(ST_functions, displayZoneInReplay)