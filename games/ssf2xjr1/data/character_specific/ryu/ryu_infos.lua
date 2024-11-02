character_specific.ryu.infos = {
	name = "Ryu",
	id = 0x00,
	charge_character = false,
	has_projectile	 = true,
	stage = "Japan"
}

character_specific.ryu.specials = {
  {
    name = "Hadouken",
    memory_map = {
      {0x94, 0x04}
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
    name = "Hurricane Kick",
    memory_map = {
      {0x90, 0x04}
    },
	id = 0x02,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"down"}, {"down", "back"}, {"back"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Shoryuken",
    memory_map = {
      {0x98, 0x04}
    },
	id = 0x04,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"forward"}, {"down"}, {"down", "forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Red Hadouken",
    memory_map = {
      {0xE0, 0x08}
    },
	id = 0x06,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"back"}, {"back", "forward"}, {"down"}, {"down", "forward"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Shinku Hadouken",
    memory_map = {
      {0xA0, 0x0A}
    },
	id = 0x08,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"down"}, {"down", "forward"}, {"forward"}, {"down"}, {"down", "forward"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  }
}
character_specific.ryu.throws = {"MP","HP","MK","HK"}
character_specific.ryu.hitboxes = {
throw = {{"All Throws",48}},
throwable = 29,
}