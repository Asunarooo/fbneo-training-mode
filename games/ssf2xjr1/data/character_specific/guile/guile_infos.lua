character_specific.guile.infos = {
	name = "Guile",
	id = 0x03,
	charge_character = true,
	has_projectile	 = true,
	stage = "USA"
}

character_specific.guile.specials = {
  {
    name = "Sonic Boom",
    memory_map = {
      {0x80, 0x06}
    },
	id = 0x00,
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
    name = "Flash Kick",
    memory_map = {
      {0x86, 0x06}
    },
	id = 0x02,
	charge_address = 0x87,
	strength_set = 1,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = false,
    input = { {"down", "v_charge"}, {"up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Double Somersault",
    memory_map = {
      {0x94, 0x0A}
    },
	id = 0x04,
	charge_address = 0x95,
	strength_set = 0,
	charge_move = true,
	charge_timer = 60,
	reversal = true,
	new_only = true,
    input = { {"down", "v_charge"}, {"forward"}, {"back"}, {"up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  }
}
character_specific.guile.throws = {"MP","HP"}
character_specific.guile.hitboxes = {
throw = {{"All Throws",48}},
throwable = 30,
}