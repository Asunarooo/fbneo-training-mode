-- Copy in the correct fields what's written in claw_[...]_boxes.lua
character_specific.claw.boxes = {
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
character_specific.claw.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x16A866, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A87E, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A896, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A8AE, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16A84E, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
	},
-----------down back-----------
	crouched = {
			{ animation = 0x16ACDA, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.top["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x16ACF2, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
			{ animation = 0x16AD0A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
	},
-----------down-----------
	crouched = {
	},
-----------down forward-----------
	crouched = {
	},
-----------forward-----------
	forward = {
			{ animation = 0x16AD26, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]}},
	},
-----------forward HP-----------
	["Special f_HP"] = {
		startup = {
			{ animation = 0x1696FA, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["1"],
			character_specific.claw.boxes.vulnerability.middle["1"],
			character_specific.claw.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x169712, duration = 5, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 5, y = 7},{name = "", x = 10, y = 13,},{name = "", x = 15, y = 18,}}},
		},
		active = {
			{ animation = 0x16972A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 20, y = 22},{name = "", x = 25, y = 25,},{name = "", x = 30, y = 27,},{name = "", x = 35, y = 28,}}},
		},
		recover = {
			{ animation = 0x169742, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 40, y = 28},{name = "", x = 45, y = 27,},{name = "", x = 50, y = 25,}}},
			{ animation = 0x16975A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 55, y = 22},{name = "", x = 60, y = 18,},{name = "", x = 65, y = 13,}}},
			{ animation = 0x169772, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 70, y = 7}}},
			{ animation = 0x16978A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 70, y = 0},{name = "", x = 70, y = 0,}}},
			{ animation = 0x1697A2, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 75, y = 7},{name = "", x = 80, y = 13,},{name = "", x = 85, y = 18,},{name = "", x = 90, y = 22,}}},
			{ animation = 0x1697BA, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 95, y = 25},{name = "", x = 100, y = 27,},{name = "", x = 105, y = 28,}}},
			{ animation = 0x1697D2, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 110, y = 28},{name = "", x = 115, y = 27,},{name = "", x = 120, y = 25,}}},
			{ animation = 0x1697EA, duration = 1, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 125, y = 22}}},
			{ animation = 0x169802, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 125, y = 0},{name = "", x = 125, y = 0,}}},
			{ animation = 0x16981A, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 130, y = 7},{name = "", x = 135, y = 13,},{name = "", x = 140, y = 18,},{name = "", x = 145, y = 22,}}},
			{ animation = 0x169832, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 150, y = 25},{name = "", x = 155, y = 27,},{name = "", x = 160, y = 28,}}},
			{ animation = 0x16984A, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"]},
			coord = {{name = "", x = 165, y = 28},{name = "", x = 170, y = 27,},{name = "", x = 175, y = 25,}}},
			{ animation = 0x169862, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["2"],
			character_specific.claw.boxes.vulnerability.middle["2"],
			character_specific.claw.boxes.vulnerability.bottom["2"],
			character_specific.claw.boxes.attack["25"]},
			coord = {{name = "", x = 180, y = 22},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,}}},
			{ animation = 0x16987A, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 180, y = 0},{name = "", x = 180, y = 0,}}},
			{ animation = 0x169892, duration = 2, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 180, y = 0},{name = "", x = 180, y = 0,}}},
			{ animation = 0x1698AA, duration = 8, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["14"],
			character_specific.claw.boxes.vulnerability.middle["8"],
			character_specific.claw.boxes.vulnerability.bottom["8"],
			character_specific.claw.boxes.attack["20"]},
			coord = {{name = "", x = 180, y = 0},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,}}},
			{ animation = 0x1698C2, duration = 4, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 180, y = 0},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,},{name = "", x = 180, y = 0,}}},
			{ animation = 0x1698DA, duration = 3, hitboxes = {
			character_specific.claw.boxes.push["2"],
			character_specific.claw.boxes.vulnerability.top["9"],
			character_specific.claw.boxes.vulnerability.middle["7"],
			character_specific.claw.boxes.vulnerability.bottom["7"]},
			coord = {{name = "", x = 180, y = 0}
----------- Recover error -----------
}},
		},
	},
}