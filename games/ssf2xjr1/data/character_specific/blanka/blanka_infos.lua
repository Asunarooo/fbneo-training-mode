character_specific.blanka.infos = {
	name = "Blanka",
	id = 0x02,
	charge_character = true,
	has_projectile	 = false,
	hold_grab = true,
	stage = "Brazil"
}

character_specific.blanka.addresses = {
	grab_counter = 0x1E,
}

character_specific.blanka.throws = {
	{
		key = "HP",
		id = 0x07,
		hold = true,
		max_hold_timer = 130
	}
}

character_specific.blanka.hitboxes = {
throw = {{"HP", 64}},
throwable = 30, 
}

character_specific.blanka.specials = {
  {
    name = "Normal roll",
    memory_map = {
      {0xB9, 0x06}
    },
	id = 0x00,
	buffer_ini_val = 0x02,
	charge_address = 0x81,
	strength_set = 1,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Vertical Roll",
    memory_map = {
      {0xB0, 0x06}
    },
	id = 0x04,
	buffer_ini_val = 0x02,
	charge_address = 0xB4,
	strength_set = 1,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = false,
    input = { {"down", "h_charge"}, {"up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Rainbow Roll",
    memory_map = {
      {0xB9, 0x06}
    },
	id = 0x06,
	buffer_ini_val = 0x02,
	charge_address = 0xBA,
	strength_set = 1,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Electric Thunder",
	name_ab = "Electricity",
    memory_map = {
      -- We load all variations
      {0x9A, 0x05},
      {0x9C, 0x05},
      {0x9E, 0x05}
    },
	id = 0x02,
	buffer_ini_val = 0x00,
	strength_set = 1,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = {{}},
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
	input_mash = 5,
  },
  {
    name = "Forward Dash",
    memory_map = {
		{0xC1, 0x0A} -- A changer
    },
	id = 0x0A,
	buffer_ini_val = 0x00,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
	hide_in_hud = true,
    input = { {"forward"} },
    input_variations = {{"LK", "MK", "HK"}},
  },
  {
    name = "Backward Dash",
    memory_map = {
		{0xC1, 0x0A} -- A changer
    },
	id = 0x0C,
	buffer_ini_val = 0x00,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
	hide_in_hud = true,
    input = { {"back"} },
    input_variations = {{"LK", "MK", "HK"}},
  },
  {
    name = "Ground Shave Roll",
    memory_map = {
      {0xC1, 0x0A}
    },
	id = 0x08,
	buffer_ini_val = 0x02,
	charge_address = 0xC2,
	strength_set = 0,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = true,
    input = { {"back", "h_charge"}, {"forward"}, {"back"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  }
}