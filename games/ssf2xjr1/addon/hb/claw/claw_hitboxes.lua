-- Copy in the correct fields what's written in claw_[...]_boxes.lua
character_specific.claw.boxes = {
	push = {
		["1"] = {type="push", id=1, address=0x19D684, hrad=20, hval=0, vrad=41, vval=40},
		["2"] = {type="push", id=2, address=0x19D688, hrad=20, hval=0, vrad=23, vval=21},
		["3"] = {type="push", id=3, address=0x19D68C, hrad=20, hval=0, vrad=23, vval=76},
		["4"] = {type="push", id=4, address=0x19D690, hrad=30, hval=4, vrad=16, vval=50},
	},
	vulnerability = {
		top = {
			["1"] = {type="vulnerability", id=1, address=0x19CD20, hrad=14, hval=6, vrad=11, vval=92},
			["2"] = {type="vulnerability", id=2, address=0x19CD24, hrad=15, hval=7, vrad=10, vval=51},
			["3"] = {type="vulnerability", id=3, address=0x19CD28, hrad=12, hval=5, vrad=10, vval=104},
			["9"] = {type="vulnerability", id=9, address=0x19CD40, hrad=12, hval=43, vrad=10, vval=56},
			["13"] = {type="vulnerability", id=13, address=0x19CD50, hrad=41, hval=101, vrad=8, vval=57},
			["14"] = {type="vulnerability", id=14, address=0x19CD54, hrad=34, hval=96, vrad=8, vval=66},
			["15"] = {type="vulnerability", id=15, address=0x19CD58, hrad=16, hval=55, vrad=15, vval=64},
			["16"] = {type="vulnerability", id=16, address=0x19CD5C, hrad=70, hval=0, vrad=13, vval=44},
			["19"] = {type="vulnerability", id=19, address=0x19CD68, hrad=17, hval=26, vrad=16, vval=79},
			["20"] = {type="vulnerability", id=20, address=0x19CD6C, hrad=52, hval=89, vrad=12, vval=73},
			["21"] = {type="vulnerability", id=21, address=0x19CD70, hrad=21, hval=64, vrad=11, vval=72},
			["22"] = {type="vulnerability", id=22, address=0x19CD74, hrad=76, hval=82, vrad=11, vval=60},
			["23"] = {type="vulnerability", id=23, address=0x19CD78, hrad=19, hval=89, vrad=11, vval=70},
			["24"] = {type="vulnerability", id=24, address=0x19CD7C, hrad=14, hval=5, vrad=18, vval=83},
			["26"] = {type="vulnerability", id=26, address=0x19CD84, hrad=22, hval=54, vrad=11, vval=60},
			["27"] = {type="vulnerability", id=27, address=0x19CD88, hrad=14, hval=-3, vrad=11, vval=87},
			["31"] = {type="vulnerability", id=31, address=0x19CD98, hrad=42, hval=37, vrad=9, vval=89},
			["32"] = {type="vulnerability", id=32, address=0x19CD9C, hrad=14, hval=19, vrad=11, vval=88},
			["33"] = {type="vulnerability", id=33, address=0x19CDA0, hrad=14, hval=45, vrad=11, vval=87},
			["34"] = {type="vulnerability", id=34, address=0x19CDA4, hrad=14, hval=24, vrad=11, vval=87},
			["35"] = {type="vulnerability", id=35, address=0x19CDA8, hrad=37, hval=57, vrad=11, vval=78},
			["36"] = {type="vulnerability", id=36, address=0x19CDAC, hrad=19, hval=64, vrad=11, vval=78},
			["37"] = {type="vulnerability", id=37, address=0x19CDB0, hrad=14, hval=58, vrad=11, vval=100},
			["38"] = {type="vulnerability", id=38, address=0x19CDB4, hrad=14, hval=26, vrad=11, vval=97},
			["39"] = {type="vulnerability", id=39, address=0x19CDB8, hrad=25, hval=16, vrad=22, vval=90},
			["40"] = {type="vulnerability", id=40, address=0x19CDBC, hrad=16, hval=0, vrad=20, vval=88},
			["42"] = {type="vulnerability", id=42, address=0x19CDC4, hrad=34, hval=96, vrad=6, vval=66},
			["46"] = {type="vulnerability", id=46, address=0x19CDD4, hrad=19, hval=13, vrad=10, vval=67},
			["47"] = {type="vulnerability", id=47, address=0x19CDD8, hrad=14, hval=-10, vrad=21, vval=84},
			["48"] = {type="vulnerability", id=48, address=0x19CDDC, hrad=32, hval=10, vrad=14, vval=61},
		},
		middle = {
			["1"] = {type="vulnerability", id=1, address=0x19CDE4, hrad=18, hval=-5, vrad=29, vval=59},
			["2"] = {type="vulnerability", id=2, address=0x19CDE8, hrad=20, hval=7, vrad=12, vval=33},
			["3"] = {type="vulnerability", id=3, address=0x19CDEC, hrad=15, hval=0, vrad=12, vval=85},
			["6"] = {type="vulnerability", id=6, address=0x19CDF8, hrad=18, hval=38, vrad=16, vval=47},
			["7"] = {type="vulnerability", id=7, address=0x19CDFC, hrad=17, hval=35, vrad=16, vval=37},
			["8"] = {type="vulnerability", id=8, address=0x19CE00, hrad=16, hval=73, vrad=15, vval=46},
			["9"] = {type="vulnerability", id=9, address=0x19CE04, hrad=32, hval=0, vrad=33, vval=73},
			["10"] = {type="vulnerability", id=10, address=0x19CE08, hrad=32, hval=0, vrad=39, vval=59},
			["12"] = {type="vulnerability", id=12, address=0x19CE10, hrad=22, hval=30, vrad=16, vval=47},
			["13"] = {type="vulnerability", id=13, address=0x19CE14, hrad=22, hval=53, vrad=16, vval=47},
			["14"] = {type="vulnerability", id=14, address=0x19CE18, hrad=30, hval=48, vrad=11, vval=38},
			["15"] = {type="vulnerability", id=15, address=0x19CE1C, hrad=28, hval=70, vrad=14, vval=46},
			["16"] = {type="vulnerability", id=16, address=0x19CE20, hrad=23, hval=39, vrad=29, vval=59},
			["17"] = {type="vulnerability", id=17, address=0x19CE24, hrad=29, hval=26, vrad=10, vval=55},
			["22"] = {type="vulnerability", id=22, address=0x19CE38, hrad=42, hval=19, vrad=9, vval=46},
			["24"] = {type="vulnerability", id=24, address=0x19CE40, hrad=18, hval=6, vrad=29, vval=59},
			["25"] = {type="vulnerability", id=25, address=0x19CE44, hrad=18, hval=19, vrad=29, vval=59},
			["26"] = {type="vulnerability", id=26, address=0x19CE48, hrad=18, hval=32, vrad=29, vval=59},
			["27"] = {type="vulnerability", id=27, address=0x19CE4C, hrad=18, hval=13, vrad=29, vval=59},
			["28"] = {type="vulnerability", id=28, address=0x19CE50, hrad=18, hval=22, vrad=29, vval=59},
			["29"] = {type="vulnerability", id=29, address=0x19CE54, hrad=30, hval=61, vrad=15, vval=72},
			["30"] = {type="vulnerability", id=30, address=0x19CE58, hrad=33, hval=49, vrad=18, vval=83},
			["31"] = {type="vulnerability", id=31, address=0x19CE5C, hrad=17, hval=74, vrad=22, vval=53},
			["32"] = {type="vulnerability", id=32, address=0x19CE60, hrad=41, hval=26, vrad=13, vval=82},
			["33"] = {type="vulnerability", id=33, address=0x19CE64, hrad=27, hval=2, vrad=28, vval=67},
			["36"] = {type="vulnerability", id=36, address=0x19CE70, hrad=11, hval=-8, vrad=30, vval=27},
			["37"] = {type="vulnerability", id=37, address=0x19CE74, hrad=14, hval=18, vrad=23, vval=43},
		},
		 bottom = {
			["1"] = {type="vulnerability", id=1, address=0x19CE7C, hrad=23, hval=2, vrad=16, vval=15},
			["2"] = {type="vulnerability", id=2, address=0x19CE80, hrad=25, hval=7, vrad=12, vval=9},
			["3"] = {type="vulnerability", id=3, address=0x19CE84, hrad=18, hval=2, vrad=8, vval=66},
			["6"] = {type="vulnerability", id=6, address=0x19CE90, hrad=31, hval=31, vrad=15, vval=15},
			["7"] = {type="vulnerability", id=7, address=0x19CE94, hrad=23, hval=32, vrad=11, vval=11},
			["8"] = {type="vulnerability", id=8, address=0x19CE98, hrad=31, hval=66, vrad=15, vval=18},
			["9"] = {type="vulnerability", id=9, address=0x19CE9C, hrad=32, hval=28, vrad=11, vval=9},
			["10"] = {type="vulnerability", id=10, address=0x19CEA0, hrad=42, hval=41, vrad=11, vval=9},
			["12"] = {type="vulnerability", id=12, address=0x19CEA8, hrad=35, hval=17, vrad=8, vval=73},
			["13"] = {type="vulnerability", id=13, address=0x19CEAC, hrad=30, hval=7, vrad=11, vval=59},
			["15"] = {type="vulnerability", id=15, address=0x19CEB4, hrad=36, hval=14, vrad=16, vval=15},
			["16"] = {type="vulnerability", id=16, address=0x19CEB8, hrad=36, hval=24, vrad=16, vval=15},
			["17"] = {type="vulnerability", id=17, address=0x19CEBC, hrad=30, hval=23, vrad=14, vval=13},
			["18"] = {type="vulnerability", id=18, address=0x19CEC0, hrad=30, hval=23, vrad=14, vval=13},
			["19"] = {type="vulnerability", id=19, address=0x19CEC4, hrad=21, hval=6, vrad=23, vval=22},
			["20"] = {type="vulnerability", id=20, address=0x19CEC8, hrad=18, hval=5, vrad=9, vval=35},
			["21"] = {type="vulnerability", id=21, address=0x19CECC, hrad=23, hval=2, vrad=29, vval=15},
			["22"] = {type="vulnerability", id=22, address=0x19CED0, hrad=23, hval=19, vrad=16, vval=15},
			["23"] = {type="vulnerability", id=23, address=0x19CED4, hrad=23, hval=22, vrad=16, vval=15},
			["24"] = {type="vulnerability", id=24, address=0x19CED8, hrad=23, hval=35, vrad=32, vval=34},
			["25"] = {type="vulnerability", id=25, address=0x19CEDC, hrad=17, hval=44, vrad=11, vval=33},
		},
	},
	attack = {
			["3"] = {type="attack", id=3, address=0x19D2E0, hrad=56, hval=97, vrad=7, vval=54},
			["4"] = {type="attack", id=4, address=0x19D2F0, hrad=34, hval=41, vrad=8, vval=8},
			["5"] = {type="attack", id=5, address=0x19D300, hrad=44, hval=52, vrad=8, vval=8},
			["6"] = {type="attack", id=6, address=0x19D310, hrad=32, hval=26, vrad=11, vval=67},
			["7"] = {type="attack", id=7, address=0x19D320, hrad=15, hval=29, vrad=13, vval=57},
			["8"] = {type="attack", id=8, address=0x19D330, hrad=58, hval=98, vrad=20, vval=63},
			["10"] = {type="attack", id=10, address=0x19D350, hrad=86, hval=13, vrad=18, vval=40},
			["11"] = {type="attack", id=11, address=0x19D360, hrad=33, hval=120, vrad=11, vval=77},
			["12"] = {type="attack", id=12, address=0x19D370, hrad=58, hval=100, vrad=7, vval=54},
			["14"] = {type="attack", id=14, address=0x19D390, hrad=38, hval=45, vrad=8, vval=8},
			["15"] = {type="attack", id=15, address=0x19D3A0, hrad=39, hval=34, vrad=11, vval=67},
			["17"] = {type="attack", id=17, address=0x19D3C0, hrad=18, hval=36, vrad=15, vval=50},
			["19"] = {type="attack", id=19, address=0x19D3E0, hrad=58, hval=98, vrad=20, vval=63},
			["20"] = {type="attack", id=20, address=0x19D3F0, hrad=58, hval=98, vrad=20, vval=63},
			["22"] = {type="attack", id=22, address=0x19D410, hrad=86, hval=13, vrad=18, vval=40},
			["24"] = {type="attack", id=24, address=0x19D430, hrad=86, hval=13, vrad=18, vval=40},
			["25"] = {type="attack", id=25, address=0x19D440, hrad=17, hval=15, vrad=18, vval=32},
			["27"] = {type="attack", id=27, address=0x19D460, hrad=37, hval=62, vrad=11, vval=81},
			["28"] = {type="attack", id=28, address=0x19D470, hrad=37, hval=62, vrad=11, vval=81},
			["29"] = {type="attack", id=29, address=0x19D480, hrad=59, hval=96, vrad=6, vval=67},
			["30"] = {type="attack", id=30, address=0x19D490, hrad=48, hval=61, vrad=11, vval=74},
			["31"] = {type="attack", id=31, address=0x19D4A0, hrad=56, hval=108, vrad=6, vval=53},
			["32"] = {type="attack", id=32, address=0x19D4B0, hrad=25, hval=31, vrad=19, vval=47},
			["33"] = {type="attack", id=33, address=0x19D4C0, hrad=42, hval=57, vrad=16, vval=61},
			["34"] = {type="attack", id=34, address=0x19D4D0, hrad=42, hval=45, vrad=16, vval=61},
			["35"] = {type="attack", id=35, address=0x19D4E0, hrad=51, hval=76, vrad=14, vval=71},
			["36"] = {type="attack", id=36, address=0x19D4F0, hrad=51, hval=76, vrad=14, vval=71},
			["38"] = {type="attack", id=38, address=0x19D510, hrad=38, hval=69, vrad=18, vval=96},
			["39"] = {type="attack", id=39, address=0x19D520, hrad=36, hval=41, vrad=7, vval=81},
			["40"] = {type="attack", id=40, address=0x19D530, hrad=36, hval=41, vrad=7, vval=81},
			["41"] = {type="attack", id=41, address=0x19D540, hrad=26, hval=58, vrad=8, vval=72},
			["42"] = {type="attack", id=42, address=0x19D550, hrad=32, hval=49, vrad=8, vval=76},
			["43"] = {type="attack", id=43, address=0x19D560, hrad=32, hval=49, vrad=8, vval=76},
			["44"] = {type="attack", id=44, address=0x19D570, hrad=19, hval=37, vrad=7, vval=46},
			["45"] = {type="attack", id=45, address=0x19D580, hrad=23, hval=29, vrad=21, vval=48},
			["46"] = {type="attack", id=46, address=0x19D590, hrad=14, hval=38, vrad=21, vval=48},
			["48"] = {type="attack", id=48, address=0x19D5B0, hrad=31, hval=46, vrad=10, vval=57},
			["49"] = {type="attack", id=49, address=0x19D5C0, hrad=33, hval=62, vrad=10, vval=62},
			["53"] = {type="attack", id=53, address=0x19D600, hrad=13, hval=39, vrad=20, vval=50},
			["54"] = {type="attack", id=54, address=0x19D610, hrad=22, hval=43, vrad=12, vval=60},
			["56"] = {type="attack", id=56, address=0x19D630, hrad=13, hval=39, vrad=20, vval=50},
			["57"] = {type="attack", id=57, address=0x19D640, hrad=22, hval=43, vrad=12, vval=60},
			["59"] = {type="attack", id=59, address=0x19D660, hrad=13, hval=39, vrad=20, vval=50},
			["60"] = {type="attack", id=60, address=0x19D670, hrad=22, hval=43, vrad=12, vval=60},
	},
}
character_specific.claw.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x16A866, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A87E, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A896, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A8AE, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A84E, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = { -- same as backward
			{ animation = 0x16A8CA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A8E2, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A8FA, duration = 13, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A912, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A92A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A942, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x16ACDA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16ACF2, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x16AD0A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
	},
-----------neutral-----------
	lifting_up = {
			{ animation = 0x16AD26, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x16AD3E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x16AD56, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
	},
-----------up-----------
	jump_neutral = {
			{ animation = 0x16A95E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x16A976, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x16A98E, duration = 22, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 11,},{name = "", x = 0, y = 22,},{name = "", x = 0, y = 32,},{name = "", x = 0, y = 41,},{name = "", x = 0, y = 50,},{name = "", x = 0, y = 58,},{name = "", x = 0, y = 66,},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 79,},{name = "", x = 0, y = 85,},{name = "", x = 0, y = 90,},{name = "", x = 0, y = 94,},{name = "", x = 0, y = 97,},{name = "", x = 0, y = 100,},{name = "", x = 0, y = 103,},{name = "", x = 0, y = 104,},{name = "", x = 0, y = 105,},{name = "", x = 0, y = 106,},{name = "", x = 0, y = 105,},{name = "", x = 0, y = 104,},{name = "", x = 0, y = 103,}}},
			{ animation = 0x16A9A6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 100},{name = "", x = 0, y = 97,},{name = "", x = 0, y = 94,},{name = "", x = 0, y = 89,}}},
			{ animation = 0x16A9BE, duration = 14, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 84},{name = "", x = 0, y = 79,},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 66,},{name = "", x = 0, y = 58,},{name = "", x = 0, y = 50,},{name = "", x = 0, y = 41,},{name = "", x = 0, y = 31,},{name = "", x = 0, y = 21,},{name = "", x = 0, y = 10,}}},
			{ animation = 0x16AB92, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
	},
-----------up forward-----------
	jump_forward = {
			{ animation = 0x16AA0A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x16AA22, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x16AA3A, duration = 14, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 5, y = 11,},{name = "", x = 10, y = 22,},{name = "", x = 15, y = 32,},{name = "", x = 19, y = 41,},{name = "", x = 24, y = 50,},{name = "", x = 29, y = 58,},{name = "", x = 33, y = 66,},{name = "", x = 38, y = 72,},{name = "", x = 42, y = 78,},{name = "", x = 46, y = 84,},{name = "", x = 51, y = 89,},{name = "", x = 55, y = 93,},{name = "", x = 59, y = 96,}}},
			{ animation = 0x16AA52, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 63, y = 99},{name = "", x = 67, y = 101,},{name = "", x = 71, y = 103,},{name = "", x = 75, y = 104,},{name = "", x = 79, y = 104,}}},
			{ animation = 0x16AA6A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 83, y = 103},{name = "", x = 87, y = 102,},{name = "", x = 90, y = 100,},{name = "", x = 94, y = 98,}}},
			{ animation = 0x16AA82, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 98, y = 95},{name = "", x = 101, y = 91,},{name = "", x = 105, y = 87,}}},
			{ animation = 0x16AA9A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 108, y = 82},{name = "", x = 111, y = 76,},{name = "", x = 115, y = 70,},{name = "", x = 118, y = 62,}}},
			{ animation = 0x16AAB2, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 121, y = 55},{name = "", x = 124, y = 46,},{name = "", x = 127, y = 37,},{name = "", x = 130, y = 28,},{name = "", x = 133, y = 17,}}},
			{ animation = 0x16AACA, duration = 14, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 136, y = 7}}},
	},
-----------up back-----------
	jump_backward = {
			{ animation = 0x16AAE6, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x16AAFE, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x16AB16, duration = 22, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = -5, y = 11,},{name = "", x = -11, y = 22,},{name = "", x = -16, y = 33,},{name = "", x = -21, y = 42,},{name = "", x = -26, y = 51,},{name = "", x = -31, y = 60,},{name = "", x = -36, y = 67,},{name = "", x = -41, y = 74,},{name = "", x = -46, y = 81,},{name = "", x = -51, y = 86,},{name = "", x = -56, y = 91,},{name = "", x = -61, y = 96,},{name = "", x = -66, y = 99,},{name = "", x = -70, y = 102,},{name = "", x = -75, y = 105,},{name = "", x = -79, y = 107,},{name = "", x = -84, y = 108,},{name = "", x = -88, y = 108,},{name = "", x = -92, y = 108,},{name = "", x = -97, y = 107,},{name = "", x = -101, y = 106,}}},
			{ animation = 0x16AB2E, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = -105, y = 103},{name = "", x = -109, y = 101,},{name = "", x = -113, y = 97,},{name = "", x = -117, y = 93,}}},
			{ animation = 0x16AB46, duration = 14, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = -121, y = 88},{name = "", x = -121, y = 83,},{name = "", x = -121, y = 76,},{name = "", x = -121, y = 70,},{name = "", x = -121, y = 62,},{name = "", x = -121, y = 54,},{name = "", x = -121, y = 45,},{name = "", x = -121, y = 36,},{name = "", x = -121, y = 26,},{name = "", x = -121, y = 15,},{name = "", x = -121, y = 4,}}},
	},
-----------LP-----------
	["St LP"] = {
		startup = {
			{ animation = 0x16815E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x168176, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x16818E, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["31"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"],
			character_specific.claw.boxes.attack["27"]}},
		},
		recover = {
			{ animation = 0x1681A6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1681BE, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------MP-----------
	["St MP"] = {
		startup = {
			{ animation = 0x168256, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["32"],
			character_specific.claw.boxes.vulnerability.middle["25"],
			character_specific.claw.boxes.vulnerability.bottom["22"]}},
			{ animation = 0x16826E, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["33"],
			character_specific.claw.boxes.vulnerability.middle["26"],
			character_specific.claw.boxes.vulnerability.bottom["22"]}},
		},
		active = {
			{ animation = 0x168286, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["20"],
			character_specific.claw.boxes.vulnerability.middle["13"],
			character_specific.claw.boxes.vulnerability.bottom["16"],
			character_specific.claw.boxes.attack["29"]}},
		},
		recover = {
			{ animation = 0x16829E, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["21"],
			character_specific.claw.boxes.vulnerability.middle["6"],
			character_specific.claw.boxes.vulnerability.bottom["6"]}},
			{ animation = 0x1682B6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["32"],
			character_specific.claw.boxes.vulnerability.middle["25"],
			character_specific.claw.boxes.vulnerability.bottom["22"]}},
			{ animation = 0x1682CE, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["32"],
			character_specific.claw.boxes.vulnerability.middle["25"],
			character_specific.claw.boxes.vulnerability.bottom["22"]}},
		},
	},
-----------HP-----------
	["St HP"] = {
		startup = {
			{ animation = 0x168396, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1683AE, duration = 4, hitboxes = {
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x1683C6, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["36"],
			character_specific.claw.boxes.vulnerability.middle["13"],
			character_specific.claw.boxes.vulnerability.bottom["16"],
			character_specific.claw.boxes.attack["48"]}},
			{ animation = 0x1683DE, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["22"],
			character_specific.claw.boxes.vulnerability.middle["14"],
			character_specific.claw.boxes.vulnerability.bottom["17"],
			character_specific.claw.boxes.attack["31"]}},
		},
		recover = {
			{ animation = 0x1683F6, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["23"],
			character_specific.claw.boxes.vulnerability.middle["15"],
			character_specific.claw.boxes.vulnerability.bottom["18"]}},
			{ animation = 0x16840E, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["34"],
			character_specific.claw.boxes.vulnerability.middle["27"],
			character_specific.claw.boxes.vulnerability.bottom["21"]}},
			{ animation = 0x168426, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["34"],
			character_specific.claw.boxes.vulnerability.middle["27"],
			character_specific.claw.boxes.vulnerability.bottom["21"]}},
		},
	},
-----------LK-----------
	["St LK"] = {
		startup = {
			{ animation = 0x1684A6, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1684BE, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["32"],
			character_specific.claw.boxes.vulnerability.middle["25"],
			character_specific.claw.boxes.vulnerability.bottom["22"]}},
		},
		active = {
			{ animation = 0x1684D6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["37"],
			character_specific.claw.boxes.vulnerability.middle["16"],
			character_specific.claw.boxes.vulnerability.bottom["22"],
			character_specific.claw.boxes.attack["33"]}},
		},
		recover = {
			{ animation = 0x1684EE, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["32"],
			character_specific.claw.boxes.vulnerability.middle["25"],
			character_specific.claw.boxes.vulnerability.bottom["22"]}},
			{ animation = 0x168506, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["27"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16851E, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------MK-----------
	["St MK"] = {
		startup = {
			{ animation = 0x16859E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x1685B6, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
		},
		active = {
			{ animation = 0x1685CE, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["39"],
			character_specific.claw.boxes.vulnerability.middle["29"],
			character_specific.claw.boxes.vulnerability.bottom["24"],
			character_specific.claw.boxes.attack["35"]}},
		},
		recover = {
			{ animation = 0x1685E6, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x1685FE, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x168616, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
		},
	},
-----------HK-----------
	["St HK"] = {
		startup = {
			{ animation = 0x1686C6, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1686DE, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1686F6, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x16870E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
		},
		active = {
			{ animation = 0x168726, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["40"],
			character_specific.claw.boxes.vulnerability.middle["30"],
			character_specific.claw.boxes.vulnerability.bottom["24"],
			character_specific.claw.boxes.attack["38"]}},
		},
		recover = {
			{ animation = 0x16873E, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x168756, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x16876E, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x168786, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16879E, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------down LP-----------
	["Cr LP"] = {
		startup = {
			{ animation = 0x1687BA, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x1687D2, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x1687EA, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["15"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"]}},
		},
		active = {
			{ animation = 0x168802, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["13"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"],
			character_specific.claw.boxes.attack["3"]}},
		},
		recover = {
			{ animation = 0x16881A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["15"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x168832, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x16884A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x168862, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
		},
	},
-----------down MP-----------
	["Cr MP"] = {
		startup = {
			{ animation = 0x16887E, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x168896, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x1688AE, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["15"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"]}},
		},
		active = {
			{ animation = 0x1688C6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["13"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"],
			character_specific.claw.boxes.attack["12"]}},
		},
		recover = {
			{ animation = 0x1688DE, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["15"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x1688F6, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x16890E, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x168926, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------down HP-----------
	["Cr HP"] = {
		startup = {
			{ animation = 0x168942, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x16895A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x168972, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["15"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"]}},
		},
		active = {
			{ animation = 0x16898A, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["42"],
			character_specific.claw.boxes.vulnerability.middle["31"],
			character_specific.claw.boxes.vulnerability.bottom["8"],
			character_specific.claw.boxes.attack["11"]}},
		},
		recover = {
			{ animation = 0x1689A2, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["15"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x1689BA, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x1689D2, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x1689EA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------down LK-----------
	["Cr LK"] = {
		startup = {
			{ animation = 0x168A06, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168A1E, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168A36, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168A4E, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x168A66, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["10"],
			character_specific.claw.boxes.attack["4"]}},
		},
		recover = {
			{ animation = 0x168A7E, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168A96, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------down MK-----------
	["Cr MK"] = {
		startup = {
			{ animation = 0x168AB2, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168ACA, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168AE2, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168AFA, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x168B12, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["10"],
			character_specific.claw.boxes.attack["14"]}},
		},
		recover = {
			{ animation = 0x168B2A, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168B42, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
		},
	},
-----------down HK-----------
	["Cr HK"] = {
		startup = {
			{ animation = 0x168B5E, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168B76, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x168B8E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
		},
		active = {
			{ animation = 0x168BA6, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["10"],
			character_specific.claw.boxes.attack["5"]},
			coord = {{name = "", x = 13, y = 0},{name = "", x = 25, y = 0,},{name = "", x = 36, y = 0,},{name = "", x = 46, y = 0,},{name = "", x = 55, y = 0,},{name = "", x = 63, y = 0,},{name = "", x = 70, y = 0,},{name = "", x = 76, y = 0,},{name = "", x = 81, y = 0,},{name = "", x = 85, y = 0,},{name = "", x = 88, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 91, y = 0,},{name = "", x = 91, y = 0,},{name = "", x = 90, y = 0,}}},
		},
		recover = {
			{ animation = 0x168BBE, duration = 13, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 90, y = 0},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,},{name = "", x = 90, y = 0,}}},
			{ animation = 0x168BD6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 90, y = 0}
----------- Recover error -----------
}},
		},
	},
-----------LP-----------
	["Cl LP"] = {
		startup = {
			{ animation = 0x1680E2, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x1680FA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x168112, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["31"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"],
			character_specific.claw.boxes.attack["27"]}},
		},
		recover = {
			{ animation = 0x16812A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x168142, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------MP-----------
	["Cl MP"] = {
		startup = {
			{ animation = 0x1681DA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1681F2, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x16820A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["31"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"],
			character_specific.claw.boxes.attack["28"]}},
		},
		recover = {
			{ animation = 0x168222, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16823A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------HP-----------
	["Cl HP"] = {
		startup = {
			{ animation = 0x1682EA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x168302, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16831A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["34"],
			character_specific.claw.boxes.vulnerability.middle["27"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x168332, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["35"],
			character_specific.claw.boxes.vulnerability.middle["27"],
			character_specific.claw.boxes.vulnerability.bottom["1"],
			character_specific.claw.boxes.attack["30"]}},
		},
		recover = {
			{ animation = 0x16834A, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["19"],
			character_specific.claw.boxes.vulnerability.middle["12"],
			character_specific.claw.boxes.vulnerability.bottom["15"]}},
			{ animation = 0x168362, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16837A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------LK-----------
	["Cl LK"] = {
		startup = {
			{ animation = 0x168442, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x16845A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"],
			character_specific.claw.boxes.attack["32"]}},
		},
		recover = {
			{ animation = 0x168472, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16848A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["24"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------MK-----------
	["Cl MK"] = {
		startup = {
			{ animation = 0x16853A, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x168552, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["24"],
			character_specific.claw.boxes.vulnerability.middle["17"],
			character_specific.claw.boxes.vulnerability.bottom["19"],
			character_specific.claw.boxes.attack["34"]}},
		},
		recover = {
			{ animation = 0x16856A, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x168582, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------HK-----------
	["Cl HK"] = {
		startup = {
			{ animation = 0x168632, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x16864A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
		},
		active = {
			{ animation = 0x168662, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["39"],
			character_specific.claw.boxes.vulnerability.middle["29"],
			character_specific.claw.boxes.vulnerability.bottom["24"],
			character_specific.claw.boxes.attack["36"]}},
		},
		recover = {
			{ animation = 0x16867A, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x168692, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x1686AA, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["38"],
			character_specific.claw.boxes.vulnerability.middle["28"],
			character_specific.claw.boxes.vulnerability.bottom["23"]
----------- Recover error -----------
}},
		},
	},
-----------up LP-----------
	["JN LP"] = {
		startup = {
			{ animation = 0x168C0A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x168C22, duration = 30, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"],
			character_specific.claw.boxes.attack["39"]}},
		},
		recover = {
			{ animation = 0x168C3A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------up MP-----------
	["JN MP"] = {
		startup = {
			{ animation = 0x168C9E, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x168CB6, duration = 14, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"],
			character_specific.claw.boxes.attack["40"]}},
		},
		recover = {
			{ animation = 0x168CCE, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168CE6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168CFE, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------up HP-----------
	["JN HP"] = {
		startup = {
			{ animation = 0x168D1A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168D32, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x168D4A, duration = 10, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"],
			character_specific.claw.boxes.attack["41"]}},
		},
		recover = {
			{ animation = 0x168D62, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168D7A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168D92, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------up LK-----------
	["JN LK"] = {
		startup = {
			{ animation = 0x168F9A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168FB2, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x168FCA, duration = 20, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["12"],
			character_specific.claw.boxes.attack["6"]}},
		},
		recover = {
			{ animation = 0x168FE2, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168FFA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x169012, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------up MK-----------
	["JN MK"] = {
		startup = {
			{ animation = 0x169046, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x16905E, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x169076, duration = 10, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["12"],
			character_specific.claw.boxes.attack["15"]}},
		},
		recover = {
			{ animation = 0x16908E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1690A6, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1690BE, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------up HK-----------
	["JN HK"] = {
		startup = {
			{ animation = 0x1690DA, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1690F2, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x16910A, duration = 10, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["33"],
			character_specific.claw.boxes.vulnerability.bottom["25"],
			character_specific.claw.boxes.attack["45"]}},
		},
		recover = {
			{ animation = 0x169122, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x16913A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x169152, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x16916A, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------up back LP-----------
	["J LP"] = {
		startup = {
			{ animation = 0x168DAE, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168DC6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x168DDE, duration = 10, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["32"],
			character_specific.claw.boxes.vulnerability.bottom["3"],
			character_specific.claw.boxes.attack["42"]}},
		},
		recover = {
			{ animation = 0x168DF6, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168E0E, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168E26, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------up back MP-----------
	["J MP"] = {
		startup = {
			{ animation = 0x168E42, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168E5A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x168E72, duration = 10, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["32"],
			character_specific.claw.boxes.vulnerability.bottom["3"],
			character_specific.claw.boxes.attack["43"]}},
		},
		recover = {
			{ animation = 0x168E8A, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168EA2, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168EBA, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------up back HP-----------
	["J HP"] = {
		startup = {
			{ animation = 0x168ED6, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168EEE, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x168F06, duration = 10, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"],
			character_specific.claw.boxes.attack["44"]}},
		},
		recover = {
			{ animation = 0x168F1E, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168F36, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168F4E, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x168F66, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------up back LK-----------
	["J LK"] = {
		startup = {
			{ animation = 0x16919E, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1691B6, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x1691CE, duration = 20, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["13"],
			character_specific.claw.boxes.attack["7"]}},
		},
		recover = {
			{ animation = 0x1691E6, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1691FE, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x169216, duration = 20, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------up back MK-----------
	["J MK"] = {
		startup = {
			{ animation = 0x16924A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x169262, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x16927A, duration = 10, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["13"],
			character_specific.claw.boxes.attack["17"]}},
		},
		recover = {
			{ animation = 0x169292, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1692AA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1692C2, duration = 20, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------up back HK-----------
	["J HK"] = {
		startup = {
			{ animation = 0x1692DE, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1692F6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x16930E, duration = 12, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["33"],
			character_specific.claw.boxes.vulnerability.bottom["25"],
			character_specific.claw.boxes.attack["46"]}},
		},
		recover = {
			{ animation = 0x169326, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x16933E, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x169356, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x16936E, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------forward LP-----------
	["Crystal Flash LP"] = {
		startup = {
			{ animation = 0x16946A, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x169482, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 5, y = 7},{name = "", x = 10, y = 13,},{name = "", x = 15, y = 18,}}},
		},
		active = {
			{ animation = 0x16949A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 20, y = 22},{name = "", x = 25, y = 25,},{name = "", x = 30, y = 27,},{name = "", x = 35, y = 28,}}},
		},
		recover = {
			{ animation = 0x1694B2, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 40, y = 28},{name = "", x = 45, y = 27,},{name = "", x = 50, y = 25,}}},
			{ animation = 0x1694CA, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 55, y = 22},{name = "", x = 60, y = 18,},{name = "", x = 65, y = 13,}}},
			{ animation = 0x1694E2, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 70, y = 7},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,}}},
			{ animation = 0x1694FA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 70, y = 0},{name = "", x = 70, y = 0,}}},
			{ animation = 0x169512, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 70, y = 0},{name = "", x = 70, y = 0,}}},
			{ animation = 0x16952A, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["14"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"],
			character_specific.claw.boxes.attack["8"]},
			coord = {{name = "", x = 70, y = 0},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,}}},
			{ animation = 0x169542, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 70, y = 0},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,},{name = "", x = 70, y = 0,}}},
			{ animation = 0x16955A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 70, y = 0}
----------- Recover error -----------
}},
		},
	},
-----------forward MP-----------
	["Crystal Flash MP"] = {
		startup = {
			{ animation = 0x169576, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x16958E, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 5, y = 7},{name = "", x = 10, y = 13,},{name = "", x = 15, y = 18,}}},
		},
		active = {
			{ animation = 0x1695A6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 20, y = 22},{name = "", x = 25, y = 25,},{name = "", x = 30, y = 27,},{name = "", x = 35, y = 28,}}},
		},
		recover = {
			{ animation = 0x1695BE, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 40, y = 28},{name = "", x = 45, y = 27,},{name = "", x = 50, y = 25,}}},
			{ animation = 0x1695D6, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 55, y = 22},{name = "", x = 60, y = 18,},{name = "", x = 65, y = 13,}}},
			{ animation = 0x1695EE, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 70, y = 7}}},
			{ animation = 0x169606, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 70, y = 0},{name = "", x = 70, y = 0,}}},
			{ animation = 0x16961E, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 75, y = 7},{name = "", x = 80, y = 13,},{name = "", x = 85, y = 18,},{name = "", x = 90, y = 22,}}},
			{ animation = 0x169636, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 95, y = 25},{name = "", x = 100, y = 27,},{name = "", x = 105, y = 28,}}},
			{ animation = 0x16964E, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 110, y = 28},{name = "", x = 115, y = 27,},{name = "", x = 120, y = 25,}}},
			{ animation = 0x169666, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 125, y = 22},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,}}},
			{ animation = 0x16967E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 125, y = 0},{name = "", x = 125, y = 0,}}},
			{ animation = 0x169696, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 125, y = 0},{name = "", x = 125, y = 0,}}},
			{ animation = 0x1696AE, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["14"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"],
			character_specific.claw.boxes.attack["19"]},
			coord = {{name = "", x = 125, y = 0},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,}}},
			{ animation = 0x1696C6, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 125, y = 0},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,},{name = "", x = 125, y = 0,}}},
			{ animation = 0x1696DE, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 125, y = 0}
----------- Recover error -----------
}},
		},
	},
-----------forward LK-----------
	["Flip Kick LK"] = {
		startup = {
			{ animation = 0x16A26A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"]}},
			{ animation = 0x16A282, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 2, y = 6},{name = "", x = 4, y = 11,}}},
		},
		active = {
			{ animation = 0x16A29A, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.attack["53"]},
			coord = {{name = "", x = 6, y = 16},{name = "", x = 7, y = 20,},{name = "", x = 9, y = 24,},{name = "", x = 11, y = 28,},{name = "", x = 13, y = 31,},{name = "", x = 15, y = 34,}}},
			{ animation = 0x16A2B2, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["46"],
			character_specific.claw.boxes.vulnerability.middle["36"],
			character_specific.claw.boxes.attack["54"]},
			coord = {{name = "", x = 16, y = 37},{name = "", x = 18, y = 39,},{name = "", x = 20, y = 41,},{name = "", x = 21, y = 43,},{name = "", x = 23, y = 44,}}},
		},
		recover = {
			{ animation = 0x16A2CA, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["46"],
			character_specific.claw.boxes.vulnerability.middle["36"]},
			coord = {{name = "", x = 24, y = 45},{name = "", x = 26, y = 45,},{name = "", x = 27, y = 45,},{name = "", x = 29, y = 45,}}},
			{ animation = 0x16A2E2, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["47"],
			character_specific.claw.boxes.vulnerability.middle["37"]},
			coord = {{name = "", x = 30, y = 44},{name = "", x = 32, y = 43,},{name = "", x = 33, y = 41,}}},
			{ animation = 0x16A2FA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["48"]},
			coord = {{name = "", x = 35, y = 39},{name = "", x = 36, y = 37,}}},
			{ animation = 0x16A312, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 37, y = 34},{name = "", x = 38, y = 31,},{name = "", x = 40, y = 28,}}},
			{ animation = 0x16A32A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 41, y = 24},{name = "", x = 42, y = 20,}}},
			{ animation = 0x16A342, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 43, y = 16},{name = "", x = 44, y = 11,},{name = "", x = 45, y = 6,},{name = "", x = 46, y = 0,}}},
			{ animation = 0x16A35A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 47, y = 0},{name = "", x = 47, y = 0,},{name = "", x = 47, y = 0,},{name = "", x = 47, y = 0,}}},
			{ animation = 0x16A372, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 47, y = 0}
----------- Recover error -----------
}},
		},
	},
-----------forward MK-----------
	["Flip Kick MK"] = {
		startup = {
			{ animation = 0x16A38E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x16A3A6, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 3, y = 7},{name = "", x = 6, y = 13,}}},
		},
		active = {
			{ animation = 0x16A3BE, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.attack["56"]},
			coord = {{name = "", x = 9, y = 18},{name = "", x = 11, y = 24,},{name = "", x = 14, y = 28,},{name = "", x = 17, y = 33,},{name = "", x = 20, y = 37,},{name = "", x = 22, y = 40,}}},
			{ animation = 0x16A3D6, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["46"],
			character_specific.claw.boxes.vulnerability.middle["36"],
			character_specific.claw.boxes.attack["57"]},
			coord = {{name = "", x = 25, y = 43},{name = "", x = 27, y = 46,},{name = "", x = 30, y = 48,},{name = "", x = 32, y = 50,},{name = "", x = 35, y = 51,}}},
		},
		recover = {
			{ animation = 0x16A3EE, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["46"],
			character_specific.claw.boxes.vulnerability.middle["36"]},
			coord = {{name = "", x = 37, y = 52},{name = "", x = 39, y = 52,},{name = "", x = 41, y = 52,},{name = "", x = 44, y = 52,}}},
			{ animation = 0x16A406, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["47"],
			character_specific.claw.boxes.vulnerability.middle["37"]},
			coord = {{name = "", x = 46, y = 51},{name = "", x = 48, y = 50,},{name = "", x = 50, y = 48,}}},
			{ animation = 0x16A41E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["48"]},
			coord = {{name = "", x = 52, y = 46},{name = "", x = 54, y = 43,}}},
			{ animation = 0x16A436, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 56, y = 40},{name = "", x = 58, y = 37,},{name = "", x = 60, y = 33,}}},
			{ animation = 0x16A44E, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 61, y = 28},{name = "", x = 63, y = 24,}}},
			{ animation = 0x16A466, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 65, y = 18},{name = "", x = 66, y = 13,},{name = "", x = 68, y = 7,},{name = "", x = 70, y = 0,}}},
			{ animation = 0x16A47E, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 71, y = 0},{name = "", x = 71, y = 0,},{name = "", x = 71, y = 0,},{name = "", x = 71, y = 0,},{name = "", x = 71, y = 0,},{name = "", x = 71, y = 0,}}},
			{ animation = 0x16A496, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 71, y = 0}
----------- Recover error -----------
}},
		},
	},
-----------forward HK-----------
	["Flip Kick HK"] = {
		startup = {
			{ animation = 0x16A4B2, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x16A4CA, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 4, y = 7},{name = "", x = 8, y = 14,}}},
		},
		active = {
			{ animation = 0x16A4E2, duration = 6, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.attack["59"]},
			coord = {{name = "", x = 12, y = 21},{name = "", x = 15, y = 27,},{name = "", x = 19, y = 32,},{name = "", x = 23, y = 37,},{name = "", x = 26, y = 42,},{name = "", x = 29, y = 46,}}},
			{ animation = 0x16A4FA, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["46"],
			character_specific.claw.boxes.vulnerability.middle["36"],
			character_specific.claw.boxes.attack["60"]},
			coord = {{name = "", x = 33, y = 49},{name = "", x = 36, y = 52,},{name = "", x = 39, y = 55,},{name = "", x = 42, y = 57,},{name = "", x = 45, y = 58,}}},
		},
		recover = {
			{ animation = 0x16A512, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["46"],
			character_specific.claw.boxes.vulnerability.middle["36"]},
			coord = {{name = "", x = 48, y = 59},{name = "", x = 51, y = 60,},{name = "", x = 54, y = 60,},{name = "", x = 56, y = 59,}}},
			{ animation = 0x16A52A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["47"],
			character_specific.claw.boxes.vulnerability.middle["37"]},
			coord = {{name = "", x = 59, y = 58},{name = "", x = 61, y = 57,},{name = "", x = 64, y = 55,}}},
			{ animation = 0x16A542, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["48"]},
			coord = {{name = "", x = 66, y = 52},{name = "", x = 68, y = 49,}}},
			{ animation = 0x16A55A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 71, y = 46},{name = "", x = 73, y = 42,},{name = "", x = 75, y = 37,}}},
			{ animation = 0x16A572, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 77, y = 32},{name = "", x = 79, y = 27,}}},
			{ animation = 0x16A58A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["3"],
			character_specific.claw.boxes.vulnerability.top["3"],
			character_specific.claw.boxes.vulnerability.middle["3"],
			character_specific.claw.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 81, y = 21},{name = "", x = 82, y = 14,},{name = "", x = 84, y = 7,},{name = "", x = 85, y = 0,}}},
			{ animation = 0x16A5A2, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 87, y = 0},{name = "", x = 87, y = 0,},{name = "", x = 87, y = 0,},{name = "", x = 87, y = 0,},{name = "", x = 87, y = 0,},{name = "", x = 87, y = 0,},{name = "", x = 87, y = 0,},{name = "", x = 87, y = 0,}}},
			{ animation = 0x16A5BA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 87, y = 0}
----------- Recover error -----------
}},
		},
	},
-----------LK MK HK-----------
	["Back Flip (Kick)"] = {
		startup = {
			{ animation = 0x16AE66, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"]}},
			{ animation = 0x16AE7E, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 8},{name = "", x = 0, y = 16,},{name = "", x = 0, y = 23,},{name = "", x = 0, y = 29,},{name = "", x = 0, y = 34,},{name = "", x = 0, y = 39,}}},
			{ animation = 0x16AE96, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 44},{name = "", x = 0, y = 48,},{name = "", x = 0, y = 51,},{name = "", x = 0, y = 53,},{name = "", x = 0, y = 55,},{name = "", x = 0, y = 56,},{name = "", x = 0, y = 57,},{name = "", x = 0, y = 57,}}},
			{ animation = 0x16AEAE, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 56},{name = "", x = 0, y = 55,},{name = "", x = 0, y = 53,},{name = "", x = 0, y = 51,},{name = "", x = 0, y = 48,},{name = "", x = 0, y = 44,},{name = "", x = 0, y = 39,},{name = "", x = 0, y = 34,}}},
			{ animation = 0x16AEC6, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 29},{name = "", x = 0, y = 23,},{name = "", x = 0, y = 16,},{name = "", x = 0, y = 8,}}},
			{ animation = 0x16AEDE, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16AEF6, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------LP MP HP-----------
	["Back Flip (Punch)"] = {
		startup = {
			{ animation = 0x16AD8A, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["1"]}},
			{ animation = 0x16ADA2, duration = 7, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 10},{name = "", x = 0, y = 18,},{name = "", x = 0, y = 27,},{name = "", x = 0, y = 34,},{name = "", x = 0, y = 41,},{name = "", x = 0, y = 47,},{name = "", x = 0, y = 53,}}},
			{ animation = 0x16ADBA, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 58},{name = "", x = 0, y = 62,},{name = "", x = 0, y = 66,},{name = "", x = 0, y = 69,},{name = "", x = 0, y = 72,},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 75,},{name = "", x = 0, y = 75,}}},
			{ animation = 0x16ADD2, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 75},{name = "", x = 0, y = 75,},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 72,},{name = "", x = 0, y = 69,},{name = "", x = 0, y = 66,},{name = "", x = 0, y = 62,},{name = "", x = 0, y = 58,},{name = "", x = 0, y = 53,},{name = "", x = 0, y = 47,},{name = "", x = 0, y = 41,},{name = "", x = 0, y = 34,},{name = "", x = 0, y = 27,},{name = "", x = 0, y = 18,},{name = "", x = 0, y = 10,}}},
			{ animation = 0x16ADEA, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["1"]}},
			{ animation = 0x16AE02, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 5},{name = "", x = 0, y = 8,},{name = "", x = 0, y = 12,},{name = "", x = 0, y = 14,},{name = "", x = 0, y = 16,},{name = "", x = 0, y = 17,},{name = "", x = 0, y = 18,}}},
			{ animation = 0x16AE1A, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 18},{name = "", x = 0, y = 17,},{name = "", x = 0, y = 16,},{name = "", x = 0, y = 14,},{name = "", x = 0, y = 12,},{name = "", x = 0, y = 8,},{name = "", x = 0, y = 5,}}},
			{ animation = 0x16AE32, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16AE4A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
}