character_specific.claw.infos = {
	name = "Claw",
	id = 0x0B,
	charge_character = true,
	has_projectile	 = false,
	stage = "Spain"
}

character_specific.claw.throws = {
	"MP","HP"
}

character_specific.claw.hitboxes = {
throw = {{"All Throws",48}},
throwable = 28,
}

character_specific.claw.specials = { 
	{
    name = "Crystal Flash",
    memory_map = {
      {0x88, 0x06}
    },
	id = 0x00,
	buffer_ini_val = 0x00,
	charge_address = 0x89,
	strength_set = 2,
	charge_move = true,
	charge_timer = 71,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Wall Dive (Kick)",
    memory_map = {
      {0x8C, 0x06} -- broken
    },
	id = 0x02,
	buffer_ini_val = 0x00,
	charge_address = 0x8D,
	strength_set = 2,
	charge_move = true,
	charge_timer = 61,
	reversal = true,
	new_only = false,
    input = { {"down", "h_charge"}, {"up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Wall Dive (Punch)",
    memory_map = {
      {0x90, 0x06}
    },
	id = 0x06,
	buffer_ini_val = 0x00,
	charge_address = 0x91,
	strength_set = 2,
	charge_move = true,
	charge_timer = 61,
	reversal = true,
	new_only = false,
    input = { {"down", "h_charge"}, {"up"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Flip Kick",
    memory_map = {
      {0x9D, 0x06}
    },
	id = 0x0C,
	buffer_ini_val = 0x00,
	charge_address = 0x9E,
	strength_set = 2,
	charge_move = true,
	charge_timer = 71,
	reversal = true,
	new_only = true,
    input = { {"down", "back", "h_charge"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Back Flip (Punch)",
    memory_map = {},
    input = {{}},
	id = 0x04,
	strength_set = 0,
	charge_move = false,
	buffer_ini_val = 0x00,
	reversal = true,
	new_only = false,
    input_variations = {{"LP", "MP", "HP"}},
  },  
  {
    name = "Back Flip (Kick)",
    memory_map = {},
    input = {{}},
	id = 0x08,
	strength_set = 0,
	charge_move = false,
	buffer_ini_val = 0x00,
	reversal = true,
	new_only = false,
    input_variations = {{"LK", "MK", "HK"}},
  },
  {
    name = "Rolling Izuna Drop",
    memory_map = {
      {0x99, 0x0A}
    },
	id = 0x0A,
	buffer_ini_val = 0x00,
	charge_address = 0x9A,
	strength_set = 0,
	charge_move = true,
	charge_timer = 61,
	reversal = true,
	new_only = true,
    input = { {"down", "h_charge"}, {"forward"}, {"back"}, {"up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  }
}