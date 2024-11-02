-- Copy in the correct fields what's written in guile_[...]_boxes.lua
character_specific.guile.boxes = {
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
character_specific.guile.move_details = {
-----------neutral-----------
	neutral = {
			{ animation = 0x12B228, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B240, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B258, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B270, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B288, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
	},
-----------forward-----------
	forward = {
			{ animation = 0x12B2A4, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B2BC, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B2D4, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B2EC, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B304, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
	},
-----------back-----------
	backward = {
			{ animation = 0x12B320, duration = 5, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B338, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B350, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B368, duration = 7, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B380, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["2"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
	},
-----------down-----------
	crouched = {
			{ animation = 0x12B9C4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x12B9DC, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x12B9F4, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
	},
-----------neutral-----------
	neutral = {
			{ animation = 0x12BA10, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x12BA28, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["3"],
			character_specific.guile.boxes.vulnerability.top["12"],
			character_specific.guile.boxes.vulnerability.middle["11"],
			character_specific.guile.boxes.vulnerability.bottom["10"]}},
			{ animation = 0x12BA40, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["1"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
	},
-----------back HK-----------
	["b_HK"] = {
		startup = {
			{ animation = 0x128E48, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["41"],
			character_specific.guile.boxes.vulnerability.middle["1"],
			character_specific.guile.boxes.vulnerability.bottom["1"]}},
			{ animation = 0x128E60, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["41"],
			character_specific.guile.boxes.vulnerability.middle["18"],
			character_specific.guile.boxes.vulnerability.bottom["13"]}},
			{ animation = 0x128E78, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["41"],
			character_specific.guile.boxes.vulnerability.middle["6"],
			character_specific.guile.boxes.vulnerability.bottom["5"]}},
			{ animation = 0x128E90, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["41"],
			character_specific.guile.boxes.vulnerability.middle["19"]}},
			{ animation = 0x128EA8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["26"],
			character_specific.guile.boxes.vulnerability.middle["19"]}},
		},
		active = {
			{ animation = 0x128EC0, duration = 6, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["26"],
			character_specific.guile.boxes.vulnerability.middle["19"],
			character_specific.guile.boxes.vulnerability.bottom["24"],
			character_specific.guile.boxes.attack["12"]}},
		},
		recover = {
			{ animation = 0x128ED8, duration = 4, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["26"],
			character_specific.guile.boxes.vulnerability.middle["19"],
			character_specific.guile.boxes.vulnerability.bottom["23"]}},
			{ animation = 0x128EF0, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["26"],
			character_specific.guile.boxes.vulnerability.middle["19"]}},
			{ animation = 0x128F08, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["41"],
			character_specific.guile.boxes.vulnerability.middle["8"],
			character_specific.guile.boxes.vulnerability.bottom["7"]}},
			{ animation = 0x128F20, duration = 3, hitboxes = {
			character_specific.guile.boxes.push["2"],
			character_specific.guile.boxes.vulnerability.top["41"],
			character_specific.guile.boxes.vulnerability.middle["9"],
			character_specific.guile.boxes.vulnerability.bottom["8"]}},
			{ animation = 0x128F38, duration = 2, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["11"],
			character_specific.guile.boxes.vulnerability.middle["10"],
			character_specific.guile.boxes.vulnerability.bottom["9"]}},
			{ animation = 0x128F50, duration = 1, hitboxes = {
			character_specific.guile.boxes.push["1"],
			character_specific.guile.boxes.vulnerability.top["11"],
			character_specific.guile.boxes.vulnerability.middle["10"],
			character_specific.guile.boxes.vulnerability.bottom["9"]}},
		},
	},
}