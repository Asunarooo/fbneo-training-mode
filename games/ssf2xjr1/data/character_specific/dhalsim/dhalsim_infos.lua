character_specific.dhalsim.infos = {
	name = "Dhalsim",
	id = 0x07,
	charge_character = false,
	has_projectile	 = true,
	hold_grab = true,
	grab_id = {
		["MP"] = 0x06
	},
	stage = "India"
}

character_specific.dhalsim.addresses = {
	grab_counter = 0x1E,
}

character_specific.dhalsim.throws = {
"MP","HP",
max_hold_timer = 180,
}
character_specific.dhalsim.hitboxes = {
throw = {{"All Throws",64}},
throwable = 35,
}

character_specific.dhalsim.specials = { 
  {
    name = "Yoga Fire",
    memory_map = {
      {0x80, 0x04}
    },
	id = 0x00,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"down"}, {"forward", "down"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Yoga Flame",
    memory_map = {
      new = {{0x84, 0x08}},
	  old = {{0x84, 0x08}},
    },
	id = 0x02,
	strength_set = 2,
	reversal = true,
	new_only = false,
	charge_move = false,
    input = { {"back"}, {"back", "down"}, {"down"}, {"forward", "down"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Yoga Blast",
    memory_map = {
      {0x9A, 0x08}
    },
	id = 0x08,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"back"}, {"forward", "down"}, {"down"}, { "forward", "down"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
   {
    name = "Yoga Teleport",
    memory_map = {
      {0x88, 0x06}
    },
	id = 0x04,
	strength_set = 3,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = {{"forward"}, {"down"}, {"forward", "down"}}, -- fixme, should include {"back"}, {"down"}, {"back", "down"}
    input_variations = {{"F+P"},{"F+K"},{"B+P"},{"B+K"}},
  },
  {
    name = "Yoga Inferno",
    memory_map = {
     {0x96, 0x10}
    },
    id = 0x06,
    strength_set = 0,
	charge_move = false,
	reversal = false,
	new_only = true,
    input = { {"back"},{"back", "down"},{"down"},{"forward", "down"},{"back"},{"back", "down"},{"down"},{"forward", "down"},{"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  }
}