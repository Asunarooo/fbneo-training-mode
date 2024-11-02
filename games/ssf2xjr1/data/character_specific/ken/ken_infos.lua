character_specific.ken.infos = {
	name = "Ken",
	id = 0x04,
	charge_character = false,
	has_projectile = true,
	hold_grab = true,
	grab_id = {
		["MK"] = 0x07
	},
	stage = "USA"
}

character_specific.ken.addresses = {
	grab_counter = 0x1E,
}

character_specific.ken.throws = {
"MP","HP","MK","HK",
max_hold_timer = 120
}
character_specific.ken.hitboxes = {
throw = {{"All Throws",48}},
throwable = 29,
}

character_specific.ken.specials = {
  {
    name = "Hadouken",
    memory_map = {
      {0x94, 0x04}
    },
	id = 0x00,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"down"}, {"down", "forward"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },  
  {
    name = "Hurricane Kick",
    memory_map = {
      {0x90, 0x04}
    },
	id = 0x02,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"down"}, {"down", "back"}, {"back"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Shoryuken",
    memory_map = {
      {0x98, 0x04}
    },
	id = 0x04,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"forward"}, {"down"}, {"down", "forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Crazy Kick 1",
    memory_map = {
      {0xE6, 0x04}
    },
	id = 0x08,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"down"}, {"down", "forward"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Crazy Kick 2",
    memory_map = {
      {0xE8, 0x04}
    },
	id = 0x0A,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"forward"}, {"down", "forward"}, {"down"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Crazy Kick 3",
    memory_map = {
      {0xEA, 0x08}
    },
	id = 0x0C,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"back"}, {"down", "back"}, {"down"}, {"down", "forward"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Shoryureppa",
    memory_map = {
     {0xA0, 0x08}
    },
	id = 0x06,
	strength_set = 0,
	charge_move = false,
	reversal = false,
	new_only = true,
    input = { {"down"}, {"down", "forward"}, {"forward"}, {"down"}, {"down", "forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  }
}