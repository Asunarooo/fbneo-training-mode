character_specific.deejay.infos = {
	name = "Deejay",
	id = 0x0F,
	charge_character = true,
	has_projectile	 = true,
	stage = "Jamaica"
}

character_specific.deejay.throws = {
"MP","HP","MK","HK"
}
character_specific.deejay.hitboxes = {
throw = {{"All Throws",48}},
throwable = 30,
}

character_specific.deejay.specials = { 
  {
    name = "Sobat Kick",
    memory_map = {
      {0xA6, 0x06}
    },
	id = 0x00,
	buffer_ini_val = 0x00,
	charge_address = 0x93,
	strength_set = 2,
	charge_move = true,
	charge_timer = 61,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  }, 
  {
    name = "Machine Gun Upper",
    memory_map = {
      new = {{0xAB, 0x06}},
	  old = {{0x96, 0x06}}
    },
	id = 0x02,
	buffer_ini_val = 0x02,
	charge_address = 0x97,
	strength_set = 2,
	charge_move = true,
	charge_timer = 61,
	reversal = true,
	new_only = false,
    input = { {"down", "h_charge"}, {}, {"up"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Air Slasher",
    memory_map = {
      {0x92, 0x01}
    },
	id = 0x04,
	buffer_ini_val = 0x00,
	charge_address = 0xA7,
	strength_set = 2,
	charge_move = true,
	charge_timer = 61,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Jack Knife",
    memory_map = {
      {0x96, 0x06}
    },
	id = 0x06,
	buffer_ini_val = 0x02,
	charge_address = 0xAC,
	strength_set = 2,
	charge_move = true,
	charge_timer = 61,
	reversal = true,
	new_only = true,
    input = { {"down", "h_charge"}, {}, {"up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Sobat Carnival",
    memory_map = {
      {0xAF, 0x0A}
    },
	id = 0x08,
	buffer_ini_val = 0x02,
	charge_address = 0xB0,
	strength_set = 0,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = true,
    input = { {"back", "h_charge"}, {}, {"forward"}, {"back"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  }
}