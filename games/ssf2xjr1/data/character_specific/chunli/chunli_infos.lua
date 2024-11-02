character_specific.chunli.infos = {
	name = "Chun-Li",
	id = 0x05,
	charge_character = true,
	has_projectile	 = true,
	stage = "China"
}

character_specific.chunli.throws = {"MP","HP"}

character_specific.chunli.hitboxes = {
throw = {{"All Throws",48}},
throwable = 25,
}

character_specific.chunli.specials = {
	{
    name = "Spinning Bird Kick",
	name_ab = "Spinning Bird",
    memory_map = {
      {0xB0, 0x06}
    },
	id = 0x00,
	charge_address = 0xC0,
	strength_set = 1,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Hyakuretsukyaku",
	name_ab = "Hyakuretsu.",
    memory_map = {
      -- We load all variations
      {0x9A, 0x05},
      {0x9C, 0x05},
      {0x9E, 0x05}
    },
	id = 0x02,
	strength_set = 1,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = {{}},
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
	input_mash = 4,
  },
  {
    name = "Kikouken",
    memory_map = {
      new = {{0x80, 0x06}},
	  old = {{0xB0, 0x06}},
    },
	id = 0x04,
	charge_address = 0x81,
	strength_set = 2,
	charge_move = true,
	charge_timer = 61,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Up Kicks",
    memory_map = {
      {0xBA, 0x06}
    },
	id = 0x06,
	charge_address = 0xBB,
	strength_set = 2,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = true,
    input = { {"down", "h_charge"}, {}, {"up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Senretsukyaku",
    memory_map = {
      {0xBF, 0x0A}
    },
	id = 0x08,
	new_only = true,
	charge_move = true,
	charge_address = 0xB1,
	charge_timer = 60,
	reversal = true,
	strength_set = 0,
    input = {{"back", "h_charge"}, {}, {"forward"}, {"back"}, {"forward"}},
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
	input_conservation_bug = true, -- the buffer won't reset if last input is hold
	charge_update_bug = true, -- charge value is not updated as other moves (no in-game consequences but mess with ST_HUD)
  }
}