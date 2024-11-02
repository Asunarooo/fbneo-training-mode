character_specific.thawk.infos = {
	name = "T-Hawk",
	id = 0x0D,
	charge_character = false,
	has_projectile	 = false,
	hold_grab = true,
	grab_id = {
		["HP"] = 0x06,
		["HK"] = 0x07,
	},
	stage = "Mexico"
}

character_specific.thawk.addresses = {
	grab_counter = 0x1E,
}

character_specific.thawk.throws = {
"MP","HP","HK",
max_hold_timer = 120,
}
character_specific.thawk.hitboxes = {
throw = {{"Mexican Typhoon",83},{"Normal throws",48}},
throwable = 35,
}

character_specific.thawk.specials = { 
 {
    name = "Tomahawk",
    memory_map = {
      new = {{0x8D, 0x04}},
	  old = {{0x92, 0x04}}
    },
	id = 0x00,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
	input = { {"forward"}, {"down"}, {"down", "forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Mexican Typhoon",
    memory_map = {
		new = {{0x92,0x06}},
		old = {{0x9A,0x08}}
    },
	id = 0x04,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = {{"back"}, {"down"}, {"forward"}, {"up"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Double Typhoon",
    memory_map = {
		{0x9E,0x10},
    },
	id = 0x06,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = {{"back"}, {"down"}, {"forward"}, {"up"}, {"back"}, {"down"}, {"forward"}, {"up"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  }
}