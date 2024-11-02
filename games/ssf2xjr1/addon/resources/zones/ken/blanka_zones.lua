zones["ken"]["blanka"] = {
	{
		{min = 186, max = 212, color = "red", msg = "Blanka can TOD on a read"}, -- J.HK 36 seems to be the correct timing to get the TOD (-20-10)
		{min = 213, max = 227, color = "yellow", msg = "Pre-emptive j.HK to punish Hadouken"},
		{min = 228, max = 274, color = "orange", msg = "Pre-emptive j.HK to punish Hadouken + j.LP safe against DP LP/MP"}, -- Timing attack = 27+ (-30-15)
		--{min = 275, max = 291,color = "blue", msg = "Blanka can't find a good jump-in against Hadouken"},
	},
	{
		{min = 153, max = 165, color = "red", msg = "j.MK (st.LK) beats Hadouken + out of reach of Ken st.HK + slide against cr.mp"}, -- Sauter entre -32 et 11 pour battre le hado. st.lk appuyer entre 1 et 10 + possible de punir le st.hk
		{min = 166, max = 188,color = "orange", msg = "Slide against cr.mp + can punish st.HK"}, -- de -8 strict à -6 à -3 . -- Si fait entre 175 et 188 -> go to la zone TOD
		{min = 190, max = 205,color = "yellow", msg = "Cr.Hp can trade on reaction against Hadouken"}, -- de 16 à 19 frames de réaction
	}
}