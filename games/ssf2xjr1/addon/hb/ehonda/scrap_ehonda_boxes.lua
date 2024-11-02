-- Copy in the correct fields what's written in ehonda_[...]_boxes.lua
character_specific.ehonda.boxes = {
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
character_specific.ehonda.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x119CCE, duration = 6, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x119CE6, duration = 8, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x119CFE, duration = 8, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x119D16, duration = 8, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x119DAE, duration = 2, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x119DC6, duration = 2, hitboxes = {
			character_specific.ehonda.boxes.push["2"],
			character_specific.ehonda.boxes.vulnerability.top["2"],
			character_specific.ehonda.boxes.vulnerability.middle["2"],
			character_specific.ehonda.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x119DDE, duration = 2, hitboxes = {
			character_specific.ehonda.boxes.push["2"],
			character_specific.ehonda.boxes.vulnerability.top["2"],
			character_specific.ehonda.boxes.vulnerability.middle["2"],
			character_specific.ehonda.boxes.vulnerability.bottom["2"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x119EF2, duration = 1, hitboxes = {
			character_specific.ehonda.boxes.push["2"],
			character_specific.ehonda.boxes.vulnerability.top["2"],
			character_specific.ehonda.boxes.vulnerability.middle["2"],
			character_specific.ehonda.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x119F0A, duration = 2, hitboxes = {
			character_specific.ehonda.boxes.push["2"],
			character_specific.ehonda.boxes.vulnerability.top["2"],
			character_specific.ehonda.boxes.vulnerability.middle["2"],
			character_specific.ehonda.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x119F22, duration = 2, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x11A8EE, duration = 3, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x11A906, duration = 4, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x11A91E, duration = 4, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x11A936, duration = 4, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x11A94E, duration = 4, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x11A966, duration = 4, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x11A97E, duration = 4, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
	},
-----------up back-----------
	jump_backward = {
			{ animation = 0x11A266, duration = 2, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x11A27E, duration = 2, hitboxes = {
			character_specific.ehonda.boxes.push["2"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x11A296, duration = 2, hitboxes = {
			character_specific.ehonda.boxes.push["2"],
			character_specific.ehonda.boxes.vulnerability.top["2"],
			character_specific.ehonda.boxes.vulnerability.middle["2"],
			character_specific.ehonda.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,}}},
			{ animation = 0x11A2AE, duration = 10, hitboxes = {
			character_specific.ehonda.boxes.push["3"],
			character_specific.ehonda.boxes.vulnerability.top["11"],
			character_specific.ehonda.boxes.vulnerability.middle["10"],
			character_specific.ehonda.boxes.vulnerability.bottom["10"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = -4, y = 6,},{name = "", x = -7, y = 12,},{name = "", x = -10, y = 18,},{name = "", x = -13, y = 23,},{name = "", x = -17, y = 28,},{name = "", x = -20, y = 33,},{name = "", x = -23, y = 38,},{name = "", x = -26, y = 42,},{name = "", x = -30, y = 46,}}},
			{ animation = 0x11A2C6, duration = 5, hitboxes = {
			character_specific.ehonda.boxes.push["3"],
			character_specific.ehonda.boxes.vulnerability.top["12"],
			character_specific.ehonda.boxes.vulnerability.middle["11"],
			character_specific.ehonda.boxes.vulnerability.bottom["11"]},
			coord = {{name = "", x = -33, y = 50},{name = "", x = -36, y = 53,},{name = "", x = -39, y = 56,},{name = "", x = -42, y = 59,},{name = "", x = -45, y = 61,}}},
			{ animation = 0x11A2DE, duration = 5, hitboxes = {
			character_specific.ehonda.boxes.push["3"],
			character_specific.ehonda.boxes.vulnerability.top["12"],
			character_specific.ehonda.boxes.vulnerability.middle["11"],
			character_specific.ehonda.boxes.vulnerability.bottom["11"]},
			coord = {{name = "", x = -48, y = 63},{name = "", x = -52, y = 65,},{name = "", x = -55, y = 67,},{name = "", x = -58, y = 68,},{name = "", x = -61, y = 69,}}},
			{ animation = 0x11A2F6, duration = 5, hitboxes = {
			character_specific.ehonda.boxes.push["3"],
			character_specific.ehonda.boxes.vulnerability.top["12"],
			character_specific.ehonda.boxes.vulnerability.middle["11"],
			character_specific.ehonda.boxes.vulnerability.bottom["11"]},
			coord = {{name = "", x = -64, y = 70},{name = "", x = -67, y = 70,},{name = "", x = -69, y = 70,},{name = "", x = -72, y = 70,},{name = "", x = -75, y = 70,}}},
			{ animation = 0x11A30E, duration = 5, hitboxes = {
			character_specific.ehonda.boxes.push["3"],
			character_specific.ehonda.boxes.vulnerability.top["12"],
			character_specific.ehonda.boxes.vulnerability.middle["11"],
			character_specific.ehonda.boxes.vulnerability.bottom["11"]},
			coord = {{name = "", x = -78, y = 69},{name = "", x = -81, y = 68,},{name = "", x = -84, y = 66,},{name = "", x = -87, y = 65,},{name = "", x = -90, y = 63,}}},
			{ animation = 0x11A326, duration = 5, hitboxes = {
			character_specific.ehonda.boxes.push["3"],
			character_specific.ehonda.boxes.vulnerability.top["12"],
			character_specific.ehonda.boxes.vulnerability.middle["11"],
			character_specific.ehonda.boxes.vulnerability.bottom["11"]},
			coord = {{name = "", x = -92, y = 60},{name = "", x = -95, y = 58,},{name = "", x = -98, y = 55,},{name = "", x = -101, y = 52,},{name = "", x = -103, y = 48,}}},
			{ animation = 0x11A33E, duration = 200, hitboxes = {
			character_specific.ehonda.boxes.push["3"],
			character_specific.ehonda.boxes.vulnerability.top["11"],
			character_specific.ehonda.boxes.vulnerability.middle["10"],
			character_specific.ehonda.boxes.vulnerability.bottom["10"]},
			coord = {{name = "", x = -106, y = 45},{name = "", x = -109, y = 40,},{name = "", x = -111, y = 36,},{name = "", x = -114, y = 31,},{name = "", x = -117, y = 27,},{name = "", x = -119, y = 21,},{name = "", x = -122, y = 16,},{name = "", x = -124, y = 10,},{name = "", x = -127, y = 4,}}},
			{ animation = 0x119E76, duration = 8, hitboxes = {
			character_specific.ehonda.boxes.push["1"],
			character_specific.ehonda.boxes.vulnerability.top["1"],
			character_specific.ehonda.boxes.vulnerability.middle["1"],
			character_specific.ehonda.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = -129, y = 0},{name = "", x = -129, y = 0,},{name = "", x = -129, y = 0,},{name = "", x = -129, y = 0,},{name = "", x = -129, y = 0,},{name = "", x = -129, y = 0,},{name = "", x = -129, y = 0,}}},
	},
}