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
			{ animation = 0x133A6C, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1339F4, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x133A0C, duration = 4, hitboxes = {
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
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 7,},{name = "", x = 0, y = 13,},{name = "", x = 0, y = 20,},{name = "", x = 0, y = 26,},{name = "", x = 0, y = 31,},{name = "", x = 0, y = 36,},{name = "", x = 0, y = 41,}}},
			{ animation = 0x133CA4, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 46},{name = "", x = 0, y = 50,},{name = "", x = 0, y = 54,},{name = "", x = 0, y = 58,},{name = "", x = 0, y = 61,},{name = "", x = 0, y = 64,},{name = "", x = 0, y = 67,},{name = "", x = 0, y = 70,}}},
			{ animation = 0x133CBC, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 72},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 75,},{name = "", x = 0, y = 76,},{name = "", x = 0, y = 77,},{name = "", x = 0, y = 78,},{name = "", x = 0, y = 78,},{name = "", x = 0, y = 78,}}},
			{ animation = 0x133CD4, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 77},{name = "", x = 0, y = 77,},{name = "", x = 0, y = 76,},{name = "", x = 0, y = 74,},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 71,},{name = "", x = 0, y = 69,},{name = "", x = 0, y = 66,}}},
			{ animation = 0x133CEC, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 0, y = 63},{name = "", x = 0, y = 60,},{name = "", x = 0, y = 56,},{name = "", x = 0, y = 53,},{name = "", x = 0, y = 49,},{name = "", x = 0, y = 44,},{name = "", x = 0, y = 39,},{name = "", x = 0, y = 34,}}},
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
			coord = {{name = "", x = 0, y = 0},{name = "", x = 3, y = 7,},{name = "", x = 7, y = 13,},{name = "", x = 10, y = 19,},{name = "", x = 14, y = 25,},{name = "", x = 17, y = 31,},{name = "", x = 20, y = 36,},{name = "", x = 24, y = 41,},{name = "", x = 27, y = 45,},{name = "", x = 30, y = 49,},{name = "", x = 34, y = 53,},{name = "", x = 37, y = 57,},{name = "", x = 40, y = 60,}}},
			{ animation = 0x133BE0, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["5"],
			character_specific.ken.boxes.vulnerability.middle["3"]},
			coord = {{name = "", x = 44, y = 63},{name = "", x = 47, y = 66,},{name = "", x = 50, y = 68,},{name = "", x = 53, y = 70,},{name = "", x = 56, y = 72,}}},
			{ animation = 0x133BF8, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["6"],
			character_specific.ken.boxes.vulnerability.middle["4"],
			character_specific.ken.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 59, y = 73},{name = "", x = 63, y = 74,},{name = "", x = 66, y = 75,}}},
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
			coord = {{name = "", x = 78, y = 75},{name = "", x = 81, y = 74,},{name = "", x = 84, y = 73,}}},
			{ animation = 0x133C40, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["9"],
			character_specific.ken.boxes.vulnerability.middle["7"]},
			coord = {{name = "", x = 87, y = 71},{name = "", x = 90, y = 69,},{name = "", x = 93, y = 67,},{name = "", x = 96, y = 65,},{name = "", x = 99, y = 62,}}},
			{ animation = 0x133C58, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["10"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = 101, y = 59},{name = "", x = 104, y = 56,},{name = "", x = 107, y = 52,},{name = "", x = 110, y = 48,},{name = "", x = 113, y = 44,},{name = "", x = 116, y = 40,},{name = "", x = 118, y = 35,},{name = "", x = 121, y = 30,},{name = "", x = 124, y = 24,},{name = "", x = 126, y = 18,},{name = "", x = 129, y = 12,},{name = "", x = 132, y = 6,}}},
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
			coord = {{name = "", x = 0, y = 0},{name = "", x = -4, y = 7,},{name = "", x = -7, y = 14,},{name = "", x = -11, y = 20,},{name = "", x = -15, y = 26,},{name = "", x = -19, y = 32,},{name = "", x = -23, y = 37,},{name = "", x = -27, y = 42,},{name = "", x = -31, y = 47,},{name = "", x = -35, y = 51,},{name = "", x = -38, y = 55,},{name = "", x = -42, y = 59,},{name = "", x = -46, y = 63,},{name = "", x = -50, y = 66,},{name = "", x = -53, y = 69,}}},
			{ animation = 0x133D68, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["8"],
			character_specific.ken.boxes.vulnerability.middle["6"],
			character_specific.ken.boxes.vulnerability.bottom["5"]},
			coord = {{name = "", x = -57, y = 71},{name = "", x = -61, y = 73,},{name = "", x = -65, y = 75,}}},
			{ animation = 0x133D80, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["7"],
			character_specific.ken.boxes.vulnerability.middle["5"],
			character_specific.ken.boxes.vulnerability.bottom["4"]},
			coord = {{name = "", x = -68, y = 77},{name = "", x = -72, y = 78,},{name = "", x = -75, y = 79,}}},
			{ animation = 0x133D98, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["6"],
			character_specific.ken.boxes.vulnerability.middle["4"]},
			coord = {{name = "", x = -79, y = 80},{name = "", x = -83, y = 80,},{name = "", x = -86, y = 80,}}},
			{ animation = 0x133DB0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["5"],
			character_specific.ken.boxes.vulnerability.middle["3"]},
			coord = {{name = "", x = -90, y = 80},{name = "", x = -93, y = 80,},{name = "", x = -97, y = 79,}}},
			{ animation = 0x133DC8, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["4"],
			character_specific.ken.boxes.vulnerability.middle["2"]},
			coord = {{name = "", x = -100, y = 78},{name = "", x = -104, y = 76,},{name = "", x = -107, y = 74,},{name = "", x = -110, y = 72,},{name = "", x = -114, y = 70,},{name = "", x = -117, y = 67,},{name = "", x = -121, y = 64,},{name = "", x = -124, y = 61,},{name = "", x = -127, y = 57,},{name = "", x = -131, y = 53,},{name = "", x = -134, y = 49,},{name = "", x = -137, y = 44,},{name = "", x = -140, y = 39,},{name = "", x = -144, y = 34,},{name = "", x = -147, y = 28,},{name = "", x = -150, y = 22,},{name = "", x = -153, y = 16,},{name = "", x = -156, y = 10,},{name = "", x = -159, y = 3,}}},
	},
-----------LP-----------
	["St LP"] = {
		startup = {
			{ animation = 0x130E50, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x130E68, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"],
			character_specific.ken.boxes.attack["2"]}},
		},
		recover = {
			{ animation = 0x130E80, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x130E98, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------MP-----------
	["St MP"] = {
		startup = {
			{ animation = 0x130F78, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x130F90, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x130FA8, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["3"]}},
		},
		recover = {
			{ animation = 0x130FC0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x130FD8, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x130FF0, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------HP-----------
	["St HP"] = {
		startup = {
			{ animation = 0x1310A0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1310B8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x1310D0, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["45"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["36"]}},
		},
		recover = {
			{ animation = 0x1310E8, duration = 10, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x131100, duration = 12, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x131118, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------LK-----------
	["St LK"] = {
		startup = {
			{ animation = 0x1311C8, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1311E0, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x1311F8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["46"],
			character_specific.ken.boxes.vulnerability.middle["30"],
			character_specific.ken.boxes.vulnerability.bottom["30"]}},
		},
		active = {
			{ animation = 0x131210, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["46"],
			character_specific.ken.boxes.vulnerability.middle["31"],
			character_specific.ken.boxes.vulnerability.bottom["30"],
			character_specific.ken.boxes.attack["15"]}},
		},
		recover = {
			{ animation = 0x131228, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["46"],
			character_specific.ken.boxes.vulnerability.middle["31"],
			character_specific.ken.boxes.vulnerability.bottom["30"]}},
			{ animation = 0x131240, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["46"],
			character_specific.ken.boxes.vulnerability.middle["30"],
			character_specific.ken.boxes.vulnerability.bottom["30"]}},
			{ animation = 0x131258, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x131270, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------MK-----------
	["St MK"] = {
		startup = {
			{ animation = 0x131384, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13139C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["19"],
			character_specific.ken.boxes.vulnerability.middle["12"],
			character_specific.ken.boxes.vulnerability.bottom["11"]}},
		},
		active = {
			{ animation = 0x1313B4, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["20"],
			character_specific.ken.boxes.vulnerability.middle["13"],
			character_specific.ken.boxes.vulnerability.bottom["29"],
			character_specific.ken.boxes.attack["16"]}},
		},
		recover = {
			{ animation = 0x1313CC, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["19"],
			character_specific.ken.boxes.vulnerability.middle["12"],
			character_specific.ken.boxes.vulnerability.bottom["11"]}},
			{ animation = 0x1313E4, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------HK-----------
	["St HK"] = {
		startup = {
			{ animation = 0x131494, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1314AC, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["32"],
			character_specific.ken.boxes.vulnerability.bottom["34"]}},
			{ animation = 0x1314C4, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["6"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["32"],
			character_specific.ken.boxes.vulnerability.bottom["34"]}},
			{ animation = 0x1314DC, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["49"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["38"]}},
		},
		active = {
			{ animation = 0x1314F4, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["34"],
			character_specific.ken.boxes.vulnerability.bottom["38"],
			character_specific.ken.boxes.attack["18"]}},
		},
		recover = {
			{ animation = 0x13150C, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["51"],
			character_specific.ken.boxes.vulnerability.middle["34"],
			character_specific.ken.boxes.vulnerability.bottom["38"]}},
			{ animation = 0x131524, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["51"],
			character_specific.ken.boxes.vulnerability.middle["35"],
			character_specific.ken.boxes.vulnerability.bottom["38"]}},
			{ animation = 0x13153C, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["51"],
			character_specific.ken.boxes.vulnerability.middle["35"],
			character_specific.ken.boxes.vulnerability.bottom["38"]}},
			{ animation = 0x131554, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["52"],
			character_specific.ken.boxes.vulnerability.middle["35"],
			character_specific.ken.boxes.vulnerability.bottom["38"]}},
			{ animation = 0x13156C, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["52"],
			character_specific.ken.boxes.vulnerability.middle["35"],
			character_specific.ken.boxes.vulnerability.bottom["38"]
----------- Recover error -----------
}},
		},
	},
-----------down LP-----------
	["Cr LP"] = {
		startup = {
			{ animation = 0x131588, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]},
			coord = {{name = "", x = 0, y = 0}}},
		},
		active = {
			{ animation = 0x1315A0, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"],
			character_specific.ken.boxes.attack["7"]}},
		},
		recover = {
			{ animation = 0x1315B8, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x1315D0, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]
----------- Recover error -----------
}},
		},
	},
-----------down MP-----------
	["Cr MP"] = {
		startup = {
			{ animation = 0x1315EC, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x131604, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
		},
		active = {
			{ animation = 0x13161C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"],
			character_specific.ken.boxes.attack["8"]}},
		},
		recover = {
			{ animation = 0x131634, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x13164C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x131664, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]
----------- Recover error -----------
}},
		},
	},
-----------down HP-----------
	["Cr HP"] = {
		startup = {
			{ animation = 0x131680, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["3"],
			character_specific.ken.boxes.vulnerability.top["18"],
			character_specific.ken.boxes.vulnerability.middle["11"],
			character_specific.ken.boxes.vulnerability.bottom["10"]}},
		},
		active = {
			{ animation = 0x131698, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["3"],
			character_specific.ken.boxes.vulnerability.top["40"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["9"]}},
			{ animation = 0x1316B0, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["3"],
			character_specific.ken.boxes.vulnerability.top["40"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["10"]}},
		},
		recover = {
			{ animation = 0x1316C8, duration = 10, hitboxes = {
			character_specific.ken.boxes.push["3"],
			character_specific.ken.boxes.vulnerability.top["40"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x1316E0, duration = 12, hitboxes = {
			character_specific.ken.boxes.push["3"],
			character_specific.ken.boxes.vulnerability.top["18"],
			character_specific.ken.boxes.vulnerability.middle["11"],
			character_specific.ken.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x1316F8, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["3"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]
----------- Recover error -----------
}},
		},
	},
-----------down LK-----------
	["Cr LK"] = {
		startup = {
			{ animation = 0x131714, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
		},
		active = {
			{ animation = 0x13172C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["33"],
			character_specific.ken.boxes.attack["22"]}},
		},
		recover = {
			{ animation = 0x131744, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x13175C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]
----------- Recover error -----------
}},
		},
	},
-----------down MK-----------
	["Cr MK"] = {
		startup = {
			{ animation = 0x131778, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x131790, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["13"]}},
		},
		active = {
			{ animation = 0x1317A8, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["13"],
			character_specific.ken.boxes.attack["23"]}},
		},
		recover = {
			{ animation = 0x1317C0, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["13"]}},
			{ animation = 0x1317D8, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x1317F0, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]
----------- Recover error -----------
}},
		},
	},
-----------down HK-----------
	["Cr HK"] = {
		startup = {
			{ animation = 0x13180C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
		},
		active = {
			{ animation = 0x131824, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["13"],
			character_specific.ken.boxes.attack["24"]}},
		},
		recover = {
			{ animation = 0x13183C, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["13"]}},
			{ animation = 0x131854, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x13186C, duration = 10, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x131884, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["4"],
			character_specific.ken.boxes.vulnerability.top["14"],
			character_specific.ken.boxes.vulnerability.middle["8"],
			character_specific.ken.boxes.vulnerability.bottom["8"]
----------- Recover error -----------
}},
		},
	},
-----------LP-----------
	["Cl LP"] = {
		startup = {
			{ animation = 0x130DEC, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x130E04, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"],
			character_specific.ken.boxes.attack["1"]}},
		},
		recover = {
			{ animation = 0x130E1C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x130E34, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------MP-----------
	["Cl MP"] = {
		startup = {
			{ animation = 0x130EB4, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x130ECC, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x130EE4, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["4"]}},
		},
		recover = {
			{ animation = 0x130EFC, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x130F14, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x130F2C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x130F44, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x130F5C, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------HP-----------
	["Cl HP"] = {
		startup = {
			{ animation = 0x13100C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x131024, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["5"]}},
			{ animation = 0x13103C, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["6"]}},
		},
		recover = {
			{ animation = 0x131054, duration = 10, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x13106C, duration = 12, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x131084, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]
----------- Recover error -----------
}},
		},
	},
-----------LK-----------
	["Cl LK"] = {
		startup = {
			{ animation = 0x131134, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13114C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x131164, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["14"]}},
		},
		recover = {
			{ animation = 0x13117C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x131194, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x1311AC, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------MK-----------
	["Cl MK"] = {
		startup = {
			{ animation = 0x13128C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1312A4, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x1312BC, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["43"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"],
			character_specific.ken.boxes.attack["17"]}},
		},
		recover = {
			{ animation = 0x1312D4, duration = 10, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x1312EC, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]
----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------
}},
		},
	},
-----------up LP-----------
	["JN LP"] = {
		startup = {
			{ animation = 0x1318A0, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = -89, y = 19}}},
		},
		active = {
			{ animation = 0x1318B8, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["45"]}},
		},
	},
-----------up MP-----------
	["JN MP"] = {
		startup = {
			{ animation = 0x1318D4, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x1318EC, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x131904, duration = 20, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["12"]}},
		},
		recover = {
			{ animation = 0x13191C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131934, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x13194C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131964, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]
----------- Recover error -----------
}},
		},
	},
-----------up HP-----------
	["JN HP"] = {
		startup = {
			{ animation = 0x131980, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131998, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x1319B0, duration = 20, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["46"]}},
		},
		recover = {
			{ animation = 0x1319C8, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x1319E0, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x1319F8, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131A10, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]
----------- Recover error -----------
}},
		},
	},
-----------up LK-----------
	["JN LK"] = {
		startup = {
			{ animation = 0x131A2C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x131A44, duration = 40, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["27"]
----------- Recover error -----------
}},
		},
	},
-----------up MK-----------
	["JN MK"] = {
		startup = {
			{ animation = 0x131AA8, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x131AC0, duration = 13, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["28"]}},
		},
		recover = {
			{ animation = 0x131AD8, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131AF0, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131B08, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
	},
-----------up HK-----------
	["JN HK"] = {
		startup = {
			{ animation = 0x131B24, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x131B3C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["25"]}},
			{ animation = 0x131B54, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["32"],
			character_specific.ken.boxes.attack["26"]}},
		},
		recover = {
			{ animation = 0x131B6C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131B84, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131B9C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131BB4, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]
----------- Recover error -----------
}},
		},
	},
-----------up back LP-----------
	["J LP"] = {
		startup = {
			{ animation = 0x131BD0, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x131BE8, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["11"]
----------- Recover error -----------
}},
		},
	},
-----------up back MP-----------
	["J MP"] = {
		startup = {
			{ animation = 0x131C04, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131C1C, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x131C34, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["13"]}},
		},
		recover = {
			{ animation = 0x131C4C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131C64, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131C7C, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131C94, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]
----------- Recover error -----------
}},
		},
	},
-----------up back HP-----------
	["J HP"] = {
		startup = {
			{ animation = 0x131CB0, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["29"]}},
			{ animation = 0x131CC8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["29"]}},
		},
		active = {
			{ animation = 0x131CE0, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["29"],
			character_specific.ken.boxes.attack["47"]}},
		},
		recover = {
			{ animation = 0x131CF8, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131D10, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131D28, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131D40, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]
----------- Recover error -----------
}},
		},
	},
-----------up back LK-----------
	["J LK"] = {
		startup = {
			{ animation = 0x131D5C, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]}},
			{ animation = 0x131D74, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"]}},
		},
		active = {
			{ animation = 0x131D8C, duration = 10, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.attack["35"]}},
			{ animation = 0x131DA4, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"],
			character_specific.ken.boxes.attack["35"]
----------- Recover error -----------
}},
		},
	},
-----------up back MK-----------
	["J MK"] = {
		startup = {
			{ animation = 0x131E6C, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131E84, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131E9C, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x131EB4, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["31"],
			character_specific.ken.boxes.attack["29"]}},
			{ animation = 0x131ECC, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["31"],
			character_specific.ken.boxes.attack["73"]}},
		},
		recover = {
			{ animation = 0x131EE4, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131EFC, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131F14, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131F2C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]
----------- Recover error -----------
}},
		},
	},
-----------up back HK-----------
	["J HK"] = {
		startup = {
			{ animation = 0x131F48, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131F60, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
		},
		active = {
			{ animation = 0x131F78, duration = 7, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["31"],
			character_specific.ken.boxes.attack["30"]}},
		},
		recover = {
			{ animation = 0x131F90, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131FA8, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131FC0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x131FD8, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["11"],
			character_specific.ken.boxes.vulnerability.middle["2"],
			character_specific.ken.boxes.vulnerability.bottom["7"]
----------- Recover error -----------
}},
		},
	},
-----------forward LP-----------
	["Hadouken LP"] = {
		startup = {
			{ animation = 0x13284C, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x132864, duration = 7, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13287C, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x132894, duration = 20, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["35"],
			character_specific.ken.boxes.vulnerability.middle["26"],
			character_specific.ken.boxes.vulnerability.bottom["22"]
----------- Recover error -----------
}},
		},
	},
-----------forward MP-----------
	["Hadouken MP"] = {
		startup = {
			{ animation = 0x1328B0, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1328C8, duration = 7, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1328E0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x1328F8, duration = 20, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["35"],
			character_specific.ken.boxes.vulnerability.middle["26"],
			character_specific.ken.boxes.vulnerability.bottom["22"]
----------- Recover error -----------
}},
		},
	},
-----------forward HP-----------
	["Hadouken HP"] = {
		startup = {
			{ animation = 0x132914, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x13292C, duration = 7, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x132944, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["17"],
			character_specific.ken.boxes.vulnerability.middle["10"],
			character_specific.ken.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x13295C, duration = 20, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["35"],
			character_specific.ken.boxes.vulnerability.middle["26"],
			character_specific.ken.boxes.vulnerability.bottom["22"]
----------- Recover error -----------
}},
		},
	},
-----------back LK-----------
	["Hurricane Kick LK"] = {
		startup = {
			{ animation = 0x132FE8, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"]}},
		},
		active = {
			{ animation = 0x133000, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["2"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.attack["48"]},
			coord = {{name = "", x = 3, y = 4},{name = "", x = 5, y = 7,},{name = "", x = 8, y = 10,}}},
		},
		recover = {
			{ animation = 0x133018, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"]},
			coord = {{name = "", x = 10, y = 13},{name = "", x = 13, y = 16,},{name = "", x = 15, y = 18,}}},
			{ animation = 0x133030, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"]},
			coord = {{name = "", x = 18, y = 20},{name = "", x = 20, y = 21,},{name = "", x = 23, y = 22,}}},
			{ animation = 0x133048, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"]},
			coord = {{name = "", x = 25, y = 23}}},
			{ animation = 0x13307C, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"],
			character_specific.ken.boxes.vulnerability.bottom["23"],
			character_specific.ken.boxes.attack["33"]},
			coord = {{name = "", x = 28, y = 23},{name = "", x = 30, y = 23,}}},
			{ animation = 0x133094, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"],
			character_specific.ken.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 33, y = 23}}},
			{ animation = 0x1330AC, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"],
			character_specific.ken.boxes.vulnerability.bottom["23"],
			character_specific.ken.boxes.attack["34"]},
			coord = {{name = "", x = 35, y = 23},{name = "", x = 38, y = 23,}}},
			{ animation = 0x1330C4, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"],
			character_specific.ken.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 40, y = 23}}},
			{ animation = 0x1330DC, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"],
			character_specific.ken.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 43, y = 23},{name = "", x = 60, y = 23,},{name = "", x = 78, y = 23,}}},
			{ animation = 0x1331F0, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"],
			character_specific.ken.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 78, y = 23},{name = "", x = 80, y = 23,},{name = "", x = 83, y = 22,},{name = "", x = 85, y = 21,}}},
			{ animation = 0x133208, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"],
			character_specific.ken.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 88, y = 20},{name = "", x = 90, y = 19,},{name = "", x = 93, y = 17,},{name = "", x = 95, y = 14,}}},
			{ animation = 0x133220, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["5"],
			character_specific.ken.boxes.vulnerability.top["36"],
			character_specific.ken.boxes.vulnerability.middle["27"],
			character_specific.ken.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 98, y = 11},{name = "", x = 100, y = 8,},{name = "", x = 103, y = 5,},{name = "", x = 105, y = 1,}}},
		},
	},
-----------neutral----------- Enregistrer les autres hurricane kick 
	-- neutral = {
			-- { animation = 0x1330F8, duration = 2, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"],
			-- character_specific.ken.boxes.attack["37"]},
			-- coord = {{name = "", x = 35, y = 23}}},
			-- { animation = 0x133110, duration = 1, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"]}},
			-- { animation = 0x133128, duration = 2, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"],
			-- character_specific.ken.boxes.attack["38"]}},
			-- { animation = 0x133140, duration = 1, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"]}},
			-- { animation = 0x133158, duration = 1, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"]}},
			-- { animation = 0x133174, duration = 2, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"],
			-- character_specific.ken.boxes.attack["39"]}},
			-- { animation = 0x13318C, duration = 1, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"]}},
			-- { animation = 0x1331A4, duration = 2, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"],
			-- character_specific.ken.boxes.attack["40"]}},
			-- { animation = 0x1331BC, duration = 1, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"]}},
			-- { animation = 0x1331D4, duration = 1, hitboxes = {
			-- character_specific.ken.boxes.push["5"],
			-- character_specific.ken.boxes.vulnerability.top["36"],
			-- character_specific.ken.boxes.vulnerability.middle["27"],
			-- character_specific.ken.boxes.vulnerability.bottom["23"]}},
	-- },
-----------down forward LP-----------
	["Shoryuken LP"] = {
		startup = {
			{ animation = 0x132978, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"]}},
		},
		active = {
			{ animation = 0x132990, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["31"]}},
			{ animation = 0x1329A8, duration = 14, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.attack["32"]},
			coord = {{name = "", x = 4, y = 5},{name = "", x = 7, y = 9,},{name = "", x = 10, y = 14,},{name = "", x = 13, y = 17,},{name = "", x = 15, y = 21,},{name = "", x = 16, y = 24,},{name = "", x = 17, y = 27,},{name = "", x = 18, y = 29,},{name = "", x = 18, y = 31,},{name = "", x = 18, y = 31,},{name = "", x = 18, y = 33,},{name = "", x = 18, y = 34,}}},
		},
		recover = {
			{ animation = 0x1329C0, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 18, y = 35},{name = "", x = 18, y = 35,},{name = "", x = 18, y = 36,},{name = "", x = 18, y = 35,},{name = "", x = 18, y = 35,},{name = "", x = 18, y = 34,}}},
			{ animation = 0x1329D8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["38"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 18, y = 32},{name = "", x = 18, y = 31,},{name = "", x = 18, y = 28,},{name = "", x = 18, y = 26,},{name = "", x = 18, y = 23,},{name = "", x = 18, y = 20,},{name = "", x = 18, y = 16,},{name = "", x = 18, y = 12,},{name = "", x = 18, y = 8,},{name = "", x = 18, y = 3,}}},
			{ animation = 0x1329F4, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["39"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 18, y = 0}}},
			{ animation = 0x132A0C, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["39"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 18, y = 0},{name = "", x = 18, y = 0,}}},
		},
	},
-----------down forward MP-----------
	["Shoryuken MP"] = {
		startup = {
			{ animation = 0x132A28, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"]}},
		},
		active = {
			{ animation = 0x132A40, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["41"]}},
			{ animation = 0x132A58, duration = 22, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["42"]},
			coord = {{name = "", x = 8, y = 8},{name = "", x = 15, y = 16,},{name = "", x = 22, y = 23,},{name = "", x = 29, y = 30,},{name = "", x = 35, y = 36,},{name = "", x = 40, y = 42,},{name = "", x = 45, y = 48,},{name = "", x = 50, y = 53,},{name = "", x = 54, y = 58,},{name = "", x = 57, y = 63,},{name = "", x = 60, y = 67,},{name = "", x = 63, y = 71,},{name = "", x = 65, y = 75,},{name = "", x = 66, y = 78,},{name = "", x = 67, y = 81,},{name = "", x = 68, y = 83,},{name = "", x = 68, y = 85,},{name = "", x = 68, y = 85,},{name = "", x = 68, y = 87,},{name = "", x = 68, y = 88,}}},
		},
		recover = {
			{ animation = 0x132A70, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 68, y = 89},{name = "", x = 68, y = 89,},{name = "", x = 68, y = 89,},{name = "", x = 68, y = 89,},{name = "", x = 68, y = 88,},{name = "", x = 68, y = 87,}}},
			{ animation = 0x132A88, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["38"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 68, y = 86},{name = "", x = 68, y = 84,},{name = "", x = 68, y = 82,},{name = "", x = 68, y = 80,},{name = "", x = 68, y = 77,},{name = "", x = 68, y = 74,},{name = "", x = 68, y = 70,},{name = "", x = 68, y = 66,},{name = "", x = 68, y = 62,},{name = "", x = 68, y = 57,},{name = "", x = 68, y = 52,},{name = "", x = 68, y = 46,},{name = "", x = 68, y = 40,},{name = "", x = 68, y = 34,},{name = "", x = 68, y = 27,},{name = "", x = 68, y = 20,},{name = "", x = 68, y = 13,},{name = "", x = 68, y = 5,}}},
			{ animation = 0x132AA4, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["39"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 68, y = 0}}},
			{ animation = 0x132ABC, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["39"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 68, y = 0},{name = "", x = 68, y = 0,}}},
		},
	},
-----------down forward HP-----------
	["Shoryuken HP"] = {
		active = {
			{ animation = 0x132AD8, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["55"]}},
			{ animation = 0x132AF0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["55"]}},
			{ animation = 0x132B08, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["43"]}},
			{ animation = 0x132B20, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["43"]}},
			{ animation = 0x132B38, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["44"]}},
			{ animation = 0x132B50, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]}},
			{ animation = 0x132B68, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 11, y = 10}}},
			{ animation = 0x132B80, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 21, y = 20}}},
			{ animation = 0x132B98, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 31, y = 29}}},
			{ animation = 0x132BB0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 41, y = 38}}},
			{ animation = 0x132BC8, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 50, y = 46}}},
			{ animation = 0x132BE0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 58, y = 55}}},
			{ animation = 0x132BF8, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 66, y = 62}}},
			{ animation = 0x132C10, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 74, y = 70}}},
			{ animation = 0x132C28, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 81, y = 77}}},
			{ animation = 0x132C40, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 87, y = 83}}},
			{ animation = 0x132C58, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 93, y = 90}}},
			{ animation = 0x132C70, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 99, y = 95}}},
			{ animation = 0x132C88, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 104, y = 101}}},
			{ animation = 0x132CA0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 108, y = 106}}},
			{ animation = 0x132CB8, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 112, y = 111}}},
			{ animation = 0x132CD0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 116, y = 115}}},
			{ animation = 0x132CE8, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 119, y = 119}}},
			{ animation = 0x132D00, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 121, y = 123}}},
			{ animation = 0x132D18, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 123, y = 126}}},
			{ animation = 0x132D30, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 125, y = 129}}},
			{ animation = 0x132D48, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 126, y = 131}}},
			{ animation = 0x132D60, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 126, y = 134}}},
			{ animation = 0x132D78, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 126, y = 135}}},
			{ animation = 0x132D90, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.attack["44"]},
			coord = {{name = "", x = 126, y = 135}}},
		},
		recover = {
			{ animation = 0x132DA8, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 126, y = 137}}},
			{ animation = 0x132DC0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 126, y = 138}}},
			{ animation = 0x132DD8, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 126, y = 138}}},
			{ animation = 0x132DF0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 126, y = 139}}},
			{ animation = 0x132E08, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 126, y = 138}}},
			{ animation = 0x132E20, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 126, y = 138}}},
			{ animation = 0x132E38, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["38"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 126, y = 137}}},
			{ animation = 0x132E50, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["38"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 126, y = 136},{name = "", x = 126, y = 132,},{name = "", x = 126, y = 127,},{name = "", x = 126, y = 120,},{name = "", x = 126, y = 112,},{name = "", x = 126, y = 103,},{name = "", x = 126, y = 92,},{name = "", x = 126, y = 79,},{name = "", x = 126, y = 65,},{name = "", x = 126, y = 49,},{name = "", x = 126, y = 32,},{name = "", x = 126, y = 13,}}},
			{ animation = 0x132E6C, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["39"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 126, y = 0}}},
			{ animation = 0x132E84, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["39"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 126, y = 0},{name = "", x = 126, y = 0,}}},
		},
	},
-----------forward LK-----------
	["Crazy Kick 1"] = {
		startup = {
			{ animation = 0x1321B0, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1321C8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["32"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1321E0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["6"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["32"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x1321F8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["49"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["61"]}},
			{ animation = 0x132210, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["49"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["61"]}},
			{ animation = 0x132228, duration = 5, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["37"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["62"]}},
		},
		recover = {
			{ animation = 0x132240, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["51"],
			character_specific.ken.boxes.vulnerability.middle["34"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x132258, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["51"],
			character_specific.ken.boxes.vulnerability.middle["35"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x132270, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["51"],
			character_specific.ken.boxes.vulnerability.middle["35"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x132288, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["52"],
			character_specific.ken.boxes.vulnerability.middle["35"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x132768, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["12"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 42, y = 0},{name = "", x = 42, y = 0,}}},
			{ animation = 0x132780, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["13"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 42, y = 0},{name = "", x = 42, y = 0,}}},
			{ animation = 0x132798, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["13"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 42, y = 0},{name = "", x = 42, y = 0,}}},
			{ animation = 0x1327B0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["13"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 42, y = 0}}},
		},
	},
-----------down LK-----------
	["Crazy Kick 2"] = {
		startup = {
			{ animation = 0x132398, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["8"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1323B0, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["9"],
			character_specific.ken.boxes.vulnerability.top["2"],
			character_specific.ken.boxes.vulnerability.middle["32"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1323C8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["10"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x1323E0, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x1323F8, duration = 8, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
		},
		active = {
			{ animation = 0x132410, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["63"]}},
			{ animation = 0x132428, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["63"]}},
			{ animation = 0x132440, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["37"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["64"]}},
		},
		recover = {
			{ animation = 0x132458, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["50"],
			character_specific.ken.boxes.vulnerability.middle["34"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x132470, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["52"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x132488, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["7"],
			character_specific.ken.boxes.vulnerability.top["52"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x1327CC, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 32, y = 0},{name = "", x = 32, y = 0,},{name = "", x = 32, y = 0,},{name = "", x = 32, y = 0,}}},
			{ animation = 0x1327E4, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 32, y = 0}
----------- Recover error -----------
}},
		},
	},
-----------forward LK-----------
	["Crazy Kick 3"] = {
		startup = {
			{ animation = 0x132598, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["1"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1325B0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["41"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x1325C8, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["41"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x1325E0, duration = 3, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["54"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
		},
		active = {
			{ animation = 0x1325F8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["41"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["65"]}},
			{ animation = 0x132610, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["41"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["65"]}},
			{ animation = 0x132628, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["42"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"],
			character_specific.ken.boxes.attack["66"]}},
		},
		recover = {
			{ animation = 0x132640, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["55"],
			character_specific.ken.boxes.vulnerability.middle["33"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x132658, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["56"],
			character_specific.ken.boxes.vulnerability.middle["32"],
			character_specific.ken.boxes.vulnerability.bottom["35"]}},
			{ animation = 0x132800, duration = 4, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 32, y = 0},{name = "", x = 32, y = 0,},{name = "", x = 32, y = 0,},{name = "", x = 32, y = 0,}}},
			{ animation = 0x132818, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 32, y = 0},{name = "", x = 32, y = 0,}}},
			{ animation = 0x132830, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["3"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 32, y = 0}}},
		},
	},
-----------down forward LP-----------
	["Shoryureppa"] = {
		startup = {
			{ animation = 0x132EA0, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"]}},
		},
		active = {
			{ animation = 0x132EB8, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["56"]},
			coord = {{name = "", x = 8, y = 4}}},
			{ animation = 0x132ED0, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["57"]},
			coord = {{name = "", x = 16, y = 8},{name = "", x = 23, y = 10,},{name = "", x = 29, y = 13,},{name = "", x = 35, y = 14,},{name = "", x = 41, y = 15,},{name = "", x = 46, y = 15,}}},
		},
		recover = {
			{ animation = 0x132EE8, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"]},
			coord = {{name = "", x = 50, y = 15},{name = "", x = 54, y = 14,},{name = "", x = 58, y = 12,},{name = "", x = 61, y = 10,},{name = "", x = 63, y = 7,},{name = "", x = 65, y = 4,}}},
			{ animation = 0x132F00, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"]},
			coord = {{name = "", x = 67, y = -1},{name = "", x = 68, y = -5,},{name = "", x = 68, y = -11,},{name = "", x = 68, y = -17,},{name = "", x = 68, y = -17,}}},
			{ animation = 0x132FB4, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"]},
			coord = {{name = "", x = 68, y = 0}}},
			{ animation = 0x132FCC, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"]},
			coord = {{name = "", x = 68, y = 0}}},
			{ animation = 0x132F1C, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["58"]},
			coord = {{name = "", x = 68, y = 0},{name = "", x = 68, y = 0,}}},
			{ animation = 0x132F34, duration = 2, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["59"]},
			coord = {{name = "", x = 68, y = 0},{name = "", x = 68, y = 0,}}},
			{ animation = 0x132F4C, duration = 26, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.attack["60"]},
			coord = {{name = "", x = 68, y = 0},{name = "", x = 68, y = 0,},{name = "", x = 80, y = 10,},{name = "", x = 92, y = 19,},{name = "", x = 103, y = 29,},{name = "", x = 113, y = 37,},{name = "", x = 124, y = 46,},{name = "", x = 133, y = 54,},{name = "", x = 142, y = 62,},{name = "", x = 151, y = 69,},{name = "", x = 159, y = 76,},{name = "", x = 167, y = 83,},{name = "", x = 174, y = 89,},{name = "", x = 181, y = 95,},{name = "", x = 188, y = 100,},{name = "", x = 194, y = 106,},{name = "", x = 199, y = 110,},{name = "", x = 204, y = 115,},{name = "", x = 208, y = 119,},{name = "", x = 212, y = 122,},{name = "", x = 216, y = 126,},{name = "", x = 219, y = 128,},{name = "", x = 222, y = 131,},{name = "", x = 224, y = 133,},{name = "", x = 226, y = 135,},{name = "", x = 227, y = 136,}}},
			{ animation = 0x132F64, duration = 6, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["37"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 228, y = 137},{name = "", x = 228, y = 138,},{name = "", x = 228, y = 138,},{name = "", x = 228, y = 138,},{name = "", x = 228, y = 138,},{name = "", x = 228, y = 137,}}},
			{ animation = 0x132F7C, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["38"],
			character_specific.ken.boxes.vulnerability.middle["28"],
			character_specific.ken.boxes.vulnerability.bottom["24"]},
			coord = {{name = "", x = 228, y = 137},{name = "", x = 228, y = 135,},{name = "", x = 228, y = 134,},{name = "", x = 228, y = 132,},{name = "", x = 228, y = 129,},{name = "", x = 228, y = 127,},{name = "", x = 228, y = 123,},{name = "", x = 228, y = 120,},{name = "", x = 228, y = 116,},{name = "", x = 228, y = 112,},{name = "", x = 228, y = 107,},{name = "", x = 228, y = 102,},{name = "", x = 228, y = 97,},{name = "", x = 228, y = 91,},{name = "", x = 228, y = 85,},{name = "", x = 228, y = 78,},{name = "", x = 228, y = 72,},{name = "", x = 228, y = 64,},{name = "", x = 228, y = 57,},{name = "", x = 228, y = 49,},{name = "", x = 228, y = 40,},{name = "", x = 228, y = 32,},{name = "", x = 228, y = 22,},{name = "", x = 228, y = 13,},{name = "", x = 228, y = 3,}}},
			{ animation = 0x132F98, duration = 1, hitboxes = {
			character_specific.ken.boxes.push["1"],
			character_specific.ken.boxes.vulnerability.top["39"],
			character_specific.ken.boxes.vulnerability.middle["1"],
			character_specific.ken.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 228, y = 0},{name = "", x = 228, y = 0,}}},
		},
	},
}