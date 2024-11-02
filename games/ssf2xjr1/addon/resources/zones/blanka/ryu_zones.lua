zones["blanka"]["ryu"] = {
	{
		{min = 186, max = 212,color = "red", msg = "Blanka can TOD on a read"}, -- J.HK 36 seems to be the correct timing to get the TOD
		--{min = 213, max = 274,color = "yellow", msg = "Blanka can do pre-emptive j.HK to punish Hadouken"},
		{min = 213, max = 223,color = "yellow", msg = "Blanka can do pre-emptive j.HK to punish Hadouken"},
		{min = 224, max = 274,color = "orange", msg = "Blanka can do pre-emptive j.HK to punish Hadouken / j.LP is safe against DP LP/MP"},
		{min = 275, max = 291,color = "blue", msg = "Blanka can't find a good jump-in against Hadouken"},
	}
}

-- > 224 : j.lp safe against Shoryuken LP and MP. Voir pour le shoryu HP qui peut battre le j.lp si fait très tôt