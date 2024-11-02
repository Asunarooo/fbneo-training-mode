assert(rb,"Run fbneo-training-mode.lua")
-------------------
-- Pages
---------------------
ST_pages = {} -- Stocks all the pages, formatted 

pages_name = { -- Name + order of all the pages
	["Main Menu"] = {
		"Super Street Fighter 2x Training Mode"
	},
	["Training"] = {
		"Basic Settings",
		"Dummy Settings",
		--"Recording Settings",
		"Reversal Settings",
		"Advanced Hitbox Viewer Settings",
		"Parameter Settings",
		"Screen Display Settings",
		"Simple Training Settings",
		"Environment Settings"
	}
}

subpages_name = { -- Name + order of all the subpages
	["Main Menu"] = {
	
	},
	["Training"] = {
		["Reversal Settings"] = {
			"Block Reversal",
			"Wake-up Reversal",
			"Reversal After Damage"
		}
	}
}

local function returnPage(name) -- Creates a basic page with a name
	local page = {
		title = {
			text = name,
			x = menu_settings.window.coords.boxxlength/2 - #name*2.15,
			y = 3,
			textcolour = menu_settings.title.colours["active"].current,
			autofunc = manageSubpages
		}
	}
	return page
end

for home in pairs(pages_name) do -- Creating all the pages + subpages named above
	ST_pages[home] = {}
	for n = 1, #pages_name[home] do
		local name = pages_name[home][n]
		-- Creating the pages
		if not subpages_name[home][name] then
			ST_pages[home][name] = returnPage(name)
		else
		-- Creating the subpages
			for _n = 1, #subpages_name[home][name] do
				ST_pages[home][name..":"..subpages_name[home][name][_n]] = returnPage(name)
			end
		end
	end
end
---------------------
-- Buttons
---------------------
-- All buttons placed in ST_buttons[home][page_name] will be inserted in the correct page
ST_buttons = {
	["Main Menu"] = {},
	["Training"] = {}
}

-- Main Menu Buttons
ST_buttons["Main Menu"]["Super Street Fighter 2x Training Mode"] = {
	["Training Mode"] = {
		name = "Training Mode",
		id = 1,
		desc = "",
	},
	["Tutorials"] = {
		name = "Tutorials",
		id = 2,
		desc = "",
	},
	["Missions"] = {
		name = "Missions",
		id = 3,
		desc = "",
	},
	["Reload Last Session"] = {
		name = "Reload Last Session",
		id = 4,
		desc = "",
	},
}
-- Basic Training Buttons
ST_buttons["Training"]["Basic Settings"] = {
	["Replay Saved Status"] = {
		name = "Replay Saved Status",
		id = 1,
		desc = "Replay the battle status saved with Save Status",
		func3_desc = "Change Slot",
		select_to_show = true,
		settings_options = {
			"Slot 1",
			"Slot 2",
			"Slot 3",
			"Slot 4",
			"Slot 5"
		},
		display1 = function() return "Slot "..ST_buttons["Training"]["Basic Settings"]["Replay Saved Status"].popup["Slot"].selector + 1 end,
		popup = {
			["Slot"] = {
				name = "Slot",
				id = 1,
				desc = "",
				options = 5,
			},
		},
		func1 = replaySavedStatus -- see functions/basic_settings/handleSavestates.lua
	},
	["Save Status"] = {
		name = "Save Status",
		id = 2,
		desc = "Save your current battle status",
		setting_displayed = "Slot",
		select_to_show = true,
		settings_options = {
			"Slot 1",
			"Slot 2",
			"Slot 3",
			"Slot 4",
			"Slot 5"
		},
		display1 = function() return "Slot "..ST_buttons["Training"]["Basic Settings"]["Save Status"].popup["Slot"].selector + 1 end,
		popup = {
			["Slot"] = {
				name = "Slot",
				id = 1,
				desc = "Select the",
				options = 5,
			},
		},
		func1 = saveStatus -- see functions/basic_settings/h.lua
	},
	["Command List"] = {
		name = "Command List",
		id = 3,
desc = "",
		link = "",
		available = false,
		upcoming = true,
	},
	["Shortcut Settings"] = {
		name = "Shortcut Settings",
		id = 4,
		desc = "",
		link = ""
	},
	["Options"] = {
		name = "Options",
		id = 5,
desc = "",
		link = ""
	},
	["Restore Default Settings"] = {
		name = "Restore Default Settings",
		id = 6,
desc = "",
	},
	["View Tutorials"] = {
		name = "View Tutorials",
		id = 7,
desc = "",
		link = "",
		available = false,
		upcoming = true,
	},
	["Return to Character Select"] = {
		name = "Return to Character Select",
		id = 8,
		func1 = returnToCharacterSelect -- see functions/basic_settings/returnToCharacterSelect.lua
	},
}
ST_buttons["Training"]["Dummy Settings"] = {
	["Dummy Behaviour"] = {
		name = "Dummy Behaviour",
		id = 1,
desc = "",
		options = {
			"Standing",
			"Jumping",
			"Crouching"
		},
	},
	["Block"] = {
		name = "Block",
		id = 2,
		desc = "",
		options = {
			"No Block",
			-- "Block Count",
			"Block All",
			-- "Block Ground Attacks",
			"Block After First Hit",
			"Random"
		},
	},
	["Block Count"] = {
		name = "Block Count",
		id = 3,
		desc = "",
		options = 5
	},
	["Switch Block"] = {
		name = "Switch Block",
		id = 4,
		desc = "",
		options = {
			"Active",
			"Standing Block Only",
			"Crouching Block Only"
		},
	},
	["Throw Escape"] = {
		name = "Throw Escape",
		id = 5,
		desc = "",
		options = {
			"Inactive",
			"Active"
		},
	},
}
ST_buttons["Training"]["Parameter Settings"] = {
	["Vitality Gauge P1"] = {
		name = "Vitality Gauge P1",
		id = 1,
		x = 20,
		desc = "",
		gauge = {
			name = "p1health",
			value = modulevars.p1.maxhealth,
			min = 1,
			max = modulevars.p1.constants.maxhealth,
			updatefunc = function(n)
				if n then
					changeConfig("p1", "maxhealth", modulevars.p1.maxhealth+n, modulevars.p1)
				end
				print("ok")
				return modulevars.p1.maxhealth
			end
		},
	},
	["Vitality Gauge P2"] = {
		name = "Vitality Gauge P2",
		id = 2,
		x = 20,
desc = "",
		link = "projectilesettings",
	},
	["Vitality Recovery Settings P1"] = {
		name = "Vitality Recovery Settings P1",
		id = 3,
		x = 20,
		desc = "",
		options = {
			"Refill",
			"Always Full",
			"No Refill"
		},
	},
	["Vitality Recovery Settings P2"] = {
		name = "Vitality Recovery Settings P2",
		id = 4,
		x = 20,
desc = "",
		options = {
			"Refill",
			"Always Full",
			"No Refill"
		},
	},
	["Special Gauge P1"] = {
		name = "Special Gauge P1",
		id = 5,
		x = 20,
desc = "",
		link = "projectilesettings",
	},
	["Special Gauge P2"] = {
		name = "Special Gauge P2",
		id = 6,
		x = 20,
desc = "",
		link = "p2metermaxnew",
	},
	["Special Recovery Settings P1"] = {
		name = "Special Recovery Settings P1",
		id = 7,
		x = 20,
desc = "",
		options = {
			"Refill",
			"No Refill"
		},
	},
	["Special Recovery Settings P2"] = {
		name = "Special Recovery Settings P2",
		id = 8,
		x = 20,
desc = "",
		options = {
			"Refill",
			"No Refill"
		},
	},
	["Stun Control"] = {
		name = "Stun/Dizzy",
		id = 9,
		x = 20,
		desc = "",
		options = {
			"Normal",
			"Off (never dizzy)",
			"On (always dizzy)"
		},
	},
}
ST_buttons["Training"]["Environment Settings"] = {
	["Restart Battle"] = {
		name = "Restart Battle",
		id = 1,
		func1 = roundStart -- see functions/environment_settings/roundStart.lua
	},
	["Start Position"] = {
		name = "Start Position",
		id = 2,
desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Side Setting"] = {
		name = "Side Setting",
		id = 3,
desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Game Speed Setting"] = {
		name = "Game Speed Setting",
		id = 4,
desc = "",
		options = {
			"Turbo 1",
			"Turbo 2",
			"Turbo 3",
			"Turbo 4"
		}
	},
	["Input Delay Settings"] = {
		name = "Input Delay Settings",
		id = 5,
desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Music"] = {
		name = "Music",
		id = 6,
desc = "",
		options = {
			"On",
			"Off"
		}
	},
	["P1 Character Select"] = {
		name = "P1 Character Select",
		id = 7,
desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["P2 Character Select"] = {
		name = "P2 Character Select",
		id = 8,
desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Change Stage"] = {
		name = "Change Stage",
		id = 9,
desc = "",
		options = {
			"Off",
			"On"
		}
	},
}
 -- Advanced buttons
ST_buttons["Training"]["Advanced Settings"] = {
	["Frameskip"] = {
		name = "Disable Frameksip",
		x = 150,
		y = 30,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Slowdown"] = {
		name = "Disable Impact Slowdown",
		x = 150,
		y = 50,
		desc = {
			"Disable the slowdown when a projectile hits"
		},
		options = {
			"Off",
			"On"
		}
	},
	["No Music"] = {
		name = "Disable Background Music",
		x = 150,
		y = 70,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Easy Charge Move"] = {
		name = "Easy Charge Moves",
		x = 15,
		y = 150,
		desc = "",
		options = {
			"Off",
			"P1",
			"P2",
			"P1/P2"
		}
	},
	["Frame Advantage"] = {
		name = "Display Frame Advantage",
		x = 15,
		y = 30,
		desc = "",
		options = {
			"Off",
			"P1",
			"P2"
		}
	},
	["Frame Trap"] = {
		name = "Display Gap",
		x = 15,
		y = 50,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Round Start"] = {
		name = "Round start action",
		x = 15,
		y = 130,
		desc = "",
		options = {
			"Disabled",
			"Pre-start",
			"Post-start"
		}
	},
	["Crossup"] = {
		name = "Display Crossups",
		x = 15,
		y = 70,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Safe Jump"] = {
		name = "Display Safe jumps",
		x = 15,
		y = 90,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Tick Throw"] = {
		name = "Display Throws descs",
		x = 15,
		y = 110,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
}

ST_buttons["Training"]["Reversal Settings"] = {
}

for n = 1, #subpages_name["Training"]["Reversal Settings"] do
	ST_buttons["Training"]["Reversal Settings:"..subpages_name["Training"]["Reversal Settings"][n]] = {}
	for i = 1, 8 do
		ST_buttons["Training"]["Reversal Settings:"..subpages_name["Training"]["Reversal Settings"][n]]["Slot "..i] = {
			name = "Slot "..i,
			text = "Select Reversal",
			id = i,
			desc = "",
			select_to_show = false,
			link = "reversalpage",
			checked = false,
			display1 = function() return "Delay: "..ST_buttons["Training"]["Reversal Settings:"..subpages_name["Training"]["Reversal Settings"][n]]["Slot "..i].popup["Delay"].selector.."F" end,
			display2 = function() return "Count: "..ST_buttons["Training"]["Reversal Settings:"..subpages_name["Training"]["Reversal Settings"][n]]["Slot "..i].popup["Count"].selector end,
			popup = {
				["Delay"] = {
					name = "Delay Settings",
					id = 1,
					desc = "",
					options = 60,
				},
				["Count"] = {
					name = "Count Settings",
					id = 2,
					desc = "",
					options = 5,
				},
			}
		}
	end
end

ST_buttons["Training"]["Advanced Hitbox Viewer Settings"] = {
	["Display Player 1 Hitboxes"] = {
		name = "Display Player 1 Hitboxes",
		id = 1,
		desc = "",
		link = "", -- see functions/Advanced Hitbox Viewer Settings/displayHitbox.lua
	},
	["Display Player 2 Hitboxes"] = {
		name = "Display Player 2 Hitboxes",
		id = 2,
		desc = "",
		link = "", -- see functions/Advanced Hitbox Viewer Settings/displayHitbox.lua
	},
	["Show Me How To Beat Player 2's Moves"] = {
		name = "Show Me How To Beat Player 2's Moves",
		id = 3,
		desc = "",
		link = "", -- TODO
	}
}

ST_buttons["Training"]["Screen Display Settings"] = {
	["Toggle ST HUD"] = {
		name = "Toggle ST HUD",
		id = 1,
		desc = "",
		options = {
			"Off",
			"On (Complete)",
			"On (Simplified)",
		},
	},
	["Hitboxes"] = {
		name = "Hitboxes",
		id = 2,
desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Frame Meter"] = {
		name = "Frame Meter",
		id = 3,
desc = "",
		options = {
			"Off",
			"P1",
			"P2"
		}
	},
	["Frame Advantage"] = {
		name = "Display Frame Advantage",
		id = 4,
		desc = "",
		options = {
			"Off",
			"P1",
			"P2"
		}
	},
	["Frame Trap"] = {
		name = "Display Gap",
		id = 5,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Crossup"] = {
		name = "Display Crossups",
		id = 6,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Safe Jump"] = {
		name = "Display Safe jumps",
		id = 7,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Tick Throw"] = {
		name = "Display Throws descs",
		id = 8,
		desc = "",
		options = {
			"Off",
			"On"
		}
	},
	["Action Timing Display"] = {
		name = "Action Timing Display",
		id = 9,
desc = "",
		options = {
			"Off",
			"P1",
			"P2"
		}
	},
	["Cancel Timing Display"] = {
		name = "Cancel Timing Display",
		id = 10,
desc = "",
		options = {
			"Off",
			"P1",
			"P2"
		}
	},
}
ST_buttons["Training"]["Simple Training Settings"] = {
	["Combo Practice"] = {
		name = "Combo Practice",
		id = 1,
desc = "",
		link = "projectilesettings",
	},
	["Anti-Air Practice"] = {
		name = "Anti-Air Practice",
		id = 2,
desc = "",
		link = "projectilesettings",
	},
	["Offensive Pressure Practice"] = {
		name = "Offensive Pressure Practice",
		id = 3,
desc = "",
		link = "projectilesettings",
	},
	["Throw Escape Practice"] = {
		name = "Throw Escape Practice",
		id = 4,
desc = "",
		link = "projectilesettings",
	},
	["Whiff Punish Practice"] = {
		name = "Whiff Punish Practice",
		id = 5,
desc = "",
		link = "projectilesettings",
	},
	["Punish Practice"] = {
		name = "Punish Practice",
		id = 6,
desc = "",
		link = "projectilesettings",
	},
	["The Frame Meter and You"] = {
		name = "Combo Practice",
		id = 7,
desc = "",
		link = "projectilesettings",
	},
	["Save Training Settings"] = {
		name = "Save Training Settings",
		id = 8,
desc = "",
		link = "projectilesettings",
	},
	["Load Training Settings"] = {
		name = "Load Training Settings",
		id = 9,
desc = "",
		link = "projectilesettings",
	},
}
-- Projectiles buttons (more buttons are created below : see makeProjectileSettingsButtons())
ST_buttons["Training"]["Projectile Settings"] = {
	["Projectile Frequency"] = {
		name = "Fire : ",
		x = 15,
		y = 155,
		desc = "",
		options = {
			"When able",
			"Randomly"
		}
	}
}
--------------------------
-- Contextual buttons 
-------------------------
contextual_buttons = {
	["Auto Reversal"] = {
		name = "AutoReversal (P2)",
		x = 15,
		y = 110,
		desc = {
			"Control reversal on P2",
			"Use the Replay Editor in the Recording menu to program the desired reversal action."
		},
		options = {
			"Disabled",
			"Enabled",
		},
		handle = "Auto Reversal"
	},
	["Select Reversal"] = {
			name = "Select Reversal",
			x = 15,
			y = 110,
			desc = {
				"In this menu, you can choose the moves you want to get as reversals",
			},
			link = "reversalsettings",
			handle = "Select Reversal"
	},
	["Throw Projectile"] = {
		name = "Throw Projectiles",
		x = 160,
		y = 50,
		desc = {
			"In this menu you can choose the projectiles you want to be thrown",
		},
		link = "projectilesettings",
		handle = "Throw Projectile"
	}
}
------------------------------------
-- Create a Reversal Settings Menu
------------------------------------
reversal_options = {} -- Contains the buttons with the relevant descrmations from data/character_specific/character/character_descs.lua

function makeReversalSettingsButtons()
	local n = 0 -- count the number of reversal options
	local s = 0 -- count the number of unique special moves a character can reversal
	local character = gamestate.P2.character_name
	local old = gamestate.P2.is_old
	local x,y = 0,0
	-- Specials
	for i = 1, #character_specific[character].specials do
		local special = character_specific[character].specials[i]
		if special.reversal and ((not old) or (old and not special.new_only)) then
			s = s + 1
			for j = 1, #special.input_variations do
				if (special.strength_set < 3) or (special.strength_set == 0 and j == 1) then -- CHANGER LE SYSTEME DE strength Don't display variations for super moves or moves that don't have variations
					n = n + 1
					local special_name = ""
					local special_variation = ""
					y = 15 + 15*s
					if j == 1 then
						special_name = special.name
						x = 15
					else
						if special.strength_set ~= -1 then -- Not Dhalsim TP not Boxer TAP
							x = 155 + 20*j
						elseif character == "dhalsim" then -- Dhalsim TP
							x = 77 + 24*j
						elseif character == "boxer" then -- Boxer TAP
							x = 95 + 15*j
						end
					end
					if special.strength_set ~= 0 then -- no variations
						special_variation = special.input_variations[j][1]
					end
					reversal_options[n] = {
						name = special_name.." "..special_variation,
						x = x,
						y = y,
						--desc = tostring(special.input) -- Maybe add move description
						move = {
							id = special.id, 
							strength = determineStrengthValue(special.input_variations[j][1], special.strength_set)
						},
					}
					createButton(ST_pages.reversalsettings, reversal_options[n])
				end
			end
		end
	end
	-- Throws
	for i = 1, #character_specific[character].throws do
		local throw_name = ""
		n = n + 1
		if i == 1 then
			throw_name = "Throw "..character_specific[character].throws[i]
			x = 15
		else
			throw_name = character_specific[character].throws[i]
			x = 15 + 17*i
		end
		reversal_options[n] = {
				name = throw_name,
				x = x,
				y = y + 15,
				--desc = tostring(character_specific[character].specials[i].input) -- Maybe add move description
				move = {
					id = "throw",
					strength = character_specific[character].throws[i]
				},
			}
		createButton(ST_pages.reversalsettings, reversal_options[n])
	end
end

function deleteReversalSettings()
	for i = 1, #reversal_options do
		table.remove(guiST_pages.reversalsettings)
		reversal_options[i] = nil
	end
	for k in pairs(ST_buttons.reversalsettings) do
		ST_buttons.reversalsettings[k].checked = false
	end
	interactivegui.page, interactivegui.selection = 1,1
	removeButton(ST_pages.basicsettings, "Select Reversal")
end

function makeReversalSettings(patched) -- Display "Select Reversal" if the game has been patched, else use the default "Autoreversal" option
	if not patched then
		if gamestate.prev.patched then
			deleteReversalSettings()
		end
		createButton(ST_pages.basicsettings, contextual_buttons["Auto Reversal"])
	else
		if not gamestate.prev.patched then
			contextual_buttons["Auto Reversal"].selector = 0
			removeButton(ST_pages.basicsettings, "Auto Reversal")
		end
		createButton(ST_pages.basicsettings, contextual_buttons["Select Reversal"])
		makeReversalSettingsButtons()
	end
	formatGuiTables() -- Function defined in fbneo-training-mode/guiST_pages.lua (l.875). Maybe there's a cleaner way to reload the tables ?
end
------------------------------------------------------------
-- Create a Projectile Menu if the opponent has fireballs
-------------------------------------------------------------
projectile_options = {}

function makeProjectileSettingsButtons()
	local character = gamestate.P2.character_name
	if not character_specific[character].descs.has_projectile then
		return
	end
	-- Insert the button leading to the menu
	createButton(ST_pages.basicsettings, contextual_buttons["Throw Projectile"])
	-- Determine which specials should be considered
	local special_id = {}
	for s = 1, #character_specific[character].specials do
		if character_specific[character].specials.projectile then
			table.insert(special_id, s)
		end
	end

	local n = 0  -- count the number of projectile options

	for i = 1, #special_id do
		local special = character_specific[character].specials[special_id[i]]
		for j = 1, #special.input_variations do
			if special.strength_set ~= 0 or (special.strength_set == 0 and j == 1) then
				n = n + 1
				local projectile_name = ""
				local projectile_variation = ""
				local x = 15
				local y = 35 + 15*i
				if j == 1 then
					projectile_name = special.name
				else
					x = 40 + 23*j
				end
				if special.strength_set ~= 0 then -- no variations
					projectile_variation = special.input_variations[j][1]
				end
				projectile_options[n] = {
					name = projectile_name.." "..projectile_variation,
					x = x,
					y = y,
					move = {
						id = special_id[i],
						strength = j
					},
				}
				createButton(projectilesettings, projectile_options[n])
			end
		end
	end
end

function deleteProjectileSettings()
	for i = 1, #projectile_options do
		table.remove(guiST_pages.projectilesettings)
		projectile_options[i] = nil
	end
	interactivegui.page, interactivegui.selection = 1,1
	removeButton(ST_pages.basicsettings, contextual_buttons["Throw Projectile"])

end

function makeProjectileSettings()
	makeProjectileSettingsButtons()
	formatGuiTables()
end