character_specific.zangief.infos = {
	name = "Zangief",
	id = 0x06,
	charge_character = false,
	has_projectile	 = false,
	hold_grab = true,
	grab_id = {
		["Cr MP/HP"] = 0x03,
		["HP"] = 0x05,
		["HK"] = 0x06,
	},
	stage = "USSR"
}

character_specific.zangief.addresses = {
	grab_counter = 0x89,
}

character_specific.zangief.throws = {
"MP","HP","MK","HK",
max_hold_timer = 180,
}
character_specific.zangief.hitboxes = {
throw = {{"SPD",111},{"HK Suplex",83},{"Normal Throws",69},{"MK Suplex",69},{"LK Suplex",66},{"720",64}},--, {138}, {147}, {155}},
throwable = 45,
}

character_specific.zangief.specials = { 
  {
    name = "Spinning Pile Driver",
    memory_map = {
      {0x80,0x08}
    },
	id = 0x02,
	strength_set = 1,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = {{"back"}, {"down"}, {"forward"}, {"up"}},
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Bear Grab",
    memory_map = {
      {0x9B,0x06}
    },
	id = 0x04,
	strength_set = 1,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = {{"back"}, {"down"}, {"forward"}, {"up"}},
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
 
  {
    name = "Banishing Flat",
    memory_map = {
      {0xB3, 0x06}
    },
	id = 0x0A,
	strength_set = 1,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"forward"}, {"forward", "down"}, {"down"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Lariat (Punch)",
	id = 0x00,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = {{}},
    input_variations = {{"LP","MP","HP"}},
  },
   {
    name = "Lariat (Kick)",
	id = 0x0,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = {{}},
    input_variations = {{"LK","MK","HK"}},
  },
  {
    name = "Final Atomic Buster",
    memory_map = {
      {0xAC, 0x10}
    },
	id = 0x08,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = {{"back"}, {"down"}, {"forward"}, {"up"}, {"back"}, {"down"}, {"forward"}, {"up"}},
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  }
}