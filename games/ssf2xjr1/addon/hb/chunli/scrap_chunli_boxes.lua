-- Copy in the correct fields what's written in chunli_[...]_boxes.lua
character_specific.chunli.boxes = {
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
	projectile = {
		attack = {

		},
		vulnerability = {

		},
	},
}
character_specific.chunli.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x13C4A0, duration = 8, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["1"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13C458, duration = 12, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["1"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13C470, duration = 9, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["1"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x13C4BC, duration = 2, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["2"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13C4D4, duration = 3, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["2"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13C4EC, duration = 3, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["2"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13C504, duration = 3, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["2"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13C51C, duration = 3, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["2"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
	},
-----------up forward-----------
	jump_forward = {
			{ animation = 0x13C8DC, duration = 3, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["1"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x13C8F4, duration = 10, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["4"],
			character_specific.chunli.boxes.vulnerability.middle["3"],
			character_specific.chunli.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 4, y = 10,},{name = "", x = 8, y = 19,},{name = "", x = 12, y = 27,},{name = "", x = 16, y = 36,},{name = "", x = 20, y = 43,},{name = "", x = 24, y = 51,},{name = "", x = 28, y = 58,},{name = "", x = 32, y = 64,},{name = "", x = 36, y = 70,}}},
			{ animation = 0x13C90C, duration = 6, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["5"],
			character_specific.chunli.boxes.vulnerability.middle["4"],
			character_specific.chunli.boxes.vulnerability.bottom["4"]},
			coord = {{name = "", x = 40, y = 76},{name = "", x = 44, y = 81,},{name = "", x = 48, y = 86,},{name = "", x = 52, y = 90,},{name = "", x = 56, y = 94,},{name = "", x = 59, y = 97,}}},
			{ animation = 0x13C924, duration = 5, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["5"],
			character_specific.chunli.boxes.vulnerability.middle["4"],
			character_specific.chunli.boxes.vulnerability.bottom["4"]},
			coord = {{name = "", x = 63, y = 100},{name = "", x = 67, y = 103,},{name = "", x = 71, y = 105,},{name = "", x = 75, y = 107,},{name = "", x = 78, y = 108,}}},
			{ animation = 0x13C93C, duration = 4, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["6"],
			character_specific.chunli.boxes.vulnerability.middle["5"],
			character_specific.chunli.boxes.vulnerability.bottom["5"]},
			coord = {{name = "", x = 82, y = 109},{name = "", x = 86, y = 109,},{name = "", x = 89, y = 109,},{name = "", x = 93, y = 109,}}},
			{ animation = 0x13C954, duration = 3, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["6"],
			character_specific.chunli.boxes.vulnerability.middle["5"],
			character_specific.chunli.boxes.vulnerability.bottom["5"]},
			coord = {{name = "", x = 97, y = 108},{name = "", x = 100, y = 106,},{name = "", x = 104, y = 105,}}},
			{ animation = 0x13C96C, duration = 4, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["7"],
			character_specific.chunli.boxes.vulnerability.middle["6"],
			character_specific.chunli.boxes.vulnerability.bottom["6"]},
			coord = {{name = "", x = 107, y = 102},{name = "", x = 111, y = 100,},{name = "", x = 115, y = 97,},{name = "", x = 118, y = 93,}}},
			{ animation = 0x13C984, duration = 5, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["7"],
			character_specific.chunli.boxes.vulnerability.middle["6"],
			character_specific.chunli.boxes.vulnerability.bottom["6"]},
			coord = {{name = "", x = 122, y = 89},{name = "", x = 125, y = 85,},{name = "", x = 129, y = 80,},{name = "", x = 132, y = 74,},{name = "", x = 135, y = 69,}}},
			{ animation = 0x13C99C, duration = 6, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["8"],
			character_specific.chunli.boxes.vulnerability.middle["7"],
			character_specific.chunli.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 139, y = 62},{name = "", x = 142, y = 56,},{name = "", x = 146, y = 49,},{name = "", x = 149, y = 41,},{name = "", x = 152, y = 33,},{name = "", x = 156, y = 25,}}},
			{ animation = 0x13C9B4, duration = 10, hitboxes = {
			character_specific.chunli.boxes.push["3"],
			character_specific.chunli.boxes.vulnerability.top["4"],
			character_specific.chunli.boxes.vulnerability.middle["3"],
			character_specific.chunli.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 159, y = 16},{name = "", x = 162, y = 7,}}},
			{ animation = 0x13C704, duration = 1, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["1"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 165, y = 0},{name = "", x = 165, y = 0,},{name = "", x = 165, y = 0,},{name = "", x = 165, y = 0,},{name = "", x = 165, y = 0,},{name = "", x = 165, y = 0,},{name = "", x = 165, y = 0,}}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x13C488, duration = 12, hitboxes = {
			character_specific.chunli.boxes.push["1"],
			character_specific.chunli.boxes.vulnerability.top["1"],
			character_specific.chunli.boxes.vulnerability.middle["1"],
			character_specific.chunli.boxes.vulnerability.bottom["1"]}},
	},
}