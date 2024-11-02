-- Copy in the correct fields what's written in sagat_[...]_boxes.lua
character_specific.sagat.boxes = {
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
character_specific.sagat.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x15CCC6, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CC66, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CC7E, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CC96, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CCAE, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x15CF1A, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
	},
-----------neutral-----------
	neutral = {
	},
-----------down forward-----------
	crouched = {
	},
-----------down-----------
	crouched = {
	},
-----------forward-----------
	forward = {
			{ animation = 0x15CF7E, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
	},
-----------down forward-----------
	crouched = {
	},
-----------MK-----------
	["Special St MK"] = {
		startup = {
			{ animation = 0x15D17A, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["13"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15D192, duration = 5, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["13"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15D1AA, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["18"],
			character_specific.sagat.boxes.vulnerability.middle["13"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x15CF66, duration = 1, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"],
			character_specific.sagat.boxes.projectile.vulnerability["1"],
			character_specific.sagat.boxes.projectile.attack["8"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x15CCE2, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CCFA, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CD12, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CD2A, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CD42, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15CD5A, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
	},
-----------down-----------
	crouched = {
			{ animation = 0x15CF32, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15CF4A, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
	},
-----------up-----------
	jump_neutral = {
			{ animation = 0x15CE86, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x15CE9E, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 7,},{name = "", x = 0, y = 14,},{name = "", x = 0, y = 20,}}},
			{ animation = 0x15CEB6, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 26},{name = "", x = 0, y = 32,},{name = "", x = 0, y = 37,},{name = "", x = 0, y = 42,}}},
			{ animation = 0x15CECE, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 47},{name = "", x = 0, y = 51,},{name = "", x = 0, y = 55,},{name = "", x = 0, y = 59,},{name = "", x = 0, y = 62,},{name = "", x = 0, y = 65,},{name = "", x = 0, y = 67,},{name = "", x = 0, y = 70,}}},
			{ animation = 0x15CEE6, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 71},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 74,},{name = "", x = 0, y = 75,}}},
			{ animation = 0x15CEFE, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 76},{name = "", x = 0, y = 76,},{name = "", x = 0, y = 76,},{name = "", x = 0, y = 75,},{name = "", x = 0, y = 74,},{name = "", x = 0, y = 73,},{name = "", x = 0, y = 71,},{name = "", x = 0, y = 69,},{name = "", x = 0, y = 67,},{name = "", x = 0, y = 65,},{name = "", x = 0, y = 62,},{name = "", x = 0, y = 58,},{name = "", x = 0, y = 55,},{name = "", x = 0, y = 51,},{name = "", x = 0, y = 46,},{name = "", x = 0, y = 42,},{name = "", x = 0, y = 37,},{name = "", x = 0, y = 31,},{name = "", x = 0, y = 26,},{name = "", x = 0, y = 20,},{name = "", x = 0, y = 13,},{name = "", x = 0, y = 7,},{name = "", x = 0, y = 0,}}},
	},
-----------up forward-----------
	jump_forward = {
			{ animation = 0x15CDF2, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x15CE0A, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 2, y = 7,},{name = "", x = 5, y = 13,},{name = "", x = 7, y = 19,}}},
			{ animation = 0x15CE22, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 10, y = 25},{name = "", x = 12, y = 31,},{name = "", x = 15, y = 36,},{name = "", x = 17, y = 40,}}},
			{ animation = 0x15CE3A, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 20, y = 45},{name = "", x = 22, y = 49,},{name = "", x = 25, y = 53,},{name = "", x = 27, y = 56,},{name = "", x = 30, y = 59,},{name = "", x = 32, y = 62,},{name = "", x = 34, y = 64,},{name = "", x = 37, y = 66,}}},
			{ animation = 0x15CE52, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 39, y = 67},{name = "", x = 41, y = 69,},{name = "", x = 43, y = 70,},{name = "", x = 46, y = 70,}}},
			{ animation = 0x15CE6A, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["2"],
			character_specific.sagat.boxes.vulnerability.top["2"],
			character_specific.sagat.boxes.vulnerability.middle["2"],
			character_specific.sagat.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 48, y = 70},{name = "", x = 50, y = 70,},{name = "", x = 52, y = 70,},{name = "", x = 55, y = 69,},{name = "", x = 57, y = 68,},{name = "", x = 59, y = 67,},{name = "", x = 61, y = 65,},{name = "", x = 63, y = 63,},{name = "", x = 65, y = 60,},{name = "", x = 67, y = 57,},{name = "", x = 69, y = 54,},{name = "", x = 71, y = 51,},{name = "", x = 73, y = 47,},{name = "", x = 75, y = 42,},{name = "", x = 77, y = 38,},{name = "", x = 79, y = 33,},{name = "", x = 81, y = 28,},{name = "", x = 83, y = 22,},{name = "", x = 85, y = 16,},{name = "", x = 87, y = 10,},{name = "", x = 89, y = 3,}}},
	},
-----------back-----------
	backward = {
	},
-----------HP-----------
	["Special St HP"] = {
		startup = {
			{ animation = 0x15D12E, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15D146, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["4"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x15D15E, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["15"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"]
----------- Recover error -----------

----------- Recover error -----------
}},
		},
	},
-----------back LP-----------
	["b_LP"] = {
		startup = {
			{ animation = 0x15B75E, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["4"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x15B776, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["4"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"],
			character_specific.sagat.boxes.attack["1"]}},
		},
		recover = {
			{ animation = 0x15B78E, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["4"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x15B7A6, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
			{ animation = 0x15D02E, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15D046, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
		},
	},
-----------back MP-----------
	["b_MP"] = {
		startup = {
			{ animation = 0x15B826, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15B83E, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["4"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x15B856, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["17"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"],
			character_specific.sagat.boxes.attack["2"]}},
		},
		recover = {
			{ animation = 0x15B86E, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["4"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x15B886, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15B89E, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------back HP-----------
	["b_HP"] = {
		startup = {
			{ animation = 0x15B91E, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15B936, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["4"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"]}},
		},
		active = {
			{ animation = 0x15B94E, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["17"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"],
			character_specific.sagat.boxes.attack["25"]}},
		},
		recover = {
			{ animation = 0x15B966, duration = 10, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["4"],
			character_specific.sagat.boxes.vulnerability.middle["4"],
			character_specific.sagat.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x15B97E, duration = 12, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15B996, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------back LK-----------
	["b_LK"] = {
		startup = {
			{ animation = 0x15B9B2, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15B9CA, duration = 1, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["25"],
			character_specific.sagat.boxes.vulnerability.middle["19"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x15B9E2, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["26"],
			character_specific.sagat.boxes.vulnerability.middle["20"],
			character_specific.sagat.boxes.vulnerability.bottom["1"],
			character_specific.sagat.boxes.attack["8"]}},
			{ animation = 0x15B9FA, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["11"],
			character_specific.sagat.boxes.vulnerability.middle["10"],
			character_specific.sagat.boxes.vulnerability.bottom["10"],
			character_specific.sagat.boxes.attack["9"]}},
		},
		recover = {
			{ animation = 0x15BA12, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["26"],
			character_specific.sagat.boxes.vulnerability.middle["20"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BA2A, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["25"],
			character_specific.sagat.boxes.vulnerability.middle["19"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BA42, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BA5A, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------back MK-----------
	["b_MK"] = {
		startup = {
			{ animation = 0x15BA76, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BA8E, duration = 1, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["25"],
			character_specific.sagat.boxes.vulnerability.middle["19"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x15BAA6, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["26"],
			character_specific.sagat.boxes.vulnerability.middle["20"],
			character_specific.sagat.boxes.vulnerability.bottom["1"],
			character_specific.sagat.boxes.attack["6"]}},
			{ animation = 0x15BABE, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["11"],
			character_specific.sagat.boxes.vulnerability.middle["10"],
			character_specific.sagat.boxes.vulnerability.bottom["11"],
			character_specific.sagat.boxes.attack["7"]}},
		},
		recover = {
			{ animation = 0x15BAD6, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["26"],
			character_specific.sagat.boxes.vulnerability.middle["20"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BAEE, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["25"],
			character_specific.sagat.boxes.vulnerability.middle["19"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BB06, duration = 5, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BB1E, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------back HK-----------
	["b_HK"] = {
		startup = {
			{ animation = 0x15BB3A, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BB52, duration = 1, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["25"],
			character_specific.sagat.boxes.vulnerability.middle["19"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
		},
		active = {
			{ animation = 0x15BB6A, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["26"],
			character_specific.sagat.boxes.vulnerability.middle["20"],
			character_specific.sagat.boxes.vulnerability.bottom["1"],
			character_specific.sagat.boxes.attack["4"]}},
			{ animation = 0x15BB82, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["11"],
			character_specific.sagat.boxes.vulnerability.middle["14"],
			character_specific.sagat.boxes.vulnerability.bottom["16"],
			character_specific.sagat.boxes.attack["5"]}},
		},
		recover = {
			{ animation = 0x15BB9A, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["26"],
			character_specific.sagat.boxes.vulnerability.middle["20"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BBB2, duration = 7, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["25"],
			character_specific.sagat.boxes.vulnerability.middle["19"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BBCA, duration = 9, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x15BBE2, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]
----------- Recover error -----------
}},
		},
	},
-----------down back LP-----------
	["b_LP"] = {
		startup = {
			{ animation = 0x15D0C6, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BBFE, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BC16, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x15BC2E, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["12"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"],
			character_specific.sagat.boxes.attack["3"]}},
		},
		recover = {
			{ animation = 0x15BC46, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BC5E, duration = 1, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15D0AE, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------down back MP-----------
	["b_MP"] = {
		startup = {
			{ animation = 0x15BC7A, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BC92, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x15BCAA, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["13"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"],
			character_specific.sagat.boxes.attack["26"]}},
		},
		recover = {
			{ animation = 0x15BCC2, duration = 5, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BCDA, duration = 1, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
		},
	},
-----------down back HP-----------
	["b_HP"] = {
		startup = {
			{ animation = 0x15BCF6, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x15BD0E, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["14"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"],
			character_specific.sagat.boxes.attack["27"]}},
		},
		recover = {
			{ animation = 0x15BD26, duration = 12, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BD3E, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["11"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------down back LK-----------
	["b_LK"] = {
		startup = {
			{ animation = 0x15BD5A, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x15BD72, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"],
			character_specific.sagat.boxes.attack["22"]}},
		},
		recover = {
			{ animation = 0x15BD8A, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["12"]}},
			{ animation = 0x15BDA2, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------down back MK-----------
	["b_MK"] = {
		startup = {
			{ animation = 0x15BDBE, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BDD6, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x15BDEE, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["13"],
			character_specific.sagat.boxes.attack["23"]}},
		},
		recover = {
			{ animation = 0x15BE06, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BE1E, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BE36, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------down back HK-----------
	["b_HK"] = {
		startup = {
			{ animation = 0x15BE52, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BE6A, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
		},
		active = {
			{ animation = 0x15BE82, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["14"],
			character_specific.sagat.boxes.attack["24"]}},
		},
		recover = {
			{ animation = 0x15BE9A, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BEB2, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]}},
			{ animation = 0x15BECA, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["3"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]
----------- Recover error -----------
}},
		},
	},
-----------back LP-----------
	["b_LP"] = {
		startup = {
			{ animation = 0x15B6FA, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["19"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]}},
		},
		active = {
			{ animation = 0x15B712, duration = 4, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["28"],
			character_specific.sagat.boxes.vulnerability.middle["24"],
			character_specific.sagat.boxes.vulnerability.bottom["22"],
			character_specific.sagat.boxes.attack["37"]}},
		},
		recover = {
			{ animation = 0x15B72A, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["19"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]}},
			{ animation = 0x15B742, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["19"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]
----------- Recover error -----------
}},
		},
	},
-----------back MP-----------
	["b_MP"] = {
		startup = {
			{ animation = 0x15B7C2, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["19"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]}},
		},
		active = {
			{ animation = 0x15B7DA, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["20"],
			character_specific.sagat.boxes.vulnerability.middle["24"],
			character_specific.sagat.boxes.vulnerability.bottom["22"],
			character_specific.sagat.boxes.attack["38"]}},
		},
		recover = {
			{ animation = 0x15B7F2, duration = 6, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["20"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]}},
			{ animation = 0x15B80A, duration = 1, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["19"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]}},
		},
	},
-----------back HP-----------
	["b_HP"] = {
		startup = {
			{ animation = 0x15B8BA, duration = 3, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["19"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]}},
		},
		active = {
			{ animation = 0x15B8D2, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["21"],
			character_specific.sagat.boxes.vulnerability.middle["24"],
			character_specific.sagat.boxes.vulnerability.bottom["22"],
			character_specific.sagat.boxes.attack["39"]}},
		},
		recover = {
			{ animation = 0x15B8EA, duration = 10, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["21"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]}},
			{ animation = 0x15B902, duration = 1, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["19"],
			character_specific.sagat.boxes.vulnerability.middle["15"],
			character_specific.sagat.boxes.vulnerability.bottom["17"]
----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

----------- Recover error -----------

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
-----------MP-----------
	["St MP"] = {
		startup = {
			{ animation = 0x15CF96, duration = 2, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["3"],
			character_specific.sagat.boxes.vulnerability.middle["3"],
			character_specific.sagat.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 0, y = 0}
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
-----------neutral-----------
	neutral = {
			{ animation = 0x15D062, duration = 7, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 38, y = 0}}},
			{ animation = 0x15D07A, duration = 8, hitboxes = {
			character_specific.sagat.boxes.push["1"],
			character_specific.sagat.boxes.vulnerability.top["1"],
			character_specific.sagat.boxes.vulnerability.middle["1"],
			character_specific.sagat.boxes.vulnerability.bottom["1"]