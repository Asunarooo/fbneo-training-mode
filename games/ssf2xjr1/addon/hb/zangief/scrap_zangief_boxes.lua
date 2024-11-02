-- Copy in the correct fields what's written in zangief_[...]_boxes.lua
character_specific.zangief.boxes = {
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
character_specific.zangief.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x144F3C, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x144F54, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x144F6C, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x144F24, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x144F88, duration = 7, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x144FA0, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x144FB8, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x1450B0, duration = 2, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1450C8, duration = 2, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x1450E0, duration = 2, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x1450FC, duration = 2, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x145114, duration = 2, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x14512C, duration = 2, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x14501C, duration = 7, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["2"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x145034, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["2"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
	},
-----------up-----------
	jump_neutral = {
			{ animation = 0x145254, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x14526C, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x145284, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x14529C, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x1452B4, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x1452CC, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 7,},{name = "", x = 0, y = 14,},{name = "", x = 0, y = 20,},{name = "", x = 0, y = 26,},{name = "", x = 0, y = 31,},{name = "", x = 0, y = 36,},{name = "", x = 0, y = 41,}}},
			{ animation = 0x1452E4, duration = 6, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 46},{name = "", x = 0, y = 50,},{name = "", x = 0, y = 54,},{name = "", x = 0, y = 57,},{name = "", x = 0, y = 60,},{name = "", x = 0, y = 63,}}},
			{ animation = 0x1452FC, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 65},{name = "", x = 0, y = 68,},{name = "", x = 0, y = 69,},{name = "", x = 0, y = 71,},{name = "", x = 0, y = 72,},{name = "", x = 0, y = 72,},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 73,}}},
			{ animation = 0x145314, duration = 6, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 73},{name = "", x = 0, y = 72,},{name = "", x = 0, y = 71,},{name = "", x = 0, y = 70,},{name = "", x = 0, y = 68,},{name = "", x = 0, y = 66,}}},
			{ animation = 0x14532C, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 63},{name = "", x = 0, y = 61,},{name = "", x = 0, y = 58,},{name = "", x = 0, y = 54,},{name = "", x = 0, y = 51,},{name = "", x = 0, y = 46,},{name = "", x = 0, y = 42,},{name = "", x = 0, y = 37,},{name = "", x = 0, y = 32,},{name = "", x = 0, y = 27,},{name = "", x = 0, y = 21,},{name = "", x = 0, y = 15,},{name = "", x = 0, y = 8,},{name = "", x = 0, y = 1,}}},
			{ animation = 0x1451C0, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x145160, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["1"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x145178, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x145190, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x1451A8, duration = 1, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x1451D8, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 3, y = 7,},{name = "", x = 6, y = 13,},{name = "", x = 8, y = 19,},{name = "", x = 11, y = 25,},{name = "", x = 13, y = 30,},{name = "", x = 16, y = 35,},{name = "", x = 18, y = 40,}}},
			{ animation = 0x1451F0, duration = 6, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 21, y = 44},{name = "", x = 23, y = 48,},{name = "", x = 26, y = 51,},{name = "", x = 28, y = 54,},{name = "", x = 30, y = 57,},{name = "", x = 33, y = 60,}}},
			{ animation = 0x145208, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 35, y = 62},{name = "", x = 37, y = 64,},{name = "", x = 40, y = 65,},{name = "", x = 42, y = 67,},{name = "", x = 44, y = 67,},{name = "", x = 47, y = 68,},{name = "", x = 49, y = 68,},{name = "", x = 51, y = 68,}}},
			{ animation = 0x145220, duration = 6, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 53, y = 67},{name = "", x = 55, y = 66,},{name = "", x = 57, y = 65,},{name = "", x = 60, y = 63,},{name = "", x = 62, y = 61,},{name = "", x = 64, y = 59,}}},
			{ animation = 0x145238, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["4"],
			character_specific.zangief.boxes.vulnerability.middle["3"],
			character_specific.zangief.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 66, y = 57},{name = "", x = 68, y = 54,},{name = "", x = 70, y = 50,},{name = "", x = 72, y = 47,},{name = "", x = 74, y = 43,},{name = "", x = 76, y = 38,},{name = "", x = 78, y = 34,},{name = "", x = 80, y = 29,},{name = "", x = 82, y = 23,},{name = "", x = 84, y = 17,},{name = "", x = 86, y = 11,},{name = "", x = 87, y = 5,}}},
	},
-----------neutral-----------
	neutral = {
	},
-----------back-----------
	backward = {
			{ animation = 0x14504C, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["2"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x145064, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["2"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x14507C, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["2"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x145094, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["1"],
			character_specific.zangief.boxes.vulnerability.top["2"],
			character_specific.zangief.boxes.vulnerability.middle["1"],
			character_specific.zangief.boxes.vulnerability.bottom["1"]}},
	},
-----------down MK-----------
	["Cr MK"] = {
		startup = {
			{ animation = 0x142FE8, duration = 3, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]}},
		},
	},
-----------down-----------
	crouched = {
			{ animation = 0x143000, duration = 6, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["15"],
			character_specific.zangief.boxes.attack["16"]}},
			{ animation = 0x143018, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x143030, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["2"],
			character_specific.zangief.boxes.vulnerability.top["3"],
			character_specific.zangief.boxes.vulnerability.middle["2"],
			character_specific.zangief.boxes.vulnerability.bottom["2"]
----------- Recover error -----------
}},
	},
-----------down MK-----------
	["Cr MK"] = {
		startup = {
			{ animation = 0x143624, duration = 7, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["19"],
			character_specific.zangief.boxes.vulnerability.middle["14"],
			character_specific.zangief.boxes.vulnerability.bottom["11"]},
			coord = {{name = "", x = 3, y = 6},{name = "", x = 5, y = 11,},{name = "", x = 8, y = 16,}}},
		},
	},
-----------down-----------
	crouched = {
,{name = "", x = 10, y = 21,}			{ animation = 0x14363C, duration = 18, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["19"],
			character_specific.zangief.boxes.vulnerability.middle["14"],
			character_specific.zangief.boxes.vulnerability.bottom["17"],
			character_specific.zangief.boxes.attack["56"]}},
			{ animation = 0x143654, duration = 6, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["19"],
			character_specific.zangief.boxes.vulnerability.middle["14"],
			character_specific.zangief.boxes.vulnerability.bottom["11"]}},
			{ animation = 0x14366C, duration = 8, hitboxes = {
			character_specific.zangief.boxes.push["3"],
			character_specific.zangief.boxes.vulnerability.top["19"],
			character_specific.zangief.boxes.vulnerability.middle["14"],
			character_specific.zangief.boxes.vulnerability.bottom["16"]
----------- Recover error -----------
}},
	},
}