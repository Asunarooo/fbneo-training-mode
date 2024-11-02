-- Copy in the correct fields what's written in blanka_[...]_boxes.lua
character_specific.blanka.boxes = {
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
character_specific.blanka.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x122A56, duration = 2, hitboxes = {
			character_specific.blanka.boxes.push["1"],
			character_specific.blanka.boxes.vulnerability.top["1"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x122A6E, duration = 8, hitboxes = {
			character_specific.blanka.boxes.push["1"],
			character_specific.blanka.boxes.vulnerability.top["1"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x122A86, duration = 8, hitboxes = {
			character_specific.blanka.boxes.push["1"],
			character_specific.blanka.boxes.vulnerability.top["1"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x122A3E, duration = 8, hitboxes = {
			character_specific.blanka.boxes.push["1"],
			character_specific.blanka.boxes.vulnerability.top["1"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x12349E, duration = 4, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["2"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1234B6, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["2"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1234CE, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["2"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1234E6, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["2"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1234FE, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["2"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x123516, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["2"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12352E, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["2"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x123546, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["2"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x123562, duration = 4, hitboxes = {
			character_specific.blanka.boxes.push["3"],
			character_specific.blanka.boxes.vulnerability.top["3"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12357A, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["3"],
			character_specific.blanka.boxes.vulnerability.top["3"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x123592, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["3"],
			character_specific.blanka.boxes.vulnerability.top["3"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1235AA, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["3"],
			character_specific.blanka.boxes.vulnerability.top["3"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1235C2, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["3"],
			character_specific.blanka.boxes.vulnerability.top["3"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1235DA, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["3"],
			character_specific.blanka.boxes.vulnerability.top["3"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1235F2, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["3"],
			character_specific.blanka.boxes.vulnerability.top["3"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12360A, duration = 5, hitboxes = {
			character_specific.blanka.boxes.push["3"],
			character_specific.blanka.boxes.vulnerability.top["3"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x122AA2, duration = 2, hitboxes = {
			character_specific.blanka.boxes.push["1"],
			character_specific.blanka.boxes.vulnerability.top["1"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x122ABA, duration = 2, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["4"],
			character_specific.blanka.boxes.vulnerability.middle["2"],
			character_specific.blanka.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x122AD2, duration = 2, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["4"],
			character_specific.blanka.boxes.vulnerability.middle["2"],
			character_specific.blanka.boxes.vulnerability.bottom["2"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x122AEE, duration = 1, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["4"],
			character_specific.blanka.boxes.vulnerability.middle["2"],
			character_specific.blanka.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x122B06, duration = 2, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["4"],
			character_specific.blanka.boxes.vulnerability.middle["2"],
			character_specific.blanka.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x122B1E, duration = 2, hitboxes = {
			character_specific.blanka.boxes.push["1"],
			character_specific.blanka.boxes.vulnerability.top["1"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]}},
	},
-----------forward MP-----------
	["Special f_MP"] = {
		active = {
			{ animation = 0x120A46, duration = 1, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 8, y = 0}}},
			{ animation = 0x120A5E, duration = 2, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 16, y = 0},{name = "", x = 24, y = 0,}}},
			{ animation = 0x120A76, duration = 2, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 32, y = 0},{name = "", x = 40, y = 0,}}},
			{ animation = 0x120A8E, duration = 2, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 48, y = 0},{name = "", x = 56, y = 0,}}},
			{ animation = 0x120AA6, duration = 2, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 64, y = 0},{name = "", x = 72, y = 0,}}},
			{ animation = 0x120ABE, duration = 2, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 80, y = 0},{name = "", x = 88, y = 0,}}},
			{ animation = 0x120AD6, duration = 2, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 96, y = 0},{name = "", x = 104, y = 0,}}},
			{ animation = 0x120AEE, duration = 2, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 112, y = 0},{name = "", x = 120, y = 0,}}},
			{ animation = 0x120A2E, duration = 1, hitboxes = {
			character_specific.blanka.boxes.vulnerability.middle["17"],
			character_specific.blanka.boxes.attack["41"]},
			coord = {{name = "", x = 128, y = 0}}},
		},
		recover = {
			{ animation = 0x11F322, duration = 1, hitboxes = {
			character_specific.blanka.boxes.push["1"],
			character_specific.blanka.boxes.vulnerability.top["1"],
			character_specific.blanka.boxes.vulnerability.middle["1"],
			character_specific.blanka.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 200, y = 0}}},
			{ animation = 0x11F33A, duration = 2, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["4"],
			character_specific.blanka.boxes.vulnerability.middle["2"],
			character_specific.blanka.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 200, y = 0},{name = "", x = 200, y = 0,}}},
			{ animation = 0x11F352, duration = 1, hitboxes = {
			character_specific.blanka.boxes.push["2"],
			character_specific.blanka.boxes.vulnerability.top["4"],
			character_specific.blanka.boxes.vulnerability.middle["2"],
			character_specific.blanka.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 200, y = 0},{name = "", x = 200, y = 0,}}},
		},
	},
}