character_specific.boxer.infos = {
	name = "Boxer",
	id = 0x0A,
	charge_character = true,
	has_projectile	 = false,
	hold_grab = true,
	grab_id = {
		["MP"] = 0x05,
		["HP"] = 0x06,
	},
	stage = "USA"
}

character_specific.boxer.addresses = {
	grab_counter = 0x95, -- byte
	tap_level = {
		punch = 0xB6, -- word
		kick = 0xB8, -- word
	}
}

character_specific.boxer.throws = {
"MP","HP",
max_hold_timer = 210,
}
character_specific.boxer.hitboxes = {
throw = {}, -- may vary, see below getBoxerThrowDistance()
throwable = 27,
}

character_specific.boxer.specials = {
	{
    name = "Straight",
    memory_map = {
      {0x80, 0x06}
    },
	id = 0x00,
	charge_address = 0x81,
	buffer_ini_val = 0x02,
	strength_set = 1,
	charge_move = true,
	charge_timer = 70,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {"neutral"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Upper Dash",
    memory_map = {
      {0x88, 0x06}
    },
	id = 0x02,
	charge_address = 0x89,
	buffer_ini_val = 0x02,
	strength_set = 1,
	charge_move = true,
	charge_timer = {
		new = 60,
		old = 62
	},
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {"neutral"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Buffalo Headbutt",
    memory_map = {
      {0xC0, 0x06}
    },
	id = 0x06,
	charge_address = 0xC1,
	buffer_ini_val = 0x00,
	strength_set = 1,
	charge_move = true,
	charge_timer = 65,
	reversal = true,
	new_only = false,
    input = { {"down", "v_charge"}, {"neutral"}, {"up"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Ground Straight",
    memory_map = {
	  {0xDD, 0x06},
    },
	id = 0x0A,
	charge_address = 0xD7,
	buffer_ini_val = 0x02,
	strength_set = 1,
	charge_move = true,
	charge_timer = 70,
	reversal = true,
	new_only = true,
    input = { {"back", "h_charge"}, {"neutral"}, {"forward", "down"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Ground Upper",
    memory_map = {
      {0xDD, 0x06},
    },
	id = 0x0C,
	charge_address = 0xDE,
	buffer_ini_val = 0x02,
	strength_set = 1,
	charge_move = true,
	charge_timer = 62,
	reversal = true,
	new_only = true,
    input = { {"back", "h_charge"}, {"neutral"}, {"forward", "down"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
   name = "TAP", -- Modified to fit makeReversalSettingsButtons()
   memory_map = {
    {0xB6, 0001} -- More values need to be added
    },
	id = 0x04,
	buffer_ini_val = 0x00,
	strength_set = 3,
	charge_move = false,
	reversal = true,
	new_only = false,
	hide_in_hud = true,
    input = {{}},
    input_variations = {{"1"},{"2"},{"3"},{"4"},{"5"},{"6"},{"7"},{"Final"}},
   },
   {
    name = "TAP Punch",
    memory_map = {
      {0xB6, 0001} -- More values need to be added
      },
	id = 0x04,
	buffer_ini_val = 0x00,
	strength_set = 3,
	reversal = false,
	new_only = false,
	charge_move = false,
	hide_in_hud = true,
    input = {{}},
    input_variations = {{"LP", "MP", "HP"}},
   },
   {
    name = "TAP Kick",
    memory_map = {
      {0xB8, 0001} -- More values need to be added
      },
	id = 0x04,
	buffer_ini_val = 0x00,
	strength_set = 3,
	charge_move = false,
	reversal = false,
	new_only = false,
	hide_in_hud = true,
    input = {{}},
    input_variations = {{"LK", "MK", "HK"}},
   },
  {
    name = "Crazy Buffalo",
    memory_map = {
      {0xD4, 0x0A}
    },
	id = 0x08,
	charge_address = 0xD5,
	buffer_ini_val = 0x02,
	strength_set = 0,
	charge_move = true,
	charge_timer = 70,
	reversal = true,
	new_only = true,
    input = { {"back", "h_charge"}, {"neutral"}, {"forward"}, {"back"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}, {"LK"}, {"MK"}, {"HK"}},
  }
}