character_specific.sagat.infos = {
	name = "Sagat",
	id = 0x09,
	charge_character = false,
	has_projectile	 = true,
	stage = "Thailand"
}

character_specific.sagat.specials = {
  {
    name = "Tiger Shot Up",
    memory_map = {
      {0x88, 0x06}
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
    name = "Tiger Shot Low",
    memory_map = {
      {0x8C, 0x06}
    },
	id = 0x04,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"down"}, {"down", "forward"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Tiger Uppercut",
    memory_map = {
      {0x80, 0x06}
    },
	id = 0x02,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
	input = { {"forward"}, {"down"}, {"down", "forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Tiger Knee",
    memory_map = {
      {0x84, 0x06}
    },
	id = 0x06,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"down"}, {"forward"}, {"forward", "up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Tiger Genocide",
    memory_map = {
     {0x9E, 0x0A}
    },
    id = 0x08,
    strength_set = 0,
	charge_move = false,
	reversal = false,
	new_only = true,
    input = { {"down"}, {"forward", "down"}, {"forward"}, {"down"}, {"forward", "down"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}, {"LK"}, {"MK"}, {"HK"}},
  }
}
character_specific.sagat.throws = {"MP","HP"}
character_specific.sagat.hitboxes = {
throw = {{"All Throws",48}},
throwable = 32,
}