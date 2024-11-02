-- Copy in the correct fields what's written in ryu_[...]_boxes.lua
character_specific.ryu.boxes = {
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
character_specific.ryu.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x11221A, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1121A2, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1121BA, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1121D2, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1121EA, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x112202, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x1122CA, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["3"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x1122E2, duration = 6, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["3"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x11260E, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x112626, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["3"],
			character_specific.ryu.boxes.vulnerability.top["15"],
			character_specific.ryu.boxes.vulnerability.middle["9"],
			character_specific.ryu.boxes.vulnerability.bottom["8"]}},
	},
-----------down back-----------
	crouched = {
			{ animation = 0x11263E, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["4"],
			character_specific.ryu.boxes.vulnerability.top["14"],
			character_specific.ryu.boxes.vulnerability.middle["8"],
			character_specific.ryu.boxes.vulnerability.bottom["8"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x11265A, duration = 1, hitboxes = {
			character_specific.ryu.boxes.push["4"],
			character_specific.ryu.boxes.vulnerability.top["14"],
			character_specific.ryu.boxes.vulnerability.middle["8"],
			character_specific.ryu.boxes.vulnerability.bottom["8"]}},
	},
-----------back HK-----------
	["Special b_HK"] = {
		startup = {
			{ animation = 0x111872, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["2"]},
			coord = {{name = "", x = 3, y = 4},{name = "", x = 7, y = 7,},{name = "", x = 11, y = 10,}}},
			{ animation = 0x11188A, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"]},
			coord = {{name = "", x = 15, y = 13},{name = "", x = 18, y = 16,},{name = "", x = 22, y = 18,},{name = "", x = 26, y = 20,}}},
			{ animation = 0x1118A2, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"]},
			coord = {{name = "", x = 30, y = 21},{name = "", x = 33, y = 22,},{name = "", x = 37, y = 23,}}},
		},
		active = {
			{ animation = 0x1119E6, duration = 3, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"],
			character_specific.ryu.boxes.vulnerability.bottom["23"],
			character_specific.ryu.boxes.attack["39"]},
			coord = {{name = "", x = 41, y = 23},{name = "", x = 45, y = 23,},{name = "", x = 48, y = 23,}}},
		},
		recover = {
			{ animation = 0x1119FE, duration = 3, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"],
			character_specific.ryu.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 52, y = 23},{name = "", x = 56, y = 23,},{name = "", x = 60, y = 23,}}},
			{ animation = 0x111A16, duration = 3, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"],
			character_specific.ryu.boxes.vulnerability.bottom["23"],
			character_specific.ryu.boxes.attack["40"]},
			coord = {{name = "", x = 63, y = 23},{name = "", x = 67, y = 23,},{name = "", x = 71, y = 23,}}},
			{ animation = 0x111A2E, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"],
			character_specific.ryu.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 75, y = 23},{name = "", x = 78, y = 23,}}},
			{ animation = 0x111A46, duration = 1, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"],
			character_specific.ryu.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 82, y = 23},{name = "", x = 127, y = 23,},{name = "", x = 172, y = 23,},{name = "", x = 217, y = 23,},{name = "", x = 213, y = 23,}}},
			{ animation = 0x111A62, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"],
			character_specific.ryu.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 212, y = 23},{name = "", x = 215, y = 23,},{name = "", x = 218, y = 22,},{name = "", x = 220, y = 21,}}},
			{ animation = 0x111A7A, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"],
			character_specific.ryu.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 223, y = 20},{name = "", x = 227, y = 19,},{name = "", x = 231, y = 17,},{name = "", x = 234, y = 14,}}},
			{ animation = 0x111A92, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["5"],
			character_specific.ryu.boxes.vulnerability.top["36"],
			character_specific.ryu.boxes.vulnerability.middle["27"],
			character_specific.ryu.boxes.vulnerability.bottom["23"]},
			coord = {{name = "", x = 238, y = 11},{name = "", x = 242, y = 8,},{name = "", x = 246, y = 5,},{name = "", x = 249, y = 1,}}},
		},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x112422, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]},
			coord = {{name = "", x = 253, y = 0}}},
	},
}