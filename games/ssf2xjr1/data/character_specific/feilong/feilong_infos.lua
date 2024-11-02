character_specific.feilong.infos = {
	name = "Fei-Long",
	id = 0x0E,
	charge_character = false,
	has_projectile	 = false,
	stage = "HongKong"
	}

character_specific.feilong.specials = {
  {
    name = "Rekka", -- Should be tested if chained rekka works
    memory_map = {
      {0x90, 0x04},
      {0xA0, 0x04}
    },
	id = 0x00,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"down"}, {"down", "forward"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  --~ {
    --~ name = "Rekka 2",
    --~ memory_map = {
      --~ {0xA0, 0x04}
    --~ },
    --~ input = { {"down"}, {"down", "forward"}, {"forward"} },
    --~ input_variations = {{"LP"}, {"MP"}, {"HP"}},
  --~ },
  {
    name = "Flame Kick",
    memory_map = {
      {0x94, 0x04}
    },
	id = 0x02,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"back"}, {"down"}, {"down", "back"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Chicken Wing", -- Seems buggy
    memory_map = {
      {0xB4, 0x06}
    },
	id = 0x06,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"back"}, {"down"}, {"forward", "down"}, {"forward", "up"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}} -- only lk works
  },
  {
    name = "Rekka Sinken",
    memory_map = {
      {0xB0, 0x0A}
    },
	id = 0x04,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
     input = { {"down"}, {"down", "forward"}, {"forward"}, {"down"}, {"down", "forward"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  }
}
character_specific.feilong.throws = {"MP","HP","MK","HK"}
character_specific.feilong.hitboxes = {
throw = {{"All Throws",40}},
throwable = 29,
}