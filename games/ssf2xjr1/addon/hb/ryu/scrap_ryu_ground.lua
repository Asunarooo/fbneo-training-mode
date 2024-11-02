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

	 } 
} 

 character_specific.ryu.move_details = {
------------------------Neutral-------------------------------
	neutral = {
			{ animation = 0x1121BA, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
	},
------------------------forward HP -------------------------------
	["f_HP"] = {
		startup = {
			{ animation = 0x111382, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"]}},
		},
	},
------------------------Neutral-------------------------------
	neutral = {
			{ animation = 0x11139A, duration = 6, hitboxes = {
			character_specific.ryu.boxes.push["1"]}},
			{ animation = 0x1113B2, duration = 1, hitboxes = {
			character_specific.ryu.boxes.push["1"]}},
			{ animation = 0x1113CA, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"]}},
			{ animation = 0x1113E2, duration = 36, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["35"],
			character_specific.ryu.boxes.vulnerability.middle["26"],
			character_specific.ryu.boxes.vulnerability.bottom["22"]}},
			{ animation = 0x1113FA, duration = 20, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["35"],
			character_specific.ryu.boxes.vulnerability.middle["26"],
			character_specific.ryu.boxes.vulnerability.bottom["22"]}},
----------- Recover error----------------------
			{ animation = 0x1121A2, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["1"],
			character_specific.ryu.boxes.vulnerability.middle["1"],
			character_specific.ryu.boxes.vulnerability.bottom["1"]}},
	},
------------------------forward HP -------------------------------
	["f_HP"] = {
		startup = {
			{ animation = 0x111E26, duration = 8, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["52"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"]}},
		},
	},
------------------------Neutral-------------------------------
	neutral = {
			{ animation = 0x111E3E, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"]}},
			{ animation = 0x111E56, duration = 1, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"],
			character_specific.ryu.boxes.attack["58"]}},
			{ animation = 0x111E6E, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"],
			character_specific.ryu.boxes.attack["59"]}},
			{ animation = 0x111E86, duration = 1, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"]}},
			{ animation = 0x111E9E, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"]}},
			{ animation = 0x111EB6, duration = 2, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"]}},
			{ animation = 0x111ECE, duration = 1, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"]}},
			{ animation = 0x111EE6, duration = 3, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"]}},
			{ animation = 0x111EFE, duration = 4, hitboxes = {
			character_specific.ryu.boxes.push["1"],
			character_specific.ryu.boxes.vulnerability.top["53"],
			character_specific.ryu.boxes.vulnerability.middle["10"],
			character_specific.ryu.boxes.vulnerability.bottom["33"]}},
----------- Recover error----------------------
----------- Recover error----------------------
----------- Recover error----------------------
----------- Recover error----------------------
----------- Recover error----------------------
----------- Recover error----------------------
----------- Recover error----------------------
