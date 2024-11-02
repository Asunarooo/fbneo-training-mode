-- Copy in the correct fields what's written in guile_[...]_boxes.lua
character_specific.guile.boxes = {
	push = {
		["1"] = {type="push", id=1, address=0x19A1B6, hrad=18, hval=0, vrad=39, vval=38},
		["2"] = {type="push", id=2, address=0x19A1BA, hrad=18, hval=0, vrad=25, vval=63},
		["3"] = {type="push", id=3, address=0x19A1BE, hrad=18, hval=0, vrad=25, vval=24},
	},
	vulnerability = {
		top = {
			["1"] = {type="vulnerability", id=1, address=0x199BBE, hrad=13, hval=15, vrad=10, vval=80},
			["2"] = {type="vulnerability", id=2, address=0x199BC2, hrad=11, hval=1, vrad=10, vval=85},
			["4"] = {type="vulnerability", id=4, address=0x199BCA, hrad=13, hval=20, vrad=10, vval=84},
			["5"] = {type="vulnerability", id=5, address=0x199BCE, hrad=13, hval=41, vrad=10, vval=83},
			["6"] = {type="vulnerability", id=6, address=0x199BD2, hrad=13, hval=43, vrad=10, vval=71},
			["7"] = {type="vulnerability", id=7, address=0x199BD6, hrad=13, hval=30, vrad=10, vval=55},
			["8"] = {type="vulnerability", id=8, address=0x199BDA, hrad=13, hval=0, vrad=10, vval=50},
			["9"] = {type="vulnerability", id=9, address=0x199BDE, hrad=13, hval=-19, vrad=10, vval=55},
			["10"] = {type="vulnerability", id=10, address=0x199BE2, hrad=13, hval=-28, vrad=10, vval=84},
			["11"] = {type="vulnerability", id=11, address=0x199BE6, hrad=13, hval=-34, vrad=10, vval=81},
			["12"] = {type="vulnerability", id=12, address=0x199BEA, hrad=13, hval=12, vrad=10, vval=49},
			["22"] = {type="vulnerability", id=22, address=0x199C12, hrad=13, hval=35, vrad=10, vval=75},
			["27"] = {type="vulnerability", id=27, address=0x199C26, hrad=13, hval=28, vrad=10, vval=90},
			["28"] = {type="vulnerability", id=28, address=0x199C2A, hrad=13, hval=-13, vrad=10, vval=18},
			["29"] = {type="vulnerability", id=29, address=0x199C2E, hrad=13, hval=-23, vrad=10, vval=21},
			["30"] = {type="vulnerability", id=30, address=0x199C32, hrad=13, hval=25, vrad=10, vval=23},
			["31"] = {type="vulnerability", id=31, address=0x199C36, hrad=13, hval=23, vrad=10, vval=49},
			["32"] = {type="vulnerability", id=32, address=0x199C3A, hrad=27, hval=42, vrad=35, vval=69},
			["33"] = {type="vulnerability", id=33, address=0x199C3E, hrad=26, hval=22, vrad=14, vval=77},
			["34"] = {type="vulnerability", id=34, address=0x199C42, hrad=18, hval=16, vrad=20, vval=95},
			["35"] = {type="vulnerability", id=35, address=0x199C46, hrad=43, hval=71, vrad=19, vval=71},
			["42"] = {type="vulnerability", id=42, address=0x199C62, hrad=34, hval=26, vrad=21, vval=73},
			["43"] = {type="vulnerability", id=43, address=0x199C66, hrad=35, hval=18, vrad=33, vval=67},
			["44"] = {type="vulnerability", id=44, address=0x199C6A, hrad=33, hval=30, vrad=24, vval=80},
			["45"] = {type="vulnerability", id=45, address=0x199C6E, hrad=13, hval=-3, vrad=10, vval=83},
			["46"] = {type="vulnerability", id=46, address=0x199C72, hrad=13, hval=-3, vrad=10, vval=106},
			["47"] = {type="vulnerability", id=47, address=0x199C76, hrad=13, hval=-3, vrad=10, vval=109},
			["50"] = {type="vulnerability", id=50, address=0x199C82, hrad=13, hval=25, vrad=10, vval=85},
			["51"] = {type="vulnerability", id=51, address=0x199C86, hrad=32, hval=29, vrad=11, vval=72},
			["52"] = {type="vulnerability", id=52, address=0x199C8A, hrad=13, hval=-21, vrad=10, vval=80},
			["53"] = {type="vulnerability", id=53, address=0x199C8E, hrad=13, hval=-11, vrad=10, vval=80},
			["54"] = {type="vulnerability", id=54, address=0x199C92, hrad=23, hval=-13, vrad=18, vval=77},
			["55"] = {type="vulnerability", id=55, address=0x199C96, hrad=41, hval=9, vrad=10, vval=83},
		},
		middle = {
			["1"] = {type="vulnerability", id=1, address=0x199CA2, hrad=23, hval=9, vrad=20, vval=54},
			["2"] = {type="vulnerability", id=2, address=0x199CA6, hrad=21, hval=12, vrad=12, vval=66},
			["4"] = {type="vulnerability", id=4, address=0x199CAE, hrad=15, hval=19, vrad=15, vval=74},
			["5"] = {type="vulnerability", id=5, address=0x199CB2, hrad=16, hval=16, vrad=17, vval=71},
			["6"] = {type="vulnerability", id=6, address=0x199CB6, hrad=19, hval=16, vrad=10, vval=71},
			["7"] = {type="vulnerability", id=7, address=0x199CBA, hrad=19, hval=6, vrad=10, vval=69},
			["8"] = {type="vulnerability", id=8, address=0x199CBE, hrad=16, hval=-4, vrad=12, vval=67},
			["9"] = {type="vulnerability", id=9, address=0x199CC2, hrad=16, hval=-7, vrad=12, vval=77},
			["10"] = {type="vulnerability", id=10, address=0x199CC6, hrad=17, hval=-15, vrad=13, vval=70},
			["11"] = {type="vulnerability", id=11, address=0x199CCA, hrad=20, hval=5, vrad=11, vval=34},
			["16"] = {type="vulnerability", id=16, address=0x199CDE, hrad=16, hval=32, vrad=14, vval=53},
			["20"] = {type="vulnerability", id=20, address=0x199CEE, hrad=19, hval=25, vrad=19, vval=61},
			["21"] = {type="vulnerability", id=21, address=0x199CF2, hrad=18, hval=1, vrad=14, vval=36},
			["22"] = {type="vulnerability", id=22, address=0x199CF6, hrad=17, hval=3, vrad=15, vval=30},
			["23"] = {type="vulnerability", id=23, address=0x199CFA, hrad=18, hval=0, vrad=16, vval=32},
			["25"] = {type="vulnerability", id=25, address=0x199D02, hrad=27, hval=21, vrad=45, vval=45},
			["29"] = {type="vulnerability", id=29, address=0x199D12, hrad=27, hval=21, vrad=39, vval=51},
			["30"] = {type="vulnerability", id=30, address=0x199D16, hrad=25, hval=44, vrad=39, vval=52},
			["32"] = {type="vulnerability", id=32, address=0x199D1E, hrad=28, hval=14, vrad=20, vval=54},
			["33"] = {type="vulnerability", id=33, address=0x199D22, hrad=21, hval=-3, vrad=15, vval=62},
			["34"] = {type="vulnerability", id=34, address=0x199D26, hrad=21, hval=-3, vrad=21, vval=78},
			["35"] = {type="vulnerability", id=35, address=0x199D2A, hrad=22, hval=0, vrad=32, vval=76},
			["36"] = {type="vulnerability", id=36, address=0x199D2E, hrad=21, hval=-3, vrad=15, vval=85},
			["39"] = {type="vulnerability", id=39, address=0x199D3A, hrad=23, hval=20, vrad=20, vval=54},
			["40"] = {type="vulnerability", id=40, address=0x199D3E, hrad=23, hval=-14, vrad=20, vval=54},
			["41"] = {type="vulnerability", id=41, address=0x199D42, hrad=49, hval=44, vrad=13, vval=54},
			["42"] = {type="vulnerability", id=42, address=0x199D46, hrad=23, hval=-7, vrad=20, vval=54},
		},
		 bottom = {
			["1"] = {type="vulnerability", id=1, address=0x199D4E, hrad=22, hval=4, vrad=21, vval=20},
			["2"] = {type="vulnerability", id=2, address=0x199D52, hrad=21, hval=12, vrad=7, vval=50},
			["3"] = {type="vulnerability", id=3, address=0x199D56, hrad=17, hval=-3, vrad=18, vval=57},
			["4"] = {type="vulnerability", id=4, address=0x199D5A, hrad=11, hval=-10, vrad=17, vval=74},
			["5"] = {type="vulnerability", id=5, address=0x199D5E, hrad=17, hval=5, vrad=8, vval=83},
			["6"] = {type="vulnerability", id=6, address=0x199D62, hrad=19, hval=6, vrad=8, vval=84},
			["7"] = {type="vulnerability", id=7, address=0x199D66, hrad=10, hval=15, vrad=14, vval=75},
			["8"] = {type="vulnerability", id=8, address=0x199D6A, hrad=11, hval=7, vrad=14, vval=61},
			["9"] = {type="vulnerability", id=9, address=0x199D6E, hrad=12, hval=5, vrad=17, vval=59},
			["10"] = {type="vulnerability", id=10, address=0x199D72, hrad=20, hval=5, vrad=12, vval=11},
			["11"] = {type="vulnerability", id=11, address=0x199D76, hrad=35, hval=27, vrad=21, vval=18},
			["14"] = {type="vulnerability", id=14, address=0x199D82, hrad=31, hval=16, vrad=23, vval=21},
			["15"] = {type="vulnerability", id=15, address=0x199D86, hrad=51, hval=50, vrad=15, vval=14},
			["16"] = {type="vulnerability", id=16, address=0x199D8A, hrad=18, hval=32, vrad=14, vval=41},
			["17"] = {type="vulnerability", id=17, address=0x199D8E, hrad=17, hval=3, vrad=15, vval=56},
			["26"] = {type="vulnerability", id=26, address=0x199DB2, hrad=45, hval=29, vrad=15, vval=14},
			["27"] = {type="vulnerability", id=27, address=0x199DB6, hrad=64, hval=46, vrad=15, vval=14},
			["28"] = {type="vulnerability", id=28, address=0x199DBA, hrad=40, hval=21, vrad=20, vval=60},
			["29"] = {type="vulnerability", id=29, address=0x199DBE, hrad=60, hval=41, vrad=20, vval=60},
			["30"] = {type="vulnerability", id=30, address=0x199DC2, hrad=47, hval=23, vrad=19, vval=53},
			["31"] = {type="vulnerability", id=31, address=0x199DC6, hrad=40, hval=23, vrad=19, vval=53},
			["32"] = {type="vulnerability", id=32, address=0x199DCA, hrad=33, hval=5, vrad=21, vval=18},
			["33"] = {type="vulnerability", id=33, address=0x199DCE, hrad=37, hval=22, vrad=23, vval=22},
			["34"] = {type="vulnerability", id=34, address=0x199DD2, hrad=32, hval=58, vrad=27, vval=25},
			["37"] = {type="vulnerability", id=37, address=0x199DDE, hrad=41, hval=35, vrad=12, vval=11},
			["38"] = {type="vulnerability", id=38, address=0x199DE2, hrad=21, hval=-3, vrad=9, vval=42},
			["39"] = {type="vulnerability", id=39, address=0x199DE6, hrad=53, hval=28, vrad=10, vval=54},
			["40"] = {type="vulnerability", id=40, address=0x199DEA, hrad=22, hval=-2, vrad=18, vval=39},
			["41"] = {type="vulnerability", id=41, address=0x199DEE, hrad=40, hval=33, vrad=10, vval=78},
			["42"] = {type="vulnerability", id=42, address=0x199DF2, hrad=21, hval=13, vrad=24, vval=55},
			["43"] = {type="vulnerability", id=43, address=0x199DF6, hrad=22, hval=-2, vrad=10, vval=47},
			["44"] = {type="vulnerability", id=44, address=0x199DFA, hrad=54, hval=0, vrad=15, vval=56},
			["45"] = {type="vulnerability", id=45, address=0x199DFE, hrad=22, hval=-16, vrad=21, vval=20},
		},
	},
	attack = {
		["1"] = {type="attack", id=1, address=0x199E12, hrad=25, hval=55, vrad=9, vval=72},
		["3"] = {type="attack", id=3, address=0x199E32, hrad=31, hval=40, vrad=9, vval=72},
		["4"] = {type="attack", id=4, address=0x199E42, hrad=30, hval=60, vrad=6, vval=60},
		["5"] = {type="attack", id=5, address=0x199E52, hrad=30, hval=57, vrad=12, vval=73},
		["6"] = {type="attack", id=6, address=0x199E62, hrad=31, hval=101, vrad=7, vval=78},
		["7"] = {type="attack", id=7, address=0x199E72, hrad=38, hval=48, vrad=12, vval=40},
		["8"] = {type="attack", id=8, address=0x199E82, hrad=29, hval=43, vrad=28, vval=87},
		["9"] = {type="attack", id=9, address=0x199E92, hrad=30, hval=56, vrad=17, vval=46},
		["10"] = {type="attack", id=10, address=0x199EA2, hrad=40, hval=60, vrad=18, vval=71},
		["13"] = {type="attack", id=13, address=0x199ED2, hrad=35, hval=71, vrad=10, vval=46},
		["14"] = {type="attack", id=14, address=0x199EE2, hrad=25, hval=51, vrad=2, vval=50},
		["15"] = {type="attack", id=15, address=0x199EF2, hrad=25, hval=52, vrad=10, vval=37},
		["16"] = {type="attack", id=16, address=0x199F02, hrad=27, hval=48, vrad=12, vval=71},
		["17"] = {type="attack", id=17, address=0x199F12, hrad=20, hval=42, vrad=21, vval=90},
		["18"] = {type="attack", id=18, address=0x199F22, hrad=44, hval=49, vrad=13, vval=13},
		["19"] = {type="attack", id=19, address=0x199F32, hrad=54, hval=69, vrad=13, vval=13},
		["20"] = {type="attack", id=20, address=0x199F42, hrad=53, hval=52, vrad=13, vval=13},
		["21"] = {type="attack", id=21, address=0x199F52, hrad=67, hval=73, vrad=13, vval=13},
		["22"] = {type="attack", id=22, address=0x199F62, hrad=22, hval=50, vrad=18, vval=62},
		["23"] = {type="attack", id=23, address=0x199F72, hrad=22, hval=58, vrad=18, vval=53},
		["24"] = {type="attack", id=24, address=0x199F82, hrad=31, hval=60, vrad=23, vval=48},
		["25"] = {type="attack", id=25, address=0x199F92, hrad=21, hval=43, vrad=31, vval=65},
		["27"] = {type="attack", id=27, address=0x199FB2, hrad=52, hval=67, vrad=13, vval=67},
		["28"] = {type="attack", id=28, address=0x199FC2, hrad=23, hval=56, vrad=7, vval=46},
		["29"] = {type="attack", id=29, address=0x199FD2, hrad=36, hval=38, vrad=14, vval=84},
		["30"] = {type="attack", id=30, address=0x199FE2, hrad=42, hval=38, vrad=20, vval=81},
		["31"] = {type="attack", id=31, address=0x199FF2, hrad=34, hval=5, vrad=8, vval=55},
		["32"] = {type="attack", id=32, address=0x19A002, hrad=40, hval=45, vrad=15, vval=51},
		["33"] = {type="attack", id=33, address=0x19A012, hrad=52, hval=67, vrad=13, vval=67},
		["34"] = {type="attack", id=34, address=0x19A022, hrad=35, hval=39, vrad=34, vval=41},
		["35"] = {type="attack", id=35, address=0x19A032, hrad=43, hval=71, vrad=48, vval=53},
		["36"] = {type="attack", id=36, address=0x19A042, hrad=35, hval=39, vrad=34, vval=41},
		["37"] = {type="attack", id=37, address=0x19A052, hrad=43, hval=71, vrad=48, vval=53},
		["38"] = {type="attack", id=38, address=0x19A062, hrad=35, hval=39, vrad=34, vval=41},
		["39"] = {type="attack", id=39, address=0x19A072, hrad=43, hval=71, vrad=48, vval=53},
		["40"] = {type="attack", id=40, address=0x19A082, hrad=26, hval=54, vrad=14, vval=87},
		["41"] = {type="attack", id=41, address=0x19A092, hrad=40, hval=60, vrad=13, vval=46},
		["42"] = {type="attack", id=42, address=0x19A0A2, hrad=54, hval=0, vrad=15, vval=56},
		["43"] = {type="attack", id=43, address=0x19A0B2, hrad=54, hval=0, vrad=15, vval=56},
		["44"] = {type="attack", id=44, address=0x19A0C2, hrad=54, hval=0, vrad=15, vval=56},
		["45"] = {type="attack", id=45, address=0x19A0D2, hrad=35, hval=39, vrad=26, vval=33},
		["46"] = {type="attack", id=46, address=0x19A0E2, hrad=35, hval=39, vrad=26, vval=33},
		["47"] = {type="attack", id=47, address=0x19A0F2, hrad=35, hval=39, vrad=26, vval=33},
		["48"] = {type="attack", id=48, address=0x19A102, hrad=35, hval=39, vrad=34, vval=41},
		["49"] = {type="attack", id=49, address=0x19A112, hrad=35, hval=39, vrad=26, vval=33},
		["50"] = {type="attack", id=50, address=0x19A122, hrad=54, hval=0, vrad=15, vval=56},
		["51"] = {type="attack", id=51, address=0x19A132, hrad=35, hval=39, vrad=26, vval=33},
		["52"] = {type="attack", id=52, address=0x19A142, hrad=43, hval=71, vrad=48, vval=53},
		["53"] = {type="attack", id=53, address=0x19A152, hrad=54, hval=0, vrad=15, vval=56},
		["54"] = {type="attack", id=54, address=0x19A162, hrad=32, hval=62, vrad=6, vval=71},
		["58"] = {type="attack", id=58, address=0x19A1A2, hrad=3, hval=54, vrad=21, vval=86},
	},
	projectile = {
		attack = {
			["1"] = {type="proj. attack", id=1, address=0x7130A, hrad=13, hval=0, vrad=6, vval=2},
			["2"] = {type="proj. attack", id=2, address=0x7131A, hrad=13, hval=0, vrad=6, vval=2},
			["3"] = {type="proj. attack", id=3, address=0x7132A, hrad=13, hval=0, vrad=6, vval=2},
			["4"] = {type="proj. attack", id=4, address=0x7133A, hrad=35, hval=-16, vrad=8, vval=-0},
			["5"] = {type="proj. attack", id=5, address=0x7134A, hrad=35, hval=-16, vrad=8, vval=-0},
			["6"] = {type="proj. attack", id=6, address=0x7135A, hrad=35, hval=-16, vrad=8, vval=-0},
		},
		vulnerability = {
			["1"] = {type="proj. vulnerability", id=1, address=0x712F6, hrad=41, hval=0, vrad=17, vval=-0},
		},
	},
}
character_specific.guile.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x12B228, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B240, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B258, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B270, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B288, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x12B2A4, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B2BC, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B2D4, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B2EC, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B304, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x12B320, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B338, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B350, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B368, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B380, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x12B9C4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B9DC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x12B9F4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x12BA10, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x12BA28, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x12BA40, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
	},
-----------up-----------
	jump_neutral = {
			{ animation = 0x12B778, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x12B790, duration = 10, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 7,},{name = "", x = 0, y = 13,},{name = "", x = 0, y = 19,},{name = "", x = 0, y = 25,},{name = "", x = 0, y = 30,},{name = "", x = 0, y = 35,},{name = "", x = 0, y = 40,},{name = "", x = 0, y = 45,},{name = "", x = 0, y = 49,}}},
			{ animation = 0x12B7A8, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 53},{name = "", x = 0, y = 57,},{name = "", x = 0, y = 61,},{name = "", x = 0, y = 64,},{name = "", x = 0, y = 67,},{name = "", x = 0, y = 69,}}},
			{ animation = 0x12B7C0, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 72},{name = "", x = 0, y = 74,},{name = "", x = 0, y = 76,},{name = "", x = 0, y = 77,},{name = "", x = 0, y = 78,},{name = "", x = 0, y = 79,},{name = "", x = 0, y = 80,}}},
			{ animation = 0x12B7D8, duration = 10, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 80},{name = "", x = 0, y = 81,},{name = "", x = 0, y = 80,},{name = "", x = 0, y = 80,},{name = "", x = 0, y = 79,},{name = "", x = 0, y = 78,},{name = "", x = 0, y = 77,},{name = "", x = 0, y = 75,},{name = "", x = 0, y = 74,},{name = "", x = 0, y = 71,}}},
			{ animation = 0x12B7F0, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 69},{name = "", x = 0, y = 66,},{name = "", x = 0, y = 63,},{name = "", x = 0, y = 60,},{name = "", x = 0, y = 57,},{name = "", x = 0, y = 53,},{name = "", x = 0, y = 49,}}},
			{ animation = 0x12B808, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 44},{name = "", x = 0, y = 40,},{name = "", x = 0, y = 35,},{name = "", x = 0, y = 30,},{name = "", x = 0, y = 24,},{name = "", x = 0, y = 18,}}},
			{ animation = 0x12B820, duration = 10, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 12},{name = "", x = 0, y = 6,}}},
	},
-----------up forward-----------
	jump_forward = {
			{ animation = 0x12B83C, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x12B854, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["5"],
			character_specific.guile.boxes.vulnerability.middle["4"],
			character_specific.guile.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 3, y = 7,},{name = "", x = 7, y = 13,},{name = "", x = 10, y = 19,}}},
			{ animation = 0x12B86C, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["6"],
			character_specific.guile.boxes.vulnerability.middle["5"],
			character_specific.guile.boxes.vulnerability.bottom["4"]},
			coord = {{name = "", x = 14, y = 24},{name = "", x = 17, y = 30,},{name = "", x = 20, y = 35,},{name = "", x = 24, y = 40,},{name = "", x = 27, y = 44,}}},
			{ animation = 0x12B884, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["7"],
			character_specific.guile.boxes.vulnerability.middle["6"],
			character_specific.guile.boxes.vulnerability.bottom["5"]},
			coord = {{name = "", x = 30, y = 48},{name = "", x = 34, y = 52,},{name = "", x = 37, y = 56,},{name = "", x = 40, y = 59,},{name = "", x = 43, y = 62,},{name = "", x = 47, y = 65,}}},
			{ animation = 0x12B89C, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["8"],
			character_specific.guile.boxes.vulnerability.middle["7"],
			character_specific.guile.boxes.vulnerability.bottom["6"]},
			coord = {{name = "", x = 50, y = 68},{name = "", x = 53, y = 70,},{name = "", x = 56, y = 72,},{name = "", x = 59, y = 74,},{name = "", x = 62, y = 75,},{name = "", x = 66, y = 76,}}},
			{ animation = 0x12B8B4, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["9"],
			character_specific.guile.boxes.vulnerability.middle["8"],
			character_specific.guile.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 69, y = 77},{name = "", x = 72, y = 78,},{name = "", x = 75, y = 78,},{name = "", x = 78, y = 78,},{name = "", x = 81, y = 78,},{name = "", x = 84, y = 77,}}},
			{ animation = 0x12B8CC, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["10"],
			character_specific.guile.boxes.vulnerability.middle["9"],
			character_specific.guile.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 87, y = 76},{name = "", x = 90, y = 75,},{name = "", x = 93, y = 74,},{name = "", x = 96, y = 72,},{name = "", x = 99, y = 70,}}},
			{ animation = 0x12B8E4, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["11"],
			character_specific.guile.boxes.vulnerability.middle["10"],
			character_specific.guile.boxes.vulnerability.bottom["9"]},
			coord = {{name = "", x = 101, y = 68},{name = "", x = 104, y = 65,},{name = "", x = 107, y = 62,},{name = "", x = 110, y = 59,},{name = "", x = 113, y = 56,},{name = "", x = 115, y = 52,},{name = "", x = 118, y = 48,},{name = "", x = 121, y = 44,},{name = "", x = 124, y = 40,},{name = "", x = 126, y = 35,},{name = "", x = 129, y = 30,},{name = "", x = 132, y = 24,},{name = "", x = 134, y = 19,},{name = "", x = 137, y = 13,},{name = "", x = 140, y = 7,},{name = "", x = 142, y = 0,}}},
	},
-----------up back-----------
	jump_backward = {
			{ animation = 0x12B900, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x12B918, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["11"],
			character_specific.guile.boxes.vulnerability.middle["10"],
			character_specific.guile.boxes.vulnerability.bottom["9"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = -4, y = 7,},{name = "", x = -8, y = 14,},{name = "", x = -12, y = 20,}}},
			{ animation = 0x12B930, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["10"],
			character_specific.guile.boxes.vulnerability.middle["9"],
			character_specific.guile.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = -16, y = 26},{name = "", x = -20, y = 31,},{name = "", x = -24, y = 37,},{name = "", x = -28, y = 42,},{name = "", x = -32, y = 46,}}},
			{ animation = 0x12B948, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["9"],
			character_specific.guile.boxes.vulnerability.middle["8"],
			character_specific.guile.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = -35, y = 51},{name = "", x = -39, y = 55,},{name = "", x = -43, y = 59,},{name = "", x = -47, y = 63,},{name = "", x = -50, y = 66,},{name = "", x = -54, y = 69,}}},
			{ animation = 0x12B960, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["8"],
			character_specific.guile.boxes.vulnerability.middle["7"],
			character_specific.guile.boxes.vulnerability.bottom["6"]},
			coord = {{name = "", x = -58, y = 72},{name = "", x = -62, y = 74,},{name = "", x = -65, y = 76,},{name = "", x = -69, y = 78,},{name = "", x = -73, y = 80,},{name = "", x = -76, y = 81,}}},
			{ animation = 0x12B978, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["7"],
			character_specific.guile.boxes.vulnerability.middle["6"],
			character_specific.guile.boxes.vulnerability.bottom["5"]},
			coord = {{name = "", x = -80, y = 82},{name = "", x = -83, y = 83,},{name = "", x = -87, y = 84,},{name = "", x = -90, y = 84,},{name = "", x = -94, y = 84,},{name = "", x = -97, y = 84,}}},
			{ animation = 0x12B990, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["6"],
			character_specific.guile.boxes.vulnerability.middle["5"],
			character_specific.guile.boxes.vulnerability.bottom["4"]},
			coord = {{name = "", x = -101, y = 83},{name = "", x = -104, y = 82,},{name = "", x = -108, y = 81,},{name = "", x = -111, y = 80,},{name = "", x = -115, y = 78,}}},
			{ animation = 0x12B9A8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["5"],
			character_specific.guile.boxes.vulnerability.middle["4"],
			character_specific.guile.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = -118, y = 76},{name = "", x = -121, y = 74,},{name = "", x = -125, y = 71,},{name = "", x = -128, y = 68,},{name = "", x = -131, y = 65,},{name = "", x = -135, y = 62,},{name = "", x = -138, y = 58,},{name = "", x = -141, y = 54,},{name = "", x = -144, y = 50,},{name = "", x = -147, y = 45,},{name = "", x = -151, y = 40,},{name = "", x = -154, y = 35,},{name = "", x = -157, y = 30,},{name = "", x = -160, y = 24,},{name = "", x = -163, y = 18,},{name = "", x = -166, y = 12,},{name = "", x = -169, y = 6,}}},
	},
-----------LP-----------
	["St LP"] = {
		startup = {
			{ animation = 0x128480, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x128498, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["1"]}},
		},
		recover = {
			{ animation = 0x1284B0, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1284C8, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1284E0, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------MP-----------
	["St MP"] = {
		startup = {
			{ animation = 0x12860C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["22"],
			character_specific.guile.boxes.vulnerability.middle["16"],
			character_specific.guile.boxes.vulnerability.bottom["11"]}},
		},
		active = {
			{ animation = 0x128624, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["22"],
			character_specific.guile.boxes.vulnerability.middle["16"],
			character_specific.guile.boxes.vulnerability.bottom["11"],
			character_specific.guile.boxes.attack["4"]}},
			{ animation = 0x12863C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["22"],
			character_specific.guile.boxes.vulnerability.middle["16"],
			character_specific.guile.boxes.vulnerability.bottom["11"],
			character_specific.guile.boxes.attack["58"]}},
		},
		recover = {
			{ animation = 0x128654, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["22"],
			character_specific.guile.boxes.vulnerability.middle["16"],
			character_specific.guile.boxes.vulnerability.bottom["11"]}},
			{ animation = 0x12866C, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["22"],
			character_specific.guile.boxes.vulnerability.middle["16"],
			character_specific.guile.boxes.vulnerability.bottom["11"]}},
			{ animation = 0x128684, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["11"]}},
			{ animation = 0x12869C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["11"]}},
		},
	},
-----------HP-----------
	["St HP"] = {
		startup = {
			{ animation = 0x128810, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128828, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["50"],
			character_specific.guile.boxes.vulnerability.middle["39"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128840, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["50"],
			character_specific.guile.boxes.vulnerability.middle["39"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x128858, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["51"],
			character_specific.guile.boxes.vulnerability.middle["39"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["54"]}},
			{ animation = 0x128870, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["51"],
			character_specific.guile.boxes.vulnerability.middle["39"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["54"]}},
		},
		recover = {
			{ animation = 0x128888, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["50"],
			character_specific.guile.boxes.vulnerability.middle["39"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1288A0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["39"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1288B8, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1288D0, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------LK-----------
	["St LK"] = {
		startup = {
			{ animation = 0x1288EC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128904, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x12891C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["7"]}},
		},
		recover = {
			{ animation = 0x128934, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12894C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128964, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------MK-----------
	["St MK"] = {
		startup = {
			{ animation = 0x128AA8, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128AC0, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128AD8, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["46"],
			character_specific.guile.boxes.vulnerability.middle["34"],
			character_specific.guile.boxes.vulnerability.bottom["40"]}},
			{ animation = 0x128AF0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["46"],
			character_specific.guile.boxes.vulnerability.middle["34"],
			character_specific.guile.boxes.vulnerability.bottom["43"]}},
		},
		active = {
			{ animation = 0x128B08, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["47"],
			character_specific.guile.boxes.vulnerability.middle["35"],
			character_specific.guile.boxes.vulnerability.bottom["41"],
			character_specific.guile.boxes.attack["10"]}},
		},
		recover = {
			{ animation = 0x128B20, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["47"],
			character_specific.guile.boxes.vulnerability.middle["36"],
			character_specific.guile.boxes.vulnerability.bottom["42"]}},
			{ animation = 0x128B38, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128B50, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x128B68, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x128B80, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128B98, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------HK-----------
	["St HK"] = {
		startup = {
			{ animation = 0x1290A8, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 6, y = 1},{name = "", x = 11, y = 2,},{name = "", x = 17, y = 2,},{name = "", x = 23, y = 2,},{name = "", x = 29, y = 1,}}},
			{ animation = 0x1290C0, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0},{name = "", x = 34, y = 0,}}},
			{ animation = 0x1290D8, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0}}},
			{ animation = 0x1290F0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0},{name = "", x = 34, y = 0,},{name = "", x = 34, y = 0,}}},
			{ animation = 0x129108, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["54"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0}}},
		},
		active = {
			{ animation = 0x129120, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["41"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["13"]},
			coord = {{name = "", x = 34, y = 0},{name = "", x = 34, y = 0,},{name = "", x = 34, y = 0,}}},
			{ animation = 0x129138, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["41"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["13"]},
			coord = {{name = "", x = 34, y = 0},{name = "", x = 34, y = 0,},{name = "", x = 34, y = 0,}}},
		},
		recover = {
			{ animation = 0x129150, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0},{name = "", x = 34, y = 0,},{name = "", x = 34, y = 0,}}},
			{ animation = 0x129168, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0},{name = "", x = 34, y = 0,},{name = "", x = 34, y = 0,}}},
			{ animation = 0x129180, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0},{name = "", x = 34, y = 0,},{name = "", x = 34, y = 0,}}},
			{ animation = 0x129198, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0},{name = "", x = 34, y = 0,},{name = "", x = 34, y = 0,}}},
			{ animation = 0x1291B0, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 0}}},
		},
	},
-----------down LP-----------
	["Cr LP"] = {
		startup = {
			{ animation = 0x129278, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]},
			coord = {{name = "", x = 0, y = 0}}},
		},
		active = {
			{ animation = 0x129290, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"],
			character_specific.guile.boxes.attack["14"]}},
		},
		recover = {
			{ animation = 0x1292A8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x1292C0, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
		},
	},
-----------down MP-----------
	["Cr MP"] = {
		startup = {
			{ animation = 0x1292DC, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["33"]}},
		},
		active = {
			{ animation = 0x1292F4, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["33"],
			character_specific.guile.boxes.attack["15"]}},
		},
		recover = {
			{ animation = 0x12930C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["33"]}},
			{ animation = 0x129324, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["33"]}},
			{ animation = 0x12933C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["33"]}},
		},
	},
-----------down HP-----------
	["Cr HP"] = {
		startup = {
			{ animation = 0x129358, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x129370, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
		},
		active = {
			{ animation = 0x129388, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["32"],
			character_specific.guile.boxes.vulnerability.middle["20"],
			character_specific.guile.boxes.vulnerability.bottom["14"],
			character_specific.guile.boxes.attack["16"]}},
			{ animation = 0x1293A0, duration = 12, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["32"],
			character_specific.guile.boxes.vulnerability.middle["20"],
			character_specific.guile.boxes.vulnerability.bottom["14"],
			character_specific.guile.boxes.attack["17"]}},
		},
		recover = {
			{ animation = 0x1293B8, duration = 9, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["32"],
			character_specific.guile.boxes.vulnerability.middle["20"],
			character_specific.guile.boxes.vulnerability.bottom["14"]}},
			{ animation = 0x1293D0, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["27"],
			character_specific.guile.boxes.vulnerability.middle["20"],
			character_specific.guile.boxes.vulnerability.bottom["14"]}},
		},
	},
-----------down LK-----------
	["Cr LK"] = {
		startup = {
			{ animation = 0x1293EC, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x129404, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
		},
		active = {
			{ animation = 0x12941C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["15"],
			character_specific.guile.boxes.attack["18"]}},
		},
		recover = {
			{ animation = 0x129434, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x12944C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x129464, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
		},
	},
-----------down MK-----------
	["Cr MK"] = {
		startup = {
			{ animation = 0x129480, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x129498, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["37"]}},
		},
		active = {
			{ animation = 0x1294B0, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["27"],
			character_specific.guile.boxes.attack["19"]}},
		},
		recover = {
			{ animation = 0x1294C8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["26"]}},
			{ animation = 0x1294E0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["26"]}},
			{ animation = 0x1294F8, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["26"]}},
		},
	},
-----------down HK-----------
	["Cr HK"] = {
		startup = {
			{ animation = 0x129514, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x12952C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x129544, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
		},
		active = {
			{ animation = 0x12955C, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["15"],
			character_specific.guile.boxes.attack["20"]}},
		},
		recover = {
			{ animation = 0x129574, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["26"]}},
			{ animation = 0x12958C, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x1295A4, duration = 8, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x1295BC, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x1295D4, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x1295EC, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x129604, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["27"],
			character_specific.guile.boxes.attack["21"]}},
			{ animation = 0x12961C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["26"]}},
			{ animation = 0x129634, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["26"]}},
			{ animation = 0x12964C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["26"]}},
		},
	},
-----------MP-----------
	["Cl MP"] = {
		startup = {
			{ animation = 0x128560, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x128578, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["3"]}},
		},
		recover = {
			{ animation = 0x128590, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1285A8, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1285C0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1285D8, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1285F0, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------HP-----------
	["Cl HP"] = {
		startup = {
			{ animation = 0x1286B8, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x1286D0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["33"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["5"]}},
		},
		recover = {
			{ animation = 0x1286E8, duration = 10, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["34"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128700, duration = 8, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["33"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128718, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128730, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128748, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------MK-----------
	["Cl MK"] = {
		startup = {
			{ animation = 0x128980, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128998, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x1289B0, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["44"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["8"]}},
		},
		recover = {
			{ animation = 0x1289C8, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1289E0, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1289F8, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------HK-----------
	["Cl HK"] = {
		startup = {
			{ animation = 0x128F6C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["52"],
			character_specific.guile.boxes.vulnerability.middle["40"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128F84, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["53"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128F9C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["53"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128FB4, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["54"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128FCC, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["54"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x128FE4, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["55"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["40"]}},
			{ animation = 0x128FFC, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["54"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["40"]}},
		},
		recover = {
			{ animation = 0x129014, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["54"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12902C, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["54"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x129044, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["54"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12905C, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["53"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x129074, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12908C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------up LP-----------
	["JN LP"] = {
		startup = {
			{ animation = 0x129668, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 19}}},
			{ animation = 0x129680, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["42"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x129698, duration = 40, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["42"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"],
			character_specific.guile.boxes.attack["22"]
----------- Recover error -----------
}},
		},
	},
-----------up MP-----------
	["JN MP"] = {
		startup = {
			{ animation = 0x1296E4, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x1296FC, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["42"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x129714, duration = 20, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["42"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"],
			character_specific.guile.boxes.attack["23"]}},
		},
		recover = {
			{ animation = 0x12972C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129744, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------up HP-----------
	["JN HP"] = {
		startup = {
			{ animation = 0x129760, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129778, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["42"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x129790, duration = 8, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["42"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"],
			character_specific.guile.boxes.attack["24"]}},
		},
		recover = {
			{ animation = 0x1297A8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x1297C0, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------up LK-----------
	["JN LK"] = {
		startup = {
			{ animation = 0x1297DC, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1297F4, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["43"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x12980C, duration = 40, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["43"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.attack["25"]
----------- Recover error -----------
}},
		},
	},
-----------up MK-----------
	["JN MK"] = {
		startup = {
			{ animation = 0x129870, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x129888, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1298A0, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["45"],
			character_specific.guile.boxes.vulnerability.middle["33"],
			character_specific.guile.boxes.vulnerability.bottom["38"]}},
			{ animation = 0x1298B8, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["45"],
			character_specific.guile.boxes.vulnerability.middle["33"],
			character_specific.guile.boxes.vulnerability.bottom["38"]}},
		},
		active = {
			{ animation = 0x1298D0, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["45"],
			character_specific.guile.boxes.vulnerability.middle["33"],
			character_specific.guile.boxes.vulnerability.bottom["39"],
			character_specific.guile.boxes.attack["41"]}},
		},
		recover = {
			{ animation = 0x1298E8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["45"],
			character_specific.guile.boxes.vulnerability.middle["33"],
			character_specific.guile.boxes.vulnerability.bottom["38"]}},
			{ animation = 0x129900, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x129918, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
	},
-----------up HK-----------
	["JN HK"] = {
		startup = {
			{ animation = 0x129934, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x12994C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["28"]}},
		},
		active = {
			{ animation = 0x129964, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["29"],
			character_specific.guile.boxes.attack["27"]}},
		},
		recover = {
			{ animation = 0x12997C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["28"]}},
			{ animation = 0x129994, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["28"]}},
			{ animation = 0x1299AC, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x1299C4, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
	},
-----------up back LP-----------
	["J LP"] = {
		startup = {
			{ animation = 0x1299E0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x1299F8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["42"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x129A10, duration = 24, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["42"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"],
			character_specific.guile.boxes.attack["28"]}},
		},
		recover = {
			{ animation = 0x129A28, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129A40, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------up back MP-----------
	["J MP"] = {
		startup = {
			{ animation = 0x129A5C, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129A74, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x129A8C, duration = 20, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"],
			character_specific.guile.boxes.attack["29"]}},
		},
		recover = {
			{ animation = 0x129AA4, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129ABC, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------up back HP-----------
	["J HP"] = {
		startup = {
			{ animation = 0x129AD8, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129AF0, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x129B08, duration = 8, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"],
			character_specific.guile.boxes.attack["30"]}},
		},
		recover = {
			{ animation = 0x129B20, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129B38, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------up back LK-----------
	["J LK"] = {
		startup = {
			{ animation = 0x129B54, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129B6C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x129B84, duration = 40, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"],
			character_specific.guile.boxes.attack["31"]
----------- Recover error -----------
}},
		},
	},
-----------up back MK-----------
	["J MK"] = {
		startup = {
			{ animation = 0x129BD0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129BE8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x129C00, duration = 20, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["30"],
			character_specific.guile.boxes.attack["32"]}},
		},
		recover = {
			{ animation = 0x129C18, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["31"]}},
			{ animation = 0x129C30, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------up back HK-----------
	["J HK"] = {
		startup = {
			{ animation = 0x129C4C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129C64, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["28"]}},
		},
		active = {
			{ animation = 0x129C7C, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["29"],
			character_specific.guile.boxes.attack["33"]}},
		},
		recover = {
			{ animation = 0x129C94, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["28"]}},
			{ animation = 0x129CAC, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["28"]}},
			{ animation = 0x129CC4, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x129CDC, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["4"],
			character_specific.guile.boxes.vulnerability.middle["2"],
			character_specific.guile.boxes.vulnerability.bottom["2"]}},
		},
	},
-----------forward HP-----------
	["F + HP"] = {
		startup = {
			{ animation = 0x128764, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12877C, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128794, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["22"],
			character_specific.guile.boxes.vulnerability.middle["16"],
			character_specific.guile.boxes.vulnerability.bottom["11"]}},
		},
		active = {
			{ animation = 0x1287AC, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["35"],
			character_specific.guile.boxes.vulnerability.middle["16"],
			character_specific.guile.boxes.vulnerability.bottom["34"],
			character_specific.guile.boxes.attack["6"]}},
		},
		recover = {
			{ animation = 0x1287C4, duration = 10, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["22"],
			character_specific.guile.boxes.vulnerability.middle["16"],
			character_specific.guile.boxes.vulnerability.bottom["11"]}},
			{ animation = 0x1287DC, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1287F4, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------forward LK-----------
	["B/F + LK"] = {
		startup = {
			{ animation = 0x128A14, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x128A2C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["25"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 4, y = 6},{name = "", x = 8, y = 11,}}},
			{ animation = 0x128A44, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["29"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 12, y = 15},{name = "", x = 16, y = 19,}}},
		},
		active = {
			{ animation = 0x128A5C, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["22"],
			character_specific.guile.boxes.vulnerability.middle["30"],
			character_specific.guile.boxes.vulnerability.bottom["11"],
			character_specific.guile.boxes.attack["9"]},
			coord = {{name = "", x = 20, y = 23},{name = "", x = 24, y = 26,},{name = "", x = 28, y = 28,},{name = "", x = 32, y = 30,},{name = "", x = 36, y = 32,}}},
		},
		recover = {
			{ animation = 0x128A74, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["29"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 40, y = 33},{name = "", x = 44, y = 33,},{name = "", x = 48, y = 33,},{name = "", x = 52, y = 33,},{name = "", x = 56, y = 32,},{name = "", x = 60, y = 30,},{name = "", x = 64, y = 28,}}},
			{ animation = 0x128A8C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["29"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 68, y = 26},{name = "", x = 72, y = 23,},{name = "", x = 76, y = 19,},{name = "", x = 80, y = 15,},{name = "", x = 84, y = 11,},{name = "", x = 88, y = 6,},{name = "", x = 92, y = 0,}
----------- Recover error -----------
}},
		},
	},
-----------forward MK-----------
	["F + MK"] = {
		startup = {
			{ animation = 0x128BB4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["42"],
			character_specific.guile.boxes.vulnerability.bottom["45"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 2, y = 0,}}},
			{ animation = 0x128BCC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["34"],
			character_specific.guile.boxes.vulnerability.bottom["40"]},
			coord = {{name = "", x = 5, y = 0},{name = "", x = 8, y = 0,}}},
			{ animation = 0x128BE4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["46"],
			character_specific.guile.boxes.vulnerability.middle["34"],
			character_specific.guile.boxes.vulnerability.bottom["40"]},
			coord = {{name = "", x = 11, y = 0},{name = "", x = 13, y = 0,}}},
			{ animation = 0x128BFC, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["46"],
			character_specific.guile.boxes.vulnerability.middle["34"],
			character_specific.guile.boxes.vulnerability.bottom["43"]},
			coord = {{name = "", x = 16, y = 0},{name = "", x = 18, y = 0,},{name = "", x = 20, y = 0,}}},
		},
		active = {
			{ animation = 0x128C14, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["47"],
			character_specific.guile.boxes.vulnerability.middle["35"],
			character_specific.guile.boxes.vulnerability.bottom["41"],
			character_specific.guile.boxes.attack["10"]},
			coord = {{name = "", x = 22, y = 0},{name = "", x = 24, y = 0,},{name = "", x = 26, y = 0,},{name = "", x = 28, y = 0,},{name = "", x = 30, y = 0,}}},
		},
		recover = {
			{ animation = 0x128C2C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["47"],
			character_specific.guile.boxes.vulnerability.middle["36"],
			character_specific.guile.boxes.vulnerability.bottom["42"]},
			coord = {{name = "", x = 32, y = 0},{name = "", x = 33, y = 0,},{name = "", x = 35, y = 0,},{name = "", x = 36, y = 0,}}},
			{ animation = 0x128C44, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 38, y = 0},{name = "", x = 39, y = 0,},{name = "", x = 40, y = 0,}}},
			{ animation = 0x128C5C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]},
			coord = {{name = "", x = 41, y = 0},{name = "", x = 41, y = 0,}}},
			{ animation = 0x128C74, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]},
			coord = {{name = "", x = 41, y = 0},{name = "", x = 41, y = 0,}}},
			{ animation = 0x128C8C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 41, y = 0}}},
			{ animation = 0x128CA4, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 41, y = 0}
----------- Recover error -----------

----------- Recover error -----------
}},
		},
	},
-----------back MK-----------
	["B + MK"] = {
		startup = {
			{ animation = 0x128CC0, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["53"],
			character_specific.guile.boxes.vulnerability.middle["42"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = -3, y = 0,}}},
			{ animation = 0x128CD8, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = -6, y = 0},{name = "", x = -8, y = 0,}}},
			{ animation = 0x128CF0, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["46"],
			character_specific.guile.boxes.vulnerability.middle["34"],
			character_specific.guile.boxes.vulnerability.bottom["40"]},
			coord = {{name = "", x = -11, y = 0},{name = "", x = -14, y = 0,}}},
			{ animation = 0x128D08, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["46"],
			character_specific.guile.boxes.vulnerability.middle["34"],
			character_specific.guile.boxes.vulnerability.bottom["43"]},
			coord = {{name = "", x = -16, y = 0},{name = "", x = -16, y = 0,},{name = "", x = -16, y = 0,}}},
		},
		active = {
			{ animation = 0x128D20, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["47"],
			character_specific.guile.boxes.vulnerability.middle["35"],
			character_specific.guile.boxes.vulnerability.bottom["41"],
			character_specific.guile.boxes.attack["10"]},
			coord = {{name = "", x = -16, y = 0},{name = "", x = -16, y = 0,},{name = "", x = -16, y = 0,},{name = "", x = -16, y = 0,},{name = "", x = -16, y = 0,}}},
		},
		recover = {
			{ animation = 0x128D38, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["47"],
			character_specific.guile.boxes.vulnerability.middle["36"],
			character_specific.guile.boxes.vulnerability.bottom["42"]},
			coord = {{name = "", x = -16, y = 0},{name = "", x = -16, y = 0,},{name = "", x = -16, y = 0,},{name = "", x = -16, y = 0,}}},
			{ animation = 0x128D50, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = -16, y = 0},{name = "", x = -16, y = 0,},{name = "", x = -16, y = 0,}}},
			{ animation = 0x128D68, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]},
			coord = {{name = "", x = -16, y = 0},{name = "", x = -16, y = 0,}}},
			{ animation = 0x128D80, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]},
			coord = {{name = "", x = -16, y = 0},{name = "", x = -16, y = 0,}}},
			{ animation = 0x128D98, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = -16, y = 0}}},
			{ animation = 0x128DB0, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = -16, y = 0}}},
		},
	},
-----------forward LP-----------
	["Sonic Boom LP"] = {
		startup = {
			{ animation = 0x129F7C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x129F94, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x129FAC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x129FC4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x129FDC, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
		},
		active = {
			{ animation = 0x129FF4, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"],
			character_specific.guile.boxes.projectile.vulnerability["1"],
			character_specific.guile.boxes.projectile.attack["4"]
----------- Recover error -----------
}},
		},
	},
-----------forward MP-----------
	["Sonic Boom MP"] = {
		startup = {
			{ animation = 0x12A010, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x12A028, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x12A040, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x12A058, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x12A070, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
		},
		active = {
			{ animation = 0x12A088, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"],
			character_specific.guile.boxes.projectile.vulnerability["1"],
			character_specific.guile.boxes.projectile.attack["5"]
----------- Recover error -----------
}},
		},
	},
-----------forward HP-----------
	["Sonic Boom HP"] = {
		startup = {
			{ animation = 0x12A0A4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x12A0BC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x12A0D4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x12A0EC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
			{ animation = 0x12A104, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"]}},
		},
		active = {
			{ animation = 0x12A11C, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["32"],
			character_specific.guile.boxes.vulnerability.bottom["32"],
			character_specific.guile.boxes.projectile.vulnerability["1"],
			character_specific.guile.boxes.projectile.attack["6"]
----------- Recover error -----------
}},
		},
	},
-----------up LK-----------
	["Flash Kick LK"] = {
		startup = {
			{ animation = 0x12A138, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"]}},
			{ animation = 0x12A150, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 1, y = 8},{name = "", x = 1, y = 8,}}},
			{ animation = 0x12A168, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 3, y = 15},{name = "", x = 3, y = 15,},{name = "", x = 4, y = 22,},{name = "", x = 4, y = 22,}}},
		},
		active = {
			{ animation = 0x12A180, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["34"]},
			coord = {{name = "", x = 6, y = 29},{name = "", x = 6, y = 29,},{name = "", x = 7, y = 35,},{name = "", x = 7, y = 35,},{name = "", x = 9, y = 41,},{name = "", x = 9, y = 41,},{name = "", x = 10, y = 46,},{name = "", x = 10, y = 46,}}},
			{ animation = 0x12A198, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.attack["45"]},
			coord = {{name = "", x = 12, y = 51},{name = "", x = 12, y = 51,}}},
			{ animation = 0x12A1B0, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["28"],
			character_specific.guile.boxes.vulnerability.middle["21"],
			character_specific.guile.boxes.vulnerability.bottom["16"],
			character_specific.guile.boxes.attack["45"]},
			coord = {{name = "", x = 13, y = 56},{name = "", x = 13, y = 56,}}},
			{ animation = 0x12A1C8, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["29"],
			character_specific.guile.boxes.vulnerability.middle["22"],
			character_specific.guile.boxes.vulnerability.bottom["17"],
			character_specific.guile.boxes.attack["35"]},
			coord = {{name = "", x = 15, y = 60},{name = "", x = 15, y = 60,}}},
			{ animation = 0x12A1E0, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["29"],
			character_specific.guile.boxes.vulnerability.middle["22"],
			character_specific.guile.boxes.vulnerability.bottom["44"],
			character_specific.guile.boxes.attack["42"]},
			coord = {{name = "", x = 16, y = 64},{name = "", x = 16, y = 64,},{name = "", x = 18, y = 67,},{name = "", x = 18, y = 67,}}},
		},
		recover = {
			{ animation = 0x12A1F8, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["30"],
			character_specific.guile.boxes.vulnerability.middle["23"]},
			coord = {{name = "", x = 19, y = 70},{name = "", x = 19, y = 70,},{name = "", x = 21, y = 73,},{name = "", x = 21, y = 73,}}},
			{ animation = 0x12A210, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["31"],
			character_specific.guile.boxes.vulnerability.middle["23"]},
			coord = {{name = "", x = 22, y = 75},{name = "", x = 22, y = 75,},{name = "", x = 24, y = 77,},{name = "", x = 24, y = 77,}}},
			{ animation = 0x12A228, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 25, y = 79},{name = "", x = 25, y = 79,},{name = "", x = 27, y = 80,},{name = "", x = 27, y = 80,},{name = "", x = 28, y = 81,},{name = "", x = 28, y = 81,},{name = "", x = 30, y = 82,},{name = "", x = 30, y = 82,},{name = "", x = 31, y = 82,},{name = "", x = 33, y = 82,},{name = "", x = 34, y = 81,},{name = "", x = 36, y = 80,},{name = "", x = 37, y = 79,},{name = "", x = 39, y = 77,},{name = "", x = 40, y = 75,},{name = "", x = 42, y = 72,},{name = "", x = 43, y = 69,},{name = "", x = 45, y = 66,},{name = "", x = 46, y = 62,},{name = "", x = 48, y = 58,},{name = "", x = 49, y = 54,},{name = "", x = 51, y = 49,},{name = "", x = 52, y = 44,},{name = "", x = 54, y = 39,},{name = "", x = 55, y = 33,},{name = "", x = 57, y = 27,},{name = "", x = 58, y = 20,},{name = "", x = 60, y = 13,},{name = "", x = 61, y = 6,}}},
			{ animation = 0x12A240, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 63, y = 0},{name = "", x = 63, y = 0,},{name = "", x = 63, y = 0,}}},
			{ animation = 0x12A258, duration = 8, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 63, y = 0},{name = "", x = 63, y = 0,}
----------- Recover error -----------
}},
		},
	},
-----------up MK-----------
	["Flash Kick MK"] = {
		startup = {
			{ animation = 0x12A274, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x12A28C, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 1, y = 8},{name = "", x = 3, y = 17,}}},
			{ animation = 0x12A2A4, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 4, y = 25}}},
		},
		active = {
			{ animation = 0x12A2BC, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["36"]},
			coord = {{name = "", x = 6, y = 32},{name = "", x = 7, y = 39,},{name = "", x = 9, y = 46,}}},
			{ animation = 0x12A2D4, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["46"]},
			coord = {{name = "", x = 10, y = 52}}},
			{ animation = 0x12A2EC, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["28"],
			character_specific.guile.boxes.vulnerability.middle["21"],
			character_specific.guile.boxes.vulnerability.bottom["16"],
			character_specific.guile.boxes.attack["46"]},
			coord = {{name = "", x = 12, y = 58}}},
			{ animation = 0x12A304, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["29"],
			character_specific.guile.boxes.vulnerability.middle["22"],
			character_specific.guile.boxes.vulnerability.bottom["17"],
			character_specific.guile.boxes.attack["37"]},
			coord = {{name = "", x = 13, y = 64}}},
			{ animation = 0x12A31C, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["29"],
			character_specific.guile.boxes.vulnerability.middle["22"],
			character_specific.guile.boxes.vulnerability.bottom["44"],
			character_specific.guile.boxes.attack["43"]},
			coord = {{name = "", x = 15, y = 69},{name = "", x = 16, y = 74,},{name = "", x = 18, y = 79,}}},
		},
		recover = {
			{ animation = 0x12A334, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["30"],
			character_specific.guile.boxes.vulnerability.middle["23"]},
			coord = {{name = "", x = 19, y = 83},{name = "", x = 21, y = 86,},{name = "", x = 22, y = 90,},{name = "", x = 24, y = 93,}}},
			{ animation = 0x12A34C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["31"],
			character_specific.guile.boxes.vulnerability.middle["23"]},
			coord = {{name = "", x = 25, y = 95},{name = "", x = 27, y = 98,},{name = "", x = 28, y = 100,},{name = "", x = 30, y = 101,}}},
			{ animation = 0x12A364, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 31, y = 102},{name = "", x = 33, y = 103,},{name = "", x = 34, y = 103,},{name = "", x = 36, y = 103,},{name = "", x = 37, y = 103,},{name = "", x = 39, y = 102,},{name = "", x = 40, y = 101,},{name = "", x = 42, y = 100,},{name = "", x = 43, y = 98,},{name = "", x = 45, y = 95,},{name = "", x = 46, y = 93,},{name = "", x = 48, y = 90,},{name = "", x = 49, y = 86,},{name = "", x = 51, y = 83,},{name = "", x = 52, y = 79,},{name = "", x = 54, y = 74,},{name = "", x = 55, y = 69,},{name = "", x = 57, y = 64,},{name = "", x = 58, y = 58,},{name = "", x = 60, y = 52,},{name = "", x = 61, y = 46,},{name = "", x = 63, y = 39,},{name = "", x = 64, y = 32,},{name = "", x = 66, y = 25,},{name = "", x = 67, y = 17,},{name = "", x = 69, y = 8,},{name = "", x = 70, y = 0,},{name = "", x = 72, y = 0,}}},
			{ animation = 0x12A37C, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 72, y = 0},{name = "", x = 72, y = 0,},{name = "", x = 72, y = 0,},{name = "", x = 72, y = 0,},{name = "", x = 72, y = 0,}}},
			{ animation = 0x12A394, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 72, y = 0},{name = "", x = 72, y = 0,}
----------- Recover error -----------
}},
		},
	},
-----------up HK-----------
	["Flash Kick HK"] = {
		startup = {
			{ animation = 0x12A3B0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 1, y = 9,}}},
			{ animation = 0x12A3C8, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 3, y = 19}}},
			{ animation = 0x12A3E0, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 4, y = 28}}},
		},
		active = {
			{ animation = 0x12A3F8, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["38"]},
			coord = {{name = "", x = 6, y = 36},{name = "", x = 7, y = 44,}}},
			{ animation = 0x12A410, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"],
			character_specific.guile.boxes.attack["47"]},
			coord = {{name = "", x = 9, y = 52}}},
			{ animation = 0x12A428, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["28"],
			character_specific.guile.boxes.vulnerability.middle["21"],
			character_specific.guile.boxes.vulnerability.bottom["16"],
			character_specific.guile.boxes.attack["47"]},
			coord = {{name = "", x = 10, y = 59}}},
			{ animation = 0x12A440, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["29"],
			character_specific.guile.boxes.vulnerability.middle["22"],
			character_specific.guile.boxes.vulnerability.bottom["17"],
			character_specific.guile.boxes.attack["39"]},
			coord = {{name = "", x = 12, y = 66}}},
			{ animation = 0x12A458, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["29"],
			character_specific.guile.boxes.vulnerability.middle["22"],
			character_specific.guile.boxes.vulnerability.bottom["44"],
			character_specific.guile.boxes.attack["44"]},
			coord = {{name = "", x = 13, y = 73},{name = "", x = 15, y = 79,},{name = "", x = 16, y = 85,},{name = "", x = 18, y = 91,}}},
		},
		recover = {
			{ animation = 0x12A470, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["30"],
			character_specific.guile.boxes.vulnerability.middle["23"]},
			coord = {{name = "", x = 19, y = 96},{name = "", x = 21, y = 100,},{name = "", x = 22, y = 105,},{name = "", x = 24, y = 109,},{name = "", x = 25, y = 112,}}},
			{ animation = 0x12A488, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["31"],
			character_specific.guile.boxes.vulnerability.middle["23"]},
			coord = {{name = "", x = 27, y = 116},{name = "", x = 28, y = 119,},{name = "", x = 30, y = 121,},{name = "", x = 31, y = 123,},{name = "", x = 33, y = 125,}}},
			{ animation = 0x12A4A0, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 34, y = 126},{name = "", x = 36, y = 127,},{name = "", x = 37, y = 128,},{name = "", x = 39, y = 128,},{name = "", x = 40, y = 128,},{name = "", x = 42, y = 128,},{name = "", x = 43, y = 127,},{name = "", x = 45, y = 125,},{name = "", x = 46, y = 124,},{name = "", x = 48, y = 122,},{name = "", x = 49, y = 119,},{name = "", x = 51, y = 117,},{name = "", x = 52, y = 114,},{name = "", x = 54, y = 110,},{name = "", x = 55, y = 106,},{name = "", x = 57, y = 102,},{name = "", x = 58, y = 97,},{name = "", x = 60, y = 92,},{name = "", x = 61, y = 87,},{name = "", x = 63, y = 81,},{name = "", x = 64, y = 75,},{name = "", x = 66, y = 69,},{name = "", x = 67, y = 62,},{name = "", x = 69, y = 54,},{name = "", x = 70, y = 47,},{name = "", x = 72, y = 39,},{name = "", x = 73, y = 30,},{name = "", x = 75, y = 22,},{name = "", x = 76, y = 13,},{name = "", x = 78, y = 3,},{name = "", x = 79, y = 0,}}},
			{ animation = 0x12A4B8, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 79, y = 0},{name = "", x = 79, y = 0,},{name = "", x = 79, y = 0,},{name = "", x = 79, y = 0,},{name = "", x = 79, y = 0,},{name = "", x = 79, y = 0,}}},
			{ animation = 0x12A4D0, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 79, y = 0},{name = "", x = 79, y = 0,}
----------- Recover error -----------
}},
		},
	},
-----------up LK-----------
	["Double Somersault"] = {
		startup = {
			{ animation = 0x12A4EC, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x12A504, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"]}},
			{ animation = 0x12A51C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"]}},
		},
		active = {
			{ animation = 0x12A534, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["48"]},
			coord = {{name = "", x = 3, y = 5},{name = "", x = 6, y = 9,}}},
			{ animation = 0x12A54C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["49"]},
			coord = {{name = "", x = 9, y = 12}}},
			{ animation = 0x12A564, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["49"]},
			coord = {{name = "", x = 12, y = 15}}},
			{ animation = 0x12A57C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["50"]},
			coord = {{name = "", x = 15, y = 18},{name = "", x = 18, y = 20,},{name = "", x = 21, y = 21,},{name = "", x = 24, y = 22,}}},
		},
		recover = {
			{ animation = 0x12A594, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 27, y = 23},{name = "", x = 30, y = 23,}}},
			{ animation = 0x12A5AC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 33, y = 22},{name = "", x = 36, y = 21,}}},
			{ animation = 0x12A5C4, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 39, y = 20},{name = "", x = 42, y = 18,},{name = "", x = 45, y = 15,},{name = "", x = 48, y = 12,},{name = "", x = 51, y = 9,},{name = "", x = 54, y = 5,},{name = "", x = 57, y = 0,}}},
			{ animation = 0x12A5DC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 60, y = 0},{name = "", x = 60, y = 0,}}},
			{ animation = 0x12A5F4, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 60, y = 0}}},
			{ animation = 0x12A60C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"]},
			coord = {{name = "", x = 60, y = 0}}},
			{ animation = 0x12A624, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["48"]},
			coord = {{name = "", x = 62, y = 8},{name = "", x = 63, y = 15,}}},
			{ animation = 0x12A63C, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["51"]},
			coord = {{name = "", x = 65, y = 22}}},
			{ animation = 0x12A654, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["51"]},
			coord = {{name = "", x = 66, y = 28}}},
			{ animation = 0x12A66C, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["53"]},
			coord = {{name = "", x = 68, y = 35},{name = "", x = 69, y = 40,},{name = "", x = 71, y = 46,},{name = "", x = 72, y = 51,}}},
			{ animation = 0x12A684, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.attack["52"]},
			coord = {{name = "", x = 74, y = 55}}},
			{ animation = 0x12A69C, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["30"],
			character_specific.guile.boxes.vulnerability.middle["23"]},
			coord = {{name = "", x = 75, y = 60},{name = "", x = 77, y = 63,},{name = "", x = 78, y = 67,},{name = "", x = 80, y = 70,},{name = "", x = 81, y = 73,}}},
			{ animation = 0x12A6B4, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["31"],
			character_specific.guile.boxes.vulnerability.middle["23"]},
			coord = {{name = "", x = 83, y = 75},{name = "", x = 84, y = 77,},{name = "", x = 86, y = 79,},{name = "", x = 87, y = 80,},{name = "", x = 89, y = 81,}}},
			{ animation = 0x12A6CC, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 90, y = 81},{name = "", x = 92, y = 82,},{name = "", x = 93, y = 81,},{name = "", x = 95, y = 81,},{name = "", x = 96, y = 80,},{name = "", x = 98, y = 78,},{name = "", x = 99, y = 77,},{name = "", x = 101, y = 74,},{name = "", x = 102, y = 72,},{name = "", x = 104, y = 69,},{name = "", x = 105, y = 66,},{name = "", x = 107, y = 62,},{name = "", x = 108, y = 58,},{name = "", x = 110, y = 54,},{name = "", x = 111, y = 49,},{name = "", x = 113, y = 44,},{name = "", x = 114, y = 38,},{name = "", x = 116, y = 33,},{name = "", x = 117, y = 26,},{name = "", x = 119, y = 20,},{name = "", x = 120, y = 13,},{name = "", x = 122, y = 5,}}},
			{ animation = 0x12A6E4, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 123, y = 0},{name = "", x = 123, y = 0,},{name = "", x = 123, y = 0,},{name = "", x = 123, y = 0,},{name = "", x = 123, y = 0,},{name = "", x = 123, y = 0,}}},
			{ animation = 0x12A6FC, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 123, y = 0}
----------- Recover error -----------
}},
		},
	},
}