-- Copy in the correct fields what's written in boxer_[...]_boxes.lua
character_specific.boxer.boxes = {
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
character_specific.boxer.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x16342E, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x163446, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16345E, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x163476, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16348E, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1634A6, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x1634C2, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1634DA, duration = 5, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1634F2, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16350A, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x163522, duration = 8, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16353A, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x163552, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x16385A, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x163872, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["3"],
			character_specific.boxer.boxes.vulnerability.top["3"],
			character_specific.boxer.boxes.vulnerability.middle["3"],
			character_specific.boxer.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x16388A, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["3"],
			character_specific.boxer.boxes.vulnerability.top["3"],
			character_specific.boxer.boxes.vulnerability.middle["3"],
			character_specific.boxer.boxes.vulnerability.bottom["3"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x1638A6, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["3"],
			character_specific.boxer.boxes.vulnerability.top["3"],
			character_specific.boxer.boxes.vulnerability.middle["3"],
			character_specific.boxer.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x1638BE, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["3"],
			character_specific.boxer.boxes.vulnerability.top["3"],
			character_specific.boxer.boxes.vulnerability.middle["3"],
			character_specific.boxer.boxes.vulnerability.bottom["3"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x1638D6, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
	},
-----------LP MP HP-----------
	["St LPMPHP"] = {
		startup = {
			{ animation = 0x160BBE, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x160BD6, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"],
			character_specific.boxer.boxes.attack["1"]}},
		},
		recover = {
			{ animation = 0x160BEE, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x160C06, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------LP HP-----------
	["Special St LPHP"] = {
		startup = {
			{ animation = 0x1621AA, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1621C2, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1621DA, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1621F2, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16220A, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 7, y = 0}}},
			{ animation = 0x162222, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 14, y = 0},{name = "", x = 21, y = 0,}}},
			{ animation = 0x16223A, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 28, y = 0},{name = "", x = 34, y = 0,}}},
			{ animation = 0x162252, duration = 2, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 40, y = 0},{name = "", x = 45, y = 0,}}},
		},
		active = {
			{ animation = 0x16226A, duration = 12, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["25"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"],
			character_specific.boxer.boxes.attack["16"]},
			coord = {{name = "", x = 50, y = 0},{name = "", x = 55, y = 0,},{name = "", x = 59, y = 0,},{name = "", x = 63, y = 0,},{name = "", x = 66, y = 0,},{name = "", x = 69, y = 0,},{name = "", x = 72, y = 0,},{name = "", x = 75, y = 0,},{name = "", x = 77, y = 0,},{name = "", x = 78, y = 0,},{name = "", x = 79, y = 0,},{name = "", x = 80, y = 0,}}},
		},
		recover = {
			{ animation = 0x162282, duration = 6, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 81, y = 0},{name = "", x = 81, y = 0,},{name = "", x = 81, y = 0,},{name = "", x = 80, y = 0,},{name = "", x = 79, y = 0,},{name = "", x = 78, y = 0,}}},
			{ animation = 0x16229A, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 76, y = 0},{name = "", x = 74, y = 0,},{name = "", x = 71, y = 0,}}},
			{ animation = 0x1622B2, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 68, y = 0}}},
		},
	},
-----------LK MK HK-----------
	["St LKMKHK"] = {
		startup = {
			{ animation = 0x160E42, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.middle["9"],
			character_specific.boxer.boxes.vulnerability.bottom["5"]}},
		},
		active = {
			{ animation = 0x160E5A, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["13"],
			character_specific.boxer.boxes.vulnerability.middle["9"],
			character_specific.boxer.boxes.vulnerability.bottom["5"],
			character_specific.boxer.boxes.attack["6"]}},
		},
		recover = {
			{ animation = 0x160E72, duration = 4, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.middle["9"],
			character_specific.boxer.boxes.vulnerability.bottom["5"]}},
			{ animation = 0x160E8A, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.middle["9"],
			character_specific.boxer.boxes.vulnerability.bottom["5"]}},
		},
	},
-----------forward LP-----------
	["Special f_LP"] = {
		startup = {
			{ animation = 0x162D16, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"]},
			coord = {{name = "", x = 0, y = 0}}},
			{ animation = 0x162D32, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"]}},
			{ animation = 0x162D4A, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"]},
			coord = {{name = "", x = 8, y = 0}}},
			{ animation = 0x162D62, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"]},
			coord = {{name = "", x = 16, y = 0},{name = "", x = 24, y = 0,},{name = "", x = 32, y = 0,}}},
		},
		active = {
			{ animation = 0x162D7A, duration = 8, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.attack["60"]},
			coord = {{name = "", x = 40, y = 0},{name = "", x = 48, y = 0,},{name = "", x = 56, y = 0,},{name = "", x = 64, y = 0,},{name = "", x = 72, y = 0,},{name = "", x = 78, y = 0,},{name = "", x = 85, y = 0,},{name = "", x = 90, y = 0,}}},
		},
		recover = {
			{ animation = 0x162D92, duration = 6, hitboxes = {
			character_specific.boxer.boxes.push["1"]},
			coord = {{name = "", x = 95, y = 0},{name = "", x = 99, y = 0,},{name = "", x = 103, y = 0,},{name = "", x = 106, y = 0,},{name = "", x = 108, y = 0,},{name = "", x = 110, y = 0,}}},
			{ animation = 0x162DAA, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"]},
			coord = {{name = "", x = 111, y = 0},{name = "", x = 112, y = 0,}}},
			{ animation = 0x162E72, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 111, y = 0}}},
			{ animation = 0x162E8A, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 119, y = 0}}},
			{ animation = 0x162EA2, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 127, y = 0},{name = "", x = 135, y = 0,},{name = "", x = 143, y = 0,}}},
			{ animation = 0x162EBA, duration = 8, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["24"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"],
			character_specific.boxer.boxes.attack["60"]},
			coord = {{name = "", x = 151, y = 0},{name = "", x = 159, y = 0,},{name = "", x = 167, y = 0,},{name = "", x = 175, y = 0,},{name = "", x = 183, y = 0,},{name = "", x = 190, y = 0,},{name = "", x = 196, y = 0,},{name = "", x = 201, y = 0,}}},
			{ animation = 0x162ED2, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["24"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"],
			character_specific.boxer.boxes.attack["60"]},
			coord = {{name = "", x = 206, y = 0},{name = "", x = 210, y = 0,},{name = "", x = 214, y = 0,},{name = "", x = 217, y = 0,},{name = "", x = 219, y = 0,},{name = "", x = 221, y = 0,},{name = "", x = 222, y = 0,},{name = "", x = 223, y = 0,}}},
			{ animation = 0x162EEE, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 223, y = 0}}},
			{ animation = 0x162F06, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 231, y = 0}}},
			{ animation = 0x162F1E, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 239, y = 0},{name = "", x = 247, y = 0,},{name = "", x = 255, y = 0,}}},
			{ animation = 0x162F36, duration = 8, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["24"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"],
			character_specific.boxer.boxes.attack["60"]},
			coord = {{name = "", x = 263, y = 0},{name = "", x = 263, y = 0,},{name = "", x = 263, y = 0,},{name = "", x = 263, y = 0,},{name = "", x = 263, y = 0,},{name = "", x = 263, y = 0,},{name = "", x = 263, y = 0,},{name = "", x = 271, y = 0,},{name = "", x = 279, y = 0,},{name = "", x = 287, y = 0,},{name = "", x = 294, y = 0,},{name = "", x = 301, y = 0,},{name = "", x = 307, y = 0,},{name = "", x = 312, y = 0,}}},
			{ animation = 0x162F4E, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["24"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"],
			character_specific.boxer.boxes.attack["60"]},
			coord = {{name = "", x = 317, y = 0},{name = "", x = 321, y = 0,},{name = "", x = 325, y = 0,},{name = "", x = 328, y = 0,},{name = "", x = 330, y = 0,},{name = "", x = 332, y = 0,},{name = "", x = 333, y = 0,},{name = "", x = 334, y = 0,}}},
			{ animation = 0x162F6A, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 334, y = 0}}},
			{ animation = 0x162F82, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 342, y = 0}}},
			{ animation = 0x162F9A, duration = 3, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 349, y = 0},{name = "", x = 356, y = 0,},{name = "", x = 362, y = 0,}}},
			{ animation = 0x162FB2, duration = 8, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["24"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"],
			character_specific.boxer.boxes.attack["60"]},
			coord = {{name = "", x = 367, y = 0},{name = "", x = 372, y = 0,},{name = "", x = 377, y = 0,},{name = "", x = 380, y = 0,},{name = "", x = 383, y = 0,},{name = "", x = 386, y = 0,},{name = "", x = 387, y = 0,},{name = "", x = 388, y = 0,}}},
			{ animation = 0x162FCA, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["24"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["8"],
			character_specific.boxer.boxes.attack["60"]},
			coord = {{name = "", x = 389, y = 0}}},
			{ animation = 0x163112, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 389, y = 0}}},
			{ animation = 0x16312A, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 389, y = 0}}},
			{ animation = 0x163142, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 389, y = 0}}},
			{ animation = 0x16315A, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 387, y = 0},{name = "", x = 387, y = 0,},{name = "", x = 387, y = 0,}}},
			{ animation = 0x163172, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 394, y = 0}}},
			{ animation = 0x16318A, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 399, y = 0}}},
			{ animation = 0x1631A2, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 403, y = 0}}},
			{ animation = 0x1631BA, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 407, y = 0}}},
			{ animation = 0x1631D2, duration = 12, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["25"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"],
			character_specific.boxer.boxes.attack["62"]},
			coord = {{name = "", x = 411, y = 0},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 411, y = 0,},{name = "", x = 415, y = 0,},{name = "", x = 419, y = 0,},{name = "", x = 422, y = 0,},{name = "", x = 427, y = 0,},{name = "", x = 431, y = 0,},{name = "", x = 435, y = 0,},{name = "", x = 439, y = 0,},{name = "", x = 442, y = 0,},{name = "", x = 444, y = 0,},{name = "", x = 447, y = 0,},{name = "", x = 449, y = 0,}}},
			{ animation = 0x1631EA, duration = 7, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 450, y = 0},{name = "", x = 452, y = 0,},{name = "", x = 453, y = 0,},{name = "", x = 453, y = 0,},{name = "", x = 453, y = 0,},{name = "", x = 453, y = 0,},{name = "", x = 452, y = 0,}}},
			{ animation = 0x163202, duration = 5, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 451, y = 0},{name = "", x = 450, y = 0,},{name = "", x = 448, y = 0,},{name = "", x = 446, y = 0,},{name = "", x = 444, y = 0,}}},
			{ animation = 0x16321A, duration = 1, hitboxes = {
			character_specific.boxer.boxes.push["1"],
			character_specific.boxer.boxes.vulnerability.top["1"],
			character_specific.boxer.boxes.vulnerability.middle["1"],
			character_specific.boxer.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 441, y = 0}}},
		},
	},
}