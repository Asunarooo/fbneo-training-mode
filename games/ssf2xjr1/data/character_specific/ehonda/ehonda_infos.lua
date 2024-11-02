character_specific.ehonda.infos = {
	name = "Honda",
	id = 0x01,
	charge_character = true,
	has_projectile = false,
	hold_grab = true,
	grab_id = {
		["HP"] = 0x04,
		["HK"] = 0x07,
	},
	stage = "Japan"
}

character_specific.ehonda.addresses = {
	grab_counter = 0x1E,
}

character_specific.ehonda.throws = {
	"MP","HP","HK",
	max_hold_timer = 130,
}

character_specific.ehonda.hitboxes = {
	throw = {{"Oicho",69},{"Normal throws",64}},
	throwable = 28,
}

character_specific.ehonda.specials = {
	{
		name = "Flying Headbutt",
		memory_map = {
			new = {{0x88, 0x06}},
			old = {{0x80, 0x06}}
		},
		id = 0x00,
		new_only = false,
		charge_move = true,
		charge_address = {
			new = 0x89,
			old = 0x81,
		},
		charge_timer = 60,
		reversal = true,
		strength_set = {
			new = 2,
			old = 1
		},
		input = {{"back", "h_charge"}, {}, {"forward"}},
		input_variations = {{"LP"}, {"MP"}, {"HP"}},
	},
	{
		name = "Hundred Hands Slap",
		name_ab = "HHS",
		memory_map = {
			-- We load all variations
			new = {
				{0xC6, 0x05},
				{0xC8, 0x05},
				{0xCA, 0x05}
			},
			old = {
				{0x9A, 0x05},
				{0x9C, 0x05},
				{0x9E, 0x05}
			},
		},
		id = 0x02,
		new_only = false,
		charge_move = false,
		reversal = true,
		strength_set = {
			new = 2,
			old = 1
		},
		input = {{}},
		input_variations = {{"LP"}, {"MP"}, {"HP"}},
		input_mash = 4,
	},
	{
		name = "Butt Drop",
		memory_map = {
			new = {{0x90, 0x06}},
			old = {{0xAA, 0x06}},
		},
		id = 0x04,
		new_only = false,
		charge_move = true,
		charge_address = {
			new = 0x91,
			old = 0xAB,
		},
		charge_timer = 60,
		reversal = true,
		strength_set = {
			new = 2,
			old = 1
		},
		input = {{"down", "h_charge"}, {}, {"up"}},
		input_variations = {{"LK"}, {"MK"}, {"HK"}},
	},
	{
		name = "Oichio Throw",
		memory_map = {
			{0x96, 0x06}
		},
		id = 0x08,
		new_only = true,
		charge_move = false,
		reversal = true,
		strength_set = 0,
		input = {{"forward"}, {"forward", "down"}, {"down"}, {"back"}},
		input_variations = {{"LP"}, {"MP"}, {"HP"}},
		input_conservation_bug = true,
	},
	{
		name = "Double Headbutt",
		memory_map = {
			{0x94, 0x0A}
		},
		id = 0x06,
		new_only = true,
		charge_move = true,
		charge_address = 0x95,
		charge_timer = 60,
		reversal = true,
		strength_set = 0,
		input = {{"back", "h_charge"}, {}, {"forward"}, {"back"}, {"forward"}},
		input_variations = {{"LP"}, {"MP"}, {"HP"}},
		input_conservation_bug = true,
	}
}