character_specific.cammy.infos = {
	name = "Cammy",
	id = 0x0C,
	charge_character = false,
	has_projectile	 = false,
	stage = "England"
}

character_specific.cammy.throws = {
	"MP", "HP", "MK", "HK"
}

character_specific.cammy.specials = {
	{
    name = "Cannon Spike",
    memory_map = {
      {0x92, 0x06}
    },
	id = 0x00,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"forward"}, {"down"}, {"forward", "down"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Spiral Arrow",
    memory_map = {
      {0x96, 0x06}
    },
	id = 0x02,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"down"}, {"forward", "down"}, {"forward"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  },
  {
    name = "Spin Knuckle",
    memory_map = {
      {0xA2, 0x06}
    },
	id = 0x04,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = false,
    input = { {"back"}, {"back", "down"}, {"forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  }, 
  {
    name = "Hooligan Combination",
    memory_map = {
      {0xA9, 0x06} -- buggy
    },
	id = 0x08,
	strength_set = 2,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"back"}, {"down"}, {"forward", "down"}, {"up", "forward"} },
    input_variations = {{"LP"}, {"MP"}, {"HP"}},
  },
  {
    name = "Spin Drive Smasher",
    memory_map = {
      {0xA6, 0x08}
    },
	id = 0x06,
	strength_set = 0,
	charge_move = false,
	reversal = true,
	new_only = true,
    input = { {"down"}, {"forward", "down"}, {"forward"}, {"down"}, {"forward", "down"} },
    input_variations = {{"LK"}, {"MK"}, {"HK"}},
  }
}
character_specific.cammy.hitboxes = {
throw = {{"All Throws",42}},
throwable = 25,
}