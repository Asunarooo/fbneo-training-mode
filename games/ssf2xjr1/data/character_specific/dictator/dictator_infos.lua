character_specific.dictator.infos = {
	name = "Dictator",
	id = 0x08,
	charge_character = true,
	has_projectile	 = false,
	stage = "Thailand"
}

character_specific.dictator.throws = {
	"MP","HP"
}
character_specific.dictator.hitboxes = {
throw = {{"All Throws",52}},
throwable = 28,
}

character_specific.dictator.specials = {
  {
    name = "Psycho Crusher",
    memory_map = {
      {0x80, 0x06}
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
    name = "Scissor Kick",
    memory_map = {
      {0x88, 0x06}
    },
	id = 0x02,
	buffer_ini_val = 0x02,
	charge_address = 0x89,
	strength_set = 1,
	charge_move = true,
	charge_timer = 78,
	reversal = true,
	new_only = false,
    input = { {"back", "h_charge"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Head Stomp",
    memory_map = {
      {0x91, 0x06}
    },
	id = 0x04,
	buffer_ini_val = 0x02,
	charge_address = 0x92,
	strength_set = 1,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = false,
    input = { {"down", "h_charge"}, {"up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Devil's Reverse",
    memory_map = {
      {0xAC, 0x06}
    },
	id = 0x06,
	buffer_ini_val = 0x00,
	charge_address = 0xAD,
	strength_set = 2,
	charge_move = true,
	charge_timer = 61,
	reversal = {
		new = true,
		old = false
	},
	new_only = false,
    input = { {"down", "h_charge"}, {"up"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Knee Press Nightmare",
    memory_map = {
      {0xC5, 0x0A}
    },
	id = 0x08,
	buffer_ini_val = 0x02,
	charge_address = 0xC6,
	strength_set = 0,
	charge_move = true,
	charge_timer = 70,
	reversal = true,
	new_only = true,
    input = { {"back", "h_charge"}, {"forward"}, {"back"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  }
}