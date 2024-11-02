-- Copy in the correct fields what's written in thawk_[...]_boxes.lua
character_specific.thawk.boxes = {
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
character_specific.thawk.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x179652, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x17966A, duration = 12, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x179622, duration = 12, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x1797AA, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1797C2, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1797DA, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1797F2, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x17980A, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x179822, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x17983A, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x179852, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x179686, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x17969E, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1796B6, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1796CE, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1796E6, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1796FE, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x179716, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x1798CE, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["20"],
			character_specific.thawk.boxes.vulnerability.middle["20"],
			character_specific.thawk.boxes.vulnerability.bottom["20"]}},
			{ animation = 0x1798E6, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["12"],
			character_specific.thawk.boxes.vulnerability.top["21"],
			character_specific.thawk.boxes.vulnerability.middle["21"],
			character_specific.thawk.boxes.vulnerability.bottom["21"]}},
			{ animation = 0x1798FE, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["12"],
			character_specific.thawk.boxes.vulnerability.top["22"],
			character_specific.thawk.boxes.vulnerability.middle["22"],
			character_specific.thawk.boxes.vulnerability.bottom["22"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x17991A, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["12"],
			character_specific.thawk.boxes.vulnerability.top["22"],
			character_specific.thawk.boxes.vulnerability.middle["22"],
			character_specific.thawk.boxes.vulnerability.bottom["22"]}},
			{ animation = 0x179932, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["12"],
			character_specific.thawk.boxes.vulnerability.top["21"],
			character_specific.thawk.boxes.vulnerability.middle["21"],
			character_specific.thawk.boxes.vulnerability.bottom["21"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x17994A, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["20"],
			character_specific.thawk.boxes.vulnerability.middle["20"],
			character_specific.thawk.boxes.vulnerability.bottom["20"]}},
			{ animation = 0x17986A, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x179882, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x17989A, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
	},
-----------down forward LP-----------
	["Special f_LP"] = {
		startup = {
			{ animation = 0x178E82, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["11"]}},
		},
		active = {
			{ animation = 0x178E9A, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.attack["35"]}},
			{ animation = 0x178EB2, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["83"],
			character_specific.thawk.boxes.attack["36"]}},
			{ animation = 0x178ECA, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["83"],
			character_specific.thawk.boxes.attack["36"]},
			coord = {{name = "", x = 5, y = 5},{name = "", x = 10, y = 11,},{name = "", x = 15, y = 15,}}},
			{ animation = 0x178EE2, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["84"],
			character_specific.thawk.boxes.vulnerability.middle["81"],
			character_specific.thawk.boxes.vulnerability.bottom["81"],
			character_specific.thawk.boxes.attack["37"]},
			coord = {{name = "", x = 20, y = 20},{name = "", x = 24, y = 24,}}},
			{ animation = 0x178EFA, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["84"],
			character_specific.thawk.boxes.vulnerability.middle["81"],
			character_specific.thawk.boxes.vulnerability.bottom["81"],
			character_specific.thawk.boxes.attack["37"]},
			coord = {{name = "", x = 28, y = 28},{name = "", x = 32, y = 32,},{name = "", x = 41, y = 41,},{name = "", x = 43, y = 43,},{name = "", x = 48, y = 48,},{name = "", x = 49, y = 50,},{name = "", x = 51, y = 51,}}},
		},
		recover = {
			{ animation = 0x17903E, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["66"],
			character_specific.thawk.boxes.vulnerability.middle["71"],
			character_specific.thawk.boxes.vulnerability.bottom["62"]},
			coord = {{name = "", x = 51, y = 51},{name = "", x = 51, y = 51,}}},
			{ animation = 0x179056, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["11"],
			character_specific.thawk.boxes.vulnerability.middle["11"],
			character_specific.thawk.boxes.vulnerability.bottom["11"]},
			coord = {{name = "", x = 51, y = 51},{name = "", x = 51, y = 51,},{name = "", x = 51, y = 51,},{name = "", x = 51, y = 51,}}},
			{ animation = 0x17906E, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["10"],
			character_specific.thawk.boxes.vulnerability.middle["10"],
			character_specific.thawk.boxes.vulnerability.bottom["10"]},
			coord = {{name = "", x = 51, y = 51},{name = "", x = 51, y = 49,},{name = "", x = 51, y = 47,}}},
			{ animation = 0x179086, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["9"],
			character_specific.thawk.boxes.vulnerability.middle["9"],
			character_specific.thawk.boxes.vulnerability.bottom["9"]},
			coord = {{name = "", x = 51, y = 45},{name = "", x = 51, y = 42,},{name = "", x = 51, y = 39,},{name = "", x = 51, y = 36,}}},
			{ animation = 0x17909E, duration = 1, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["3"],
			character_specific.thawk.boxes.vulnerability.middle["3"],
			character_specific.thawk.boxes.vulnerability.bottom["3"]},
			coord = {{name = "", x = 51, y = 32},{name = "", x = 51, y = 28,},{name = "", x = 51, y = 24,},{name = "", x = 51, y = 20,},{name = "", x = 51, y = 15,},{name = "", x = 51, y = 10,},{name = "", x = 51, y = 5,}}},
			{ animation = 0x1790B6, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["2"],
			character_specific.thawk.boxes.vulnerability.top["20"],
			character_specific.thawk.boxes.vulnerability.middle["20"],
			character_specific.thawk.boxes.vulnerability.bottom["20"]},
			coord = {{name = "", x = 51, y = 0},{name = "", x = 51, y = 0,},{name = "", x = 51, y = 0,}}},
			{ animation = 0x1790CE, duration = 1, hitboxes = {
			character_specific.thawk.boxes.push["2"],
			character_specific.thawk.boxes.vulnerability.top["20"],
			character_specific.thawk.boxes.vulnerability.middle["20"],
			character_specific.thawk.boxes.vulnerability.bottom["20"]},
			coord = {{name = "", x = 51, y = 0}}},
		},
	},
-----------back-----------
	backward = {
			{ animation = 0x1798B2, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = -15, y = 0}}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x17963A, duration = 12, hitboxes = {
			character_specific.thawk.boxes.push["1"],
			character_specific.thawk.boxes.vulnerability.top["1"],
			character_specific.thawk.boxes.vulnerability.middle["1"],
			character_specific.thawk.boxes.vulnerability.bottom["1"]}},
	},
-----------down forward MP-----------
	["Special f_MP"] = {
		startup = {
			{ animation = 0x178F16, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["11"]}},
		},
		active = {
			{ animation = 0x178F2E, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.attack["39"]}},
			{ animation = 0x178F46, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["44"],
			character_specific.thawk.boxes.vulnerability.middle["52"],
			character_specific.thawk.boxes.vulnerability.bottom["36"],
			character_specific.thawk.boxes.attack["40"]}},
			{ animation = 0x178F5E, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["44"],
			character_specific.thawk.boxes.vulnerability.middle["52"],
			character_specific.thawk.boxes.vulnerability.bottom["36"],
			character_specific.thawk.boxes.attack["40"]},
			coord = {{name = "", x = 7, y = 6},{name = "", x = 15, y = 13,},{name = "", x = 21, y = 18,}}},
			{ animation = 0x178F76, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["84"],
			character_specific.thawk.boxes.vulnerability.middle["81"],
			character_specific.thawk.boxes.vulnerability.bottom["81"],
			character_specific.thawk.boxes.attack["41"]},
			coord = {{name = "", x = 27, y = 24},{name = "", x = 33, y = 29,}}},
			{ animation = 0x178F8E, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["84"],
			character_specific.thawk.boxes.vulnerability.middle["81"],
			character_specific.thawk.boxes.vulnerability.bottom["81"],
			character_specific.thawk.boxes.attack["41"]},
			coord = {{name = "", x = 39, y = 34},{name = "", x = 44, y = 38,},{name = "", x = 57, y = 49,},{name = "", x = 60, y = 53,},{name = "", x = 68, y = 60,},{name = "", x = 70, y = 61,},{name = "", x = 73, y = 64,},{name = "", x = 73, y = 65,}}},
		},
	},
-----------down forward HP-----------
	["Special f_HP"] = {
		startup = {
			{ animation = 0x178FAA, duration = 4, hitboxes = {
			character_specific.thawk.boxes.push["11"]},
			coord = {{name = "", x = 0, y = 0}}},
		},
		active = {
			{ animation = 0x178FC2, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.attack["42"]}},
			{ animation = 0x178FDA, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["44"],
			character_specific.thawk.boxes.vulnerability.middle["52"],
			character_specific.thawk.boxes.vulnerability.bottom["36"],
			character_specific.thawk.boxes.attack["43"]}},
			{ animation = 0x178FF2, duration = 5, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["44"],
			character_specific.thawk.boxes.vulnerability.middle["52"],
			character_specific.thawk.boxes.vulnerability.bottom["36"],
			character_specific.thawk.boxes.attack["43"]},
			coord = {{name = "", x = 10, y = 8},{name = "", x = 19, y = 15,},{name = "", x = 28, y = 23,}}},
			{ animation = 0x17900A, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["84"],
			character_specific.thawk.boxes.vulnerability.middle["81"],
			character_specific.thawk.boxes.vulnerability.bottom["81"],
			character_specific.thawk.boxes.attack["44"]},
			coord = {{name = "", x = 37, y = 29},{name = "", x = 45, y = 36,}}},
			{ animation = 0x179022, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["11"],
			character_specific.thawk.boxes.vulnerability.top["84"],
			character_specific.thawk.boxes.vulnerability.middle["81"],
			character_specific.thawk.boxes.vulnerability.bottom["81"],
			character_specific.thawk.boxes.attack["44"]},
			coord = {{name = "", x = 52, y = 42},{name = "", x = 59, y = 48,},{name = "", x = 77, y = 63,},{name = "", x = 82, y = 67,},{name = "", x = 94, y = 78,},{name = "", x = 97, y = 80,},{name = "", x = 103, y = 86,},{name = "", x = 104, y = 88,}}},
		},
	},
-----------up-----------
	jump_neutral = {
			{ animation = 0x179AD6, duration = 3, hitboxes = {
			character_specific.thawk.boxes.push["2"],
			character_specific.thawk.boxes.vulnerability.top["2"],
			character_specific.thawk.boxes.vulnerability.middle["2"],
			character_specific.thawk.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 0,},{name = "", x = 0, y = 0,}}},
			{ animation = 0x179AEE, duration = 10, hitboxes = {
			character_specific.thawk.boxes.push["3"],
			character_specific.thawk.boxes.vulnerability.top["5"],
			character_specific.thawk.boxes.vulnerability.middle["5"],
			character_specific.thawk.boxes.vulnerability.bottom["5"]},
			coord = {{name = "", x = 0, y = 0},{name = "", x = 0, y = 7,},{name = "", x = 0, y = 13,},{name = "", x = 0, y = 19,},{name = "", x = 0, y = 25,}}},
	},
-----------LP MP HP-----------
	["Special St LPMPHP"] = {
		startup = {
			{ animation = 0x1790EA, duration = 10, hitboxes = {
			character_specific.thawk.boxes.push["14"],
			character_specific.thawk.boxes.vulnerability.top["72"],
			character_specific.thawk.boxes.vulnerability.middle["67"],
			character_specific.thawk.boxes.vulnerability.bottom["63"]}},
			{ animation = 0x179102, duration = 7, hitboxes = {
			character_specific.thawk.boxes.push["15"],
			character_specific.thawk.boxes.vulnerability.top["73"],
			character_specific.thawk.boxes.vulnerability.middle["70"],
			character_specific.thawk.boxes.vulnerability.bottom["66"]}},
		},
		active = {
			{ animation = 0x17911A, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["15"],
			character_specific.thawk.boxes.vulnerability.top["93"],
			character_specific.thawk.boxes.vulnerability.middle["90"],
			character_specific.thawk.boxes.vulnerability.bottom["90"],
			character_specific.thawk.boxes.attack["49"]}},
			{ animation = 0x179132, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["15"],
			character_specific.thawk.boxes.vulnerability.top["93"],
			character_specific.thawk.boxes.vulnerability.middle["90"],
			character_specific.thawk.boxes.vulnerability.bottom["90"],
			character_specific.thawk.boxes.attack["49"]},
			coord = {{name = "", x = 11, y = -3},{name = "", x = 22, y = -6,},{name = "", x = 55, y = -15,},{name = "", x = 66, y = -18,}}},
		},
		recover = {
			{ animation = 0x17914E, duration = 2, hitboxes = {
			character_specific.thawk.boxes.push["12"],
			character_specific.thawk.boxes.vulnerability.top["75"],
			character_specific.thawk.boxes.vulnerability.middle["72"],
			character_specific.thawk.boxes.vulnerability.bottom["69"]},
			coord = {{name = "", x = 99, y = -25},{name = "", x = 102, y = -25,}}},
			{ animation = 0x179166, duration = 8, hitboxes = {
			character_specific.thawk.boxes.push["12"],
			character_specific.thawk.boxes.vulnerability.top["73"],
			character_specific.thawk.boxes.vulnerability.middle["70"],
			character_specific.thawk.boxes.vulnerability.bottom["66"]},
			coord = {{name = "", x = 105, y = -25},{name = "", x = 107, y = -25,},{name = "", x = 110, y = -25,},{name = "", x = 112, y = -25,},{name = "", x = 114, y = -25,},{name = "", x = 116, y = -25,},{name = "", x = 118, y = -25,},{name = "", x = 120, y = -25,},{name = "", x = 122, y = -25,}}},
			{ animation = 0x17917E, duration = 9, hitboxes = {
			character_specific.thawk.boxes.push["12"],
			character_specific.thawk.boxes.vulnerability.top["22"],
			character_specific.thawk.boxes.vulnerability.middle["22"],
			character_specific.thawk.boxes.vulnerability.bottom["22"]},
			coord = {{name = "", x = 124, y = -25},{name = "", x = 125, y = -25,},{name = "", x = 127, y = -25,},{name = "", x = 128, y = -25,},{name = "", x = 129, y = -25,},{name = "", x = 130, y = -25,},{name = "", x = 131, y = -25,},{name = "", x = 132, y = -25,},{name = "", x = 132, y = -25,},{name = "", x = 133, y = -25,}}},
			{ animation = 0x179196, duration = 1, hitboxes = {
			character_specific.thawk.boxes.push["12"],
			character_specific.thawk.boxes.vulnerability.top["22"],
			character_specific.thawk.boxes.vulnerability.middle["22"],
			character_specific.thawk.boxes.vulnerability.bottom["22"]},
			coord = {{name = "", x = 133, y = -25},{name = "", x = 133, y = -25,},{name = "", x = 133, y = -25,},{name = "", x = 133, y = -25,}}},
		},
	},
}