-- Copy in the correct fields what's written in ken_[...]_boxes.lua
character_specific.ken.boxes = {
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
character_specific.ken.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x133A0C, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133A24, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133A3C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133A54, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133A6C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1339F4, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x133A88, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133AA0, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133AB8, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133AD0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133AE8, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133B00, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x133B1C, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133B34, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133B4C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133B64, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133B7C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133B94, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x133E60, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133E78, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["3"],
			character_specific.ken.boxes.vulnerability.top["15"],
			character_specific.ken.boxes.vulnerability.middle["9"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x133E90, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x133EAC, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x133EC4, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["3"],
			character_specific.ken.boxes.vulnerability.top["15"],
			character_specific.ken.boxes.vulnerability.middle["9"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x133EDC, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
	},
-----------up-----------
	jump_neutral = {
			{ animation = 0x133C74, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x133C8C, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 7,},{name = "", x = 0, y = 13,},{name = "", x = 0, y = 19,},{name = "", x = 0, y = 25,},{name = "", x = 0, y = 31,},{name = "", x = 0, y = 36,},{name = "", x = 0, y = 41,}}},
			{ animation = 0x133CA4, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 46},{name = "", x = 0, y = 50,},{name = "", x = 0, y = 54,},{name = "", x = 0, y = 58,},{name = "", x = 0, y = 61,},{name = "", x = 0, y = 64,},{name = "", x = 0, y = 67,},{name = "", x = 0, y = 69,}}},
			{ animation = 0x133CBC, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 71},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 75,},{name = "", x = 0, y = 76,},{name = "", x = 0, y = 77,},{name = "", x = 0, y = 77,},{name = "", x = 0, y = 78,},{name = "", x = 0, y = 77,}}},
			{ animation = 0x133CD4, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 77},{name = "", x = 0, y = 76,},{name = "", x = 0, y = 75,},{name = "", x = 0, y = 74,},{name = "", x = 0, y = 72,},{name = "", x = 0, y = 71,},{name = "", x = 0, y = 68,},{name = "", x = 0, y = 66,}}},
			{ animation = 0x133CEC, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 63},{name = "", x = 0, y = 60,},{name = "", x = 0, y = 56,},{name = "", x = 0, y = 52,},{name = "", x = 0, y = 48,},{name = "", x = 0, y = 44,},{name = "", x = 0, y = 39,},{name = "", x = 0, y = 34,}}},
			{ animation = 0x133D04, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["10"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 29},{name = "", x = 0, y = 23,},{name = "", x = 0, y = 17,},{name = "", x = 0, y = 11,},{name = "", x = 0, y = 4,}}},
	},
-----------up forward-----------
	jump_forward = {
			{ animation = 0x133BB0, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x133BC8, duration = 13, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["4"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 4, y = 7,},{name = "", x = 7, y = 13,},{name = "", x = 11, y = 19,},{name = "", x = 14, y = 25,},{name = "", x = 17, y = 30,},{name = "", x = 21, y = 35,},{name = "", x = 24, y = 40,},{name = "", x = 27, y = 45,},{name = "", x = 31, y = 49,},{name = "", x = 34, y = 53,},{name = "", x = 37, y = 56,},{name = "", x = 41, y = 60,}}},
			{ animation = 0x133BE0, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["5"],
			character_specific.ken.boxes.vulnerability.middle["3"]},
			coord = {{name = "", x = 44, y = 63},{name = "", x = 47, y = 65,},{name = "", x = 50, y = 68,},{name = "", x = 54, y = 70,},{name = "", x = 57, y = 71,}}},
			{ animation = 0x133BF8, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["6"],
			character_specific.ken.boxes.vulnerability.middle["4"],
			character_specific.ken.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 60, y = 73},{name = "", x = 63, y = 74,},{name = "", x = 66, y = 74,}}},
			{ animation = 0x133C10, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["7"],
			character_specific.ken.boxes.vulnerability.middle["5"],
			character_specific.ken.boxes.vulnerability.bottom["4"]},
			coord = {{name = "", x = 69, y = 75},{name = "", x = 72, y = 75,},{name = "", x = 75, y = 75,}}},
			{ animation = 0x133C28, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["8"],
			character_specific.ken.boxes.vulnerability.middle["6"],
			character_specific.ken.boxes.vulnerability.bottom["5"]},
			coord = {{name = "", x = 78, y = 74},{name = "", x = 81, y = 73,},{name = "", x = 84, y = 72,}}},
			{ animation = 0x133C40, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["9"],
			character_specific.ken.boxes.vulnerability.middle["7"]},
			coord = {{name = "", x = 87, y = 71},{name = "", x = 90, y = 69,},{name = "", x = 93, y = 67,},{name = "", x = 96, y = 65,},{name = "", x = 99, y = 62,}}},
			{ animation = 0x133C58, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["10"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 102, y = 59},{name = "", x = 105, y = 56,},{name = "", x = 108, y = 52,},{name = "", x = 110, y = 48,},{name = "", x = 113, y = 44,},{name = "", x = 116, y = 39,},{name = "", x = 119, y = 34,},{name = "", x = 121, y = 29,},{name = "", x = 124, y = 24,},{name = "", x = 127, y = 18,},{name = "", x = 130, y = 12,},{name = "", x = 132, y = 5,}}},
	},
-----------up back-----------
	jump_backward = {
			{ animation = 0x133D38, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x133D50, duration = 15, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["9"],
			character_specific.ken.boxes.vulnerability.middle["7"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = -4, y = 7,},{name = "", x = -8, y = 13,},{name = "", x = -12, y = 20,},{name = "", x = -16, y = 26,},{name = "", x = -20, y = 31,},{name = "", x = -24, y = 37,},{name = "", x = -28, y = 42,},{name = "", x = -32, y = 46,},{name = "", x = -35, y = 51,},{name = "", x = -39, y = 55,},{name = "", x = -43, y = 59,},{name = "", x = -47, y = 62,},{name = "", x = -51, y = 65,},{name = "", x = -54, y = 68,}}},
			{ animation = 0x133D68, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["8"],
			character_specific.ken.boxes.vulnerability.middle["6"],
			character_specific.ken.boxes.vulnerability.bottom["5"]},
			coord = {{name = "", x = -58, y = 71},{name = "", x = -62, y = 73,},{name = "", x = -65, y = 75,}}},
			{ animation = 0x133D80, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["7"],
			character_specific.ken.boxes.vulnerability.middle["5"],
			character_specific.ken.boxes.vulnerability.bottom["4"]},
			coord = {{name = "", x = -69, y = 77},{name = "", x = -73, y = 78,},{name = "", x = -76, y = 79,}}},
			{ animation = 0x133D98, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["6"],
			character_specific.ken.boxes.vulnerability.middle["4"]},
			coord = {{name = "", x = -80, y = 80},{name = "", x = -83, y = 80,},{name = "", x = -87, y = 80,}}},
			{ animation = 0x133DB0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["5"],
			character_specific.ken.boxes.vulnerability.middle["3"]},
			coord = {{name = "", x = -90, y = 80},{name = "", x = -94, y = 79,},{name = "", x = -97, y = 78,}}},
			{ animation = 0x133DC8, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["4"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = -101, y = 77},{name = "", x = -104, y = 76,},{name = "", x = -108, y = 74,},{name = "", x = -111, y = 72,},{name = "", x = -115, y = 69,},{name = "", x = -118, y = 67,},{name = "", x = -121, y = 64,},{name = "", x = -125, y = 60,},{name = "", x = -128, y = 57,},{name = "", x = -131, y = 53,},{name = "", x = -135, y = 48,},{name = "", x = -138, y = 44,},{name = "", x = -141, y = 39,},{name = "", x = -144, y = 33,},{name = "", x = -147, y = 28,},{name = "", x = -151, y = 22,},{name = "", x = -154, y = 16,},{name = "", x = -157, y = 9,},{name = "", x = -160, y = 2,}}},
	},
-----------LK-----------
	["St LK"] = {
		startup = {
			{ animation = 0x131A2C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 0, y = 7},{name = "", x = 0, y = 13,},{name = "", x = 0, y = 19,}}},
		},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x131A44, duration = 40, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["27"]},
			coord = {{name = "", x = 0, y = 25}}},
			{ animation = 0x131A5C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]
----------- Recover error -----------
}},
	},
}