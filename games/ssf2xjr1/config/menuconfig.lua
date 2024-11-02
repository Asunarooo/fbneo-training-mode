menu_settings = {}
-----------------------------
-- Window
-----------------------------
menu_settings.window = {
	coords = {
		boxxd = 23, -- divisor
		boxxm = 22, -- multiplier
		boxyd = 19, -- divisor
		boxym = 17, -- multiplier
	},
	colours = {
		active =  {first = 0x150148FF, last = 0x420148FF, outline = 0x7043BAFF, core = 10},
		background = {first = 0x10021CFF, last = 0x0D002CFF, outline = 0x7043BAFF, core = 10} -- if a popup is displayed
	}
}

menu_settings.window.coords.boxx = emu.screenwidth()/menu_settings.window.coords.boxxd
menu_settings.window.coords.boxy = emu.screenheight()/menu_settings.window.coords.boxyd
menu_settings.window.coords.boxx2 = menu_settings.window.coords.boxxm * menu_settings.window.coords.boxx
menu_settings.window.coords.boxy2 = menu_settings.window.coords.boxym * menu_settings.window.coords.boxy

menu_settings.window.coords.boxxlength = (menu_settings.window.coords.boxxm - 1) * menu_settings.window.coords.boxx-- commonly used calculations
menu_settings.window.coords.boxylength = (menu_settings.window.coords.boxym - 1) * menu_settings.window.coords.boxy
menu_settings.window.coords.boxxmid = menu_settings.window.coords.boxx * ((menu_settings.window.coords.boxxm-1)/2)
menu_settings.window.coords.boxymid = menu_settings.window.coords.boxy * ((menu_settings.window.coords.boxym-1)/2)
-----------------------------
-- Title
-----------------------------
menu_settings.title = {
	colours = {
		active = {current = 0xC492D0FF, adjacent = 0xBBB1BDFF},
		background = {current = 0x66586EFF, adjacent = 0xBBB1BDFF} -- if a popup is displayed
	}
}
menu_settings.subtitle = {
	coords = {
		x = function() return menu_settings.window.coords.boxxlength/2 - (#ST_menu.subpage - 5)*2.15 end,
		y = menu_settings.window.coords.boxy + 26
	},
	colours = {
		active = {current = "white", adjacent = 0xBBB1BDFF},
		background = {current = 0x66586EFF, adjacent = 0xBBB1BDFF} -- if a popup is displayed
	}
}
-----------------------------
-- Selection
-----------------------------
menu_settings.selection = {
	coords = {
		x1 = menu_settings.window.coords.boxx + 20,
		x2 = menu_settings.window.coords.boxx2 - 20,
		y1 = function(button) return menu_settings.window.coords.boxy + button.y - 1 end,
		y2 =  function(button) return menu_settings.window.coords.boxy + button.y + 11 end
	},
	colours = {
		selected = {first = 0x3B077CFF, last = 0xBE2BBEFF, outline = 0xC492D0FF, core = 10},
		not_selected = {first = 0x360473FF, last = 0x3E077CFF, outline = 0x450B7CFF, core = 10},
	}
}
-----------------------------
-- Scrollbar
-----------------------------
menu_settings.scrollbar = {
	coords = {
		x1 = menu_settings.window.coords.boxx2 - 10, x2 = menu_settings.window.coords.boxx2 - 6, y1 = menu_settings.window.coords.boxy + 36, y2 = menu_settings.window.coords.boxy2 - 22
	},
	colours = {
		active = {core = 0x240233FF, bar = 0x9F2BA5FF, arrows = 0x9F2BA5FF},
		background = {core = 0x240233FF, bar = 0x9F2BA5FF, arrows = 0x9F2BA5FF}
	}
}
-----------------------------
-- Buttons
-----------------------------
menu_settings.buttons = {
	selector_button = {
		coords = {
			x = 22
		},
		arrows = {
			coords = {
				x1 = menu_settings.selection.coords.x2 - 150,
				x2 = menu_settings.selection.coords.x2 - 30,
				y = function(button) return menu_settings.window.coords.boxy + button.y + 2 end
			}
		},
		option = {
			colours = {
				-- Colour for the default value will more likely be the same as the button colour
				-- default = {
					-- active = {available = "white", not_available = 0x635570FF},
					-- background = {available = 0x66586EFF, not_available = 0x3C3146FF}
				-- },
				set = {
					active = {available = "yellow", not_available = 0x635570FF},
					background = {available = 0x66586EFF, not_available = 0x3C3146FF}
				}
			}
		}
	},
	check_button = {
		coords = {
			x = menu_settings.window.coords.boxxlength/2
		},
		checkbox = {
			coords = {
				x1 = menu_settings.window.coords.boxx + 37,
				x2 = menu_settings.window.coords.boxx + 57,
				y1 = menu_settings.window.coords.boxy + 1,
				y2 = menu_settings.window.coords.boxy + 9
			},
			colours = {
				inside = {
					on = {
						active = {available = 0x901EB5FF, not_available = 0x635570FF},
						background = {available = 0x66586EFF, not_available = 0x3C3146FF},
					},
					off = {
						active = {available = 0x3C3146FF, not_available = 0x635570FF},
						background = {available = 0x66586EFF, not_available = 0x3C3146FF},
					}
				},
				outline = {
					on = {
						active = {available =0xC492D0FF, not_available = 0x635570FF},
						background = {available = 0x66586EFF, not_available = 0x3C3146FF},
					},
					off = {
						active = {available = 0x66586EFF, not_available = 0x635570FF},
						background = {available = 0x66586EFF, not_available = 0x3C3146FF},
					}
				}
			}
		},
	},
	link_button = {
		coords = {
			x = menu_settings.window.coords.boxxlength/2
		}
	},
	gauge_button = {
		coords = {
			x = 22
		},
		gauge = {
			length = menu_settings.window.coords.boxxlength/2
		}
	},
	other_button = {
		coords = {
			x = menu_settings.window.coords.boxxlength/2
		}
	},
	space_below_title = 42,
	space_between_buttons = 15,
	colours = {
		active = {available = "white", not_available = 0x635570FF},
		background = {available = 0x66586EFF, not_available = 0x3C3146FF}
	},
	preset_pos = {}
}
MAX_BUT = 9 -- How many buttons can be displayed at the same time in a same page.
for i = 1, MAX_BUT do
	menu_settings.buttons.preset_pos[i] = menu_settings.buttons.space_below_title + menu_settings.buttons.space_between_buttons * (i-1)
end
menu_settings.buttons.preset_pos["hide"] = 1000
-----------------------------
-- Values Displayed
-----------------------------
menu_settings.display1 = {
	coords = {
		x = function(button) return menu_settings.selection.coords.x2 - #button.display1()*4 - 20 end,
		y = function(button) return menu_settings.window.coords.boxy + button.y + 2 end
	}
}
menu_settings.display2 = {
	coords = {
		x = function(button) return menu_settings.selection.coords.x2 - #button.display2()*4 - 70 end,
		y = function(button) return menu_settings.window.coords.boxy + button.y + 2 end
	}
}
-----------------------------
-- Popup
-----------------------------
menu_settings.popup = {
	coords = {
		y1 = menu_settings.window.coords.boxy + menu_settings.buttons.space_below_title - menu_settings.buttons.space_between_buttons/2 , y2 = 0
	},
	colours = {
		first = 0x150148FF, last = 0x420148FF, outline = 0xC492D0FF, core = 10
	}
}
-----------------------------
-- Functions
-----------------------------
menu_settings.functions = {
	["LP"] = "func1",
	["MP"] = "back",
	["HP"] = "Next Page",
	["LK"] = "func2",
	["MK"] = "func3",
	["HK"] = "Previous Page"
}
-----------------------------
-- Help
-----------------------------
menu_settings.button_help = {
	["func2"] = {
		coords = {
			x = menu_settings.selection.coords.x1 + 5,
			y = function(button) return menu_settings.selection.coords.y1(button) + 3 end
		},
		colour = "yellow"
	},
	["func3"] = {
		coords = {
			x = menu_settings.selection.coords.x2 - 13,
			y = function(button) return menu_settings.selection.coords.y1(button) + 3 end	
		},
		colour = "yellow"
	},
	["Previous Page"] = {
		coords = {
			x = menu_settings.window.coords.boxx + 5,
			y = menu_settings.window.coords.boxy + 14
		},
		colour = "yellow"
	},
	["Next Page"] = {
		coords = {
			x = menu_settings.window.coords.boxx2 - 13,
			y = menu_settings.window.coords.boxy + 14
		},
		colour = "yellow"
	},
}
menu_settings.option_desc = {
	coords = {
		x = menu_settings.window.coords.boxx + 10,
		y = menu_settings.window.coords.boxy2 + 3
	},
	colour = "white",
	max_char_per_line = 84
}
menu_settings.help = {
	key = "start", -- key to cycle through help options
	coords = {
		x = menu_settings.window.coords.boxx + 10,
		y = menu_settings.window.coords.boxy2 + 3
	},
	colour = "yellow"
}