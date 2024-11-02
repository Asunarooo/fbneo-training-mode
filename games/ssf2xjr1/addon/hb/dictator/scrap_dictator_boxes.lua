-- Copy in the correct fields what's written in dictator_[...]_boxes.lua
character_specific.dictator.boxes = {
	push = {

	},
	vulnerability = {
		top = {

		},
		middle = {

		},
		 bottom = {

		},
	},
	attack = {

	},
}
character_specific.dictator.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x155A70, duration = 5, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155A28, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155A40, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155A58, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x155A8C, duration = 7, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155AA4, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155ABC, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155AD4, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x155B54, duration = 3, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155B6C, duration = 3, hitboxes = {
			character_specific.dictator.boxes.push["2"],
			character_specific.dictator.boxes.vulnerability.top["2"],
			character_specific.dictator.boxes.vulnerability.middle["2"],
			character_specific.dictator.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x155B84, duration = 3, hitboxes = {
			character_specific.dictator.boxes.push["2"],
			character_specific.dictator.boxes.vulnerability.top["2"],
			character_specific.dictator.boxes.vulnerability.middle["2"],
			character_specific.dictator.boxes.vulnerability.bottom["2"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x155BA0, duration = 2, hitboxes = {
			character_specific.dictator.boxes.push["2"],
			character_specific.dictator.boxes.vulnerability.top["2"],
			character_specific.dictator.boxes.vulnerability.middle["2"],
			character_specific.dictator.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x155BB8, duration = 3, hitboxes = {
			character_specific.dictator.boxes.push["2"],
			character_specific.dictator.boxes.vulnerability.top["2"],
			character_specific.dictator.boxes.vulnerability.middle["2"],
			character_specific.dictator.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x155BD0, duration = 3, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x155AF0, duration = 7, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155B08, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155B20, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x155B38, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["23"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]}},
	},
-----------up-----------
	jump_neutral = {
			{ animation = 0x155C04, duration = 2, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["1"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x155C1C, duration = 12, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 9,},{name = "", x = 0, y = 17,},{name = "", x = 0, y = 25,},{name = "", x = 0, y = 33,},{name = "", x = 0, y = 40,},{name = "", x = 0, y = 47,},{name = "", x = 0, y = 54,},{name = "", x = 0, y = 60,},{name = "", x = 0, y = 66,},{name = "", x = 0, y = 71,},{name = "", x = 0, y = 76,}}},
			{ animation = 0x155C34, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 81},{name = "", x = 0, y = 85,},{name = "", x = 0, y = 89,},{name = "", x = 0, y = 93,},{name = "", x = 0, y = 96,},{name = "", x = 0, y = 99,},{name = "", x = 0, y = 101,},{name = "", x = 0, y = 103,}}},
			{ animation = 0x155C4C, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 105},{name = "", x = 0, y = 106,},{name = "", x = 0, y = 107,},{name = "", x = 0, y = 108,},{name = "", x = 0, y = 108,},{name = "", x = 0, y = 108,},{name = "", x = 0, y = 107,},{name = "", x = 0, y = 106,}}},
			{ animation = 0x155C64, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 105},{name = "", x = 0, y = 103,},{name = "", x = 0, y = 101,},{name = "", x = 0, y = 99,},{name = "", x = 0, y = 96,},{name = "", x = 0, y = 93,},{name = "", x = 0, y = 89,},{name = "", x = 0, y = 85,}}},
			{ animation = 0x155C7C, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 81},{name = "", x = 0, y = 76,},{name = "", x = 0, y = 71,},{name = "", x = 0, y = 66,},{name = "", x = 0, y = 60,},{name = "", x = 0, y = 54,},{name = "", x = 0, y = 47,},{name = "", x = 0, y = 40,},{name = "", x = 0, y = 33,},{name = "", x = 0, y = 25,},{name = "", x = 0, y = 17,},{name = "", x = 0, y = 9,},{name = "", x = 0, y = 0,}}},
	},
-----------up forward-----------
	jump_forward = {
			{ animation = 0x155C98, duration = 2, hitboxes = {
			character_specific.dictator.boxes.push["1"],
			character_specific.dictator.boxes.vulnerability.top["1"],
			character_specific.dictator.boxes.vulnerability.middle["1"],
			character_specific.dictator.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x155CB0, duration = 12, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 4, y = 8,},{name = "", x = 9, y = 16,},{name = "", x = 13, y = 24,},{name = "", x = 18, y = 32,},{name = "", x = 22, y = 39,},{name = "", x = 26, y = 46,},{name = "", x = 31, y = 52,},{name = "", x = 35, y = 58,},{name = "", x = 39, y = 64,},{name = "", x = 44, y = 69,},{name = "", x = 48, y = 74,}}},
			{ animation = 0x155CC8, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 52, y = 78},{name = "", x = 56, y = 82,},{name = "", x = 61, y = 86,},{name = "", x = 65, y = 90,},{name = "", x = 69, y = 93,},{name = "", x = 73, y = 95,},{name = "", x = 77, y = 97,},{name = "", x = 82, y = 99,}}},
			{ animation = 0x155CE0, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 86, y = 101},{name = "", x = 90, y = 102,},{name = "", x = 94, y = 103,},{name = "", x = 98, y = 103,},{name = "", x = 102, y = 103,},{name = "", x = 106, y = 103,},{name = "", x = 110, y = 102,},{name = "", x = 114, y = 101,}}},
			{ animation = 0x155CF8, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 118, y = 99},{name = "", x = 122, y = 97,},{name = "", x = 126, y = 95,},{name = "", x = 130, y = 93,},{name = "", x = 133, y = 90,},{name = "", x = 137, y = 86,},{name = "", x = 141, y = 82,},{name = "", x = 145, y = 78,}}},
			{ animation = 0x155D10, duration = 8, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 149, y = 74},{name = "", x = 152, y = 69,},{name = "", x = 156, y = 64,},{name = "", x = 160, y = 58,},{name = "", x = 164, y = 52,},{name = "", x = 167, y = 46,},{name = "", x = 171, y = 39,},{name = "", x = 175, y = 32,},{name = "", x = 178, y = 24,},{name = "", x = 182, y = 16,},{name = "", x = 186, y = 8,},{name = "", x = 189, y = 0,}}},
	},
-----------neutral-----------
	neutral = {
	},
-----------up forward MP-----------
	["J MP"] = {
		startup = {
			{ animation = 0x153CC4, duration = 3, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["17"],
			character_specific.dictator.boxes.vulnerability.middle["19"]}},
		},
		active = {
			{ animation = 0x153CDC, duration = 10, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["17"],
			character_specific.dictator.boxes.vulnerability.middle["26"],
			character_specific.dictator.boxes.attack["83"]}},
		},
	},
-----------up forward-----------
	jump_forward = {
},
			coord = {{name = "", x = 4, y = 6}			{ animation = 0x153CF4, duration = 3, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["19"],
			character_specific.dictator.boxes.vulnerability.middle["21"]}},
			{ animation = 0x153D0C, duration = 4, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x153D24, duration = 1, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["3"],
			character_specific.dictator.boxes.vulnerability.middle["3"],
			character_specific.dictator.boxes.vulnerability.bottom["3"]}},
	},
-----------up forward MP-----------
	["J MP"] = {
		startup = {
			{ animation = 0x153D40, duration = 3, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["17"],
			character_specific.dictator.boxes.vulnerability.middle["19"]}},
			{ animation = 0x153D58, duration = 4, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["17"],
			character_specific.dictator.boxes.vulnerability.middle["19"]}},
		},
	},
-----------up forward-----------
	jump_forward = {
},
			coord = {{name = "", x = 4, y = -3}			{ animation = 0x153D70, duration = 10, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["17"],
			character_specific.dictator.boxes.vulnerability.middle["26"],
			character_specific.dictator.boxes.attack["84"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x153D88, duration = 6, hitboxes = {
			character_specific.dictator.boxes.push["3"],
			character_specific.dictator.boxes.vulnerability.top["17"],
			character_specific.dictator.boxes.vulnerability.middle["19"]
----------- Recover error -----------
}},
	},
}