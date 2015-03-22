MLC_AnimationData = {};

		-- row, start, 	animation_amount,  	size, 	delay_(ms), pause(ms)
TEST = {	1,	1,	8,	128,	100,	0}
--TEST2 = {	7,	1,	14,	14,	110,  100,    5000}
--TEST2 = {	5,	1,	27,	27,	110,	50,    5000}


MLC_AnimationData["Terran"] = {
	["SizeModifier"] = 150,
	["Width"] 	= 4096,
	["Height"] 	= 2048,
	["ImageHeight"] = 256,
	["BorderColor"]		= "000000",
	["BackdropColor"]	= "999999",
	["TextColor"]		= "000000",
	["Walk"] = {
		{	5,	1,	15,	256,	60,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	1,	1,	14,	256,	60,		500},  --	happy1	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	14,	256,	60,		700},  --	happy1	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	14,	256,	60,		500},  --	happy2	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	14,	256,	60,		700},  --	happy2	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	15,	256,	80,		3000},  --	idle1	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	15,	256,	80,		4500},  --	idle1	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	13,	256,	100,	0},  --	idle2	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	13,	256,	100,	0},  --	idle2	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	1,	13,	256,	100,	3000},  --	sad	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	1,	13,	256,	100,	5000},  --	sad	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["AppleJack"] = {
	["SizeModifier"] = 125,
	["Width"] 	= 2048,
	["Height"] 	= 512,
	["ImageHeight"] = 125,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	3,	1,	16,	125,	60,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Gallop"] = {
		{	2,	1,	12,	125,	60,	0},  --	gallop	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},	
	["Idle"] = {
		{	1,	1,	11,	125,	75,	5000},  --	buck	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	11,	125,	75,	7500},  --	buck	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	12,	5,	125,	125,	5000},  --	front hooves	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	12,	5,	125,	125,	6500},  --	front hooves	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	125,	125,	5000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	125,	125,	5000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	125,	125,	5000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	125,	125,	8000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	125,	125,	8000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	125,	125,	8000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["Filly_Fluttershy"] = {
	["SizeModifier"] = 125,
	["Width"] 	= 2048,
	["Height"] 	= 512,
	["ImageHeight"] = 125,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	1,	1,	16,	125,	60,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	16,	125,	60,	0},  --	hop	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	16,	125,	60,	0},  --	fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	4,	1,	2,	125,	500,	4000},  --	sleep	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	2,	125,	500,	6000},  --	sleep	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	4,	5,	125,	100,	3000},  --	sit		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	4,	5,	125,	100,	4500},  --	sit		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	4,	5,	125,	100,	6000},  --	sit		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	10,	5,	125,	100,	3000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	10,	5,	125,	100,	4500},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	10,	5,	125,	100,	6000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	10,	5,	125,	100,	8000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}


MLC_AnimationData["Rarity"] = {
	["SizeModifier"] = 170,
	["Width"] 	= 4096,
	["Height"] 	= 1024,
	["ImageHeight"] = 200,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	1,	1,	16,	200,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	200,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	200,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	200,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	200,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	200,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	200,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	6,	200,	110,	0},  --	fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	6,	200,	110,	0},  --	fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	6,	200,	110,	0},  --	fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	2,	1,	4,	200,	200,	0},  --	ponder	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	4,	200,	200,	0},  --	ponder	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	5,	200,	200,	4000},  --	ponder2	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	5,	200,	200,	4000},  --	ponder2	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	16,	200,	100,	4000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	16,	200,	100,	4000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	16,	200,	100,	4000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	6,	200,	110,	0},  --	fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	8,	6,	200,	110,	0},  --	horn	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	2,	200,	110,	4000},  --	couch	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["Pinkie"] = {
	["SizeModifier"] = 180,
	["Width"] 	= 8192,
	["Height"] 	= 4096,
	["ImageHeight"] = 200,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	1,	1,	12,	200,	50,	0},  --	backwalk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	14,	12,	200,	50,	0},  --	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	27,	12,	200,	50,	0},  --	bounce (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	24,	200,	50,	0},  --	flip walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	6,	200,	100, 0},  --crazy hat	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	8,	8,	200,	100, 0},  --happy walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	17,	7,	200,	100, 0},  --balloon fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	12,	11,	200,	100, 0},  --trot	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	24,	12,	200,	100, 0},  --princess	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	14,	16,	200,	50, 0},  --walk (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	9,	1,	12,	200,	50, 0},  --cannon walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	10,	18,	16,	200,	50, 0},  --another walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	13,	1,	16,	200,	50, 0},  --band walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	17,	31,	8,	200,	80, 0},  --cartwheel	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	18,	1,	32,	200,	50, 0},  --haters	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	20,	1,	20,	200,	50, 0},  --flying machine	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	2,	1,	32,	200,	50,	6000},  --	cannon	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	34,	7,	200,	100,	0},  --	laugh	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	40,	200,	100,	0},  --	cupcake (no delay)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	40,	200,	100, 5000},  --	cupcake	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	25,	10,	200,	100, 500},  --	tail tingling	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	1,	10,	200,	100, 6000},  --	idle	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	37,	3,	200,	100, 0},  --	tongue	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	7,	1,	14,	200,	150, 6000},  --	happy	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	12,	200,	80, 0},  --	chicken	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	31,	4,	200,	150, 90000},  --	look up (endless)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	31,	3,	200,	150, 90000},  --	not impressed (endless)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	9,	14,	16,	200,	80, 6000},  --	smile	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	10,	4,	2,	200,	1000, 3000},  --	not impressed (hat)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	11,	1,	11,	200,	100, 90000},  --	put on hat (endless)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	11,	18,	17,	200,	80, 0},  --	hiccup	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	11,	36,	5,	200,	80, 0},  --	laugh	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	12,	22,	19,	200,	100, 0},  --	laugh + hiccup	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	13,	18,	20,	200,	100, 0},  --	tongue dance	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	14,	6,	16,	200,	100, 0},  --	flower	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	16,	1,	25,	200,	75, 3000},  --	suspicious	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	17,	3,	27,	200,	75, 3000},  --	chuckle	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	18,	34,	4,	200,	75, 0},  --	chuckle2	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	19,	1,	40,	200,	75, 6000},  --	flower2	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	20,	22,	11,	200,	50, 0},  --dancing	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["Pinkie_Gala"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 2048,
	["Height"] 	= 1024,
	["ImageHeight"] = 126,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	1,	1,	12,	126,	50,	0},  --	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	12,	126,	50,	0},  --	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	12,	126,	50,	0},  --	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	12,	126,	50,	0},  --	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	12,	126,	50,	0},  --	bounce (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	12,	126,	50,	0},  --	bounce (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	126,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	126,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	126,	50,	0},  --	walk (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	126,	50,	0},  --	walk (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	3,	1,	16,	126,	120,	5000},  --	Idle	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	16,	126,	110,	5500},  --	Idle	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	12,	126,	50,	0},  	--	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	12,	126,	60,	0},  	--	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	12,	126,	50,	0},  	--	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	12,	126,	60,	0},  	--	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	12,	126,	50,	0},  	--	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	12,	126,	50,	0},  	--	bounce (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	12,	126,	60,	0},  	--	bounce (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	12,	126,	50,	0},  	--	bounce (eyes closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["Lyra"] = {
	["SizeModifier"] = 150,
	["Width"] 	= 4096,
	["Height"] 	= 1024,
	["ImageHeight"] = 170,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	1,	1,	11,	170,	75,	0},  --	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	11,	170,	75,	0},  --	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	11,	170,	75,	0},  --	bounce	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	170,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	170,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	170,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	170,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	170,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	170,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	16,	170,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	2,	1,	13,	170,	100,	3500},  --	bench (sit)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	13,	170,	100,	4000},  --	bench (sit)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	13,	170,	100,	4500},  --	bench (sit)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	13,	170,	100,	5000},  --	bench (sit)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	13,	170,	100,	5500},  --	bench (sit)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	11,	170,	100,	3500},  --	bench (sleep)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	11,	170,	100,	4000},  --	bench (sleep)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	13,	170,	100,	3500},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	13,	170,	100,	4000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	13,	170,	100,	4500},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["Crabby"] = {
	["SizeModifier"] = 200,
	["Width"] 	= 16384,
	["Height"] 	= 512,
	["ImageHeight"] = 380,
	["BorderColor"]		= "ffffca",
	["BackdropColor"]	= "ffffca",
	["TextColor"]		= "000000",
	["Walk"] = {
		{	1,	1,	30,	380,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	1,	1,	30,	380,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["Vinyl_NoFlash"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 2048,
	["Height"] 	= 1024,
	["ImageHeight"] = 128,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	4,	1,	16,	128,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	5,	1,	10,	128,	125,    0},  --	standstomp		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		
		{	6,	1,	8,	128,	125,    0},  --	idle			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		
		{	7,	1,	8,	128,	125,    0},  --	stomp (front)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["Vinyl"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 2048,
	["Height"] 	= 1024,
	["ImageHeight"] = 128,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	4,	1,	16,	128,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	5,	1,	10,	128,	125,    0},  --	standstomp		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	10,	128,	125,    0},  --	standstomp		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	10,	128,	125,    0},  --	standstomp		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		
		{	6,	1,	8,	128,	125,    0},  --	idle			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	1,	8,	128,	125,    0},  --	idle			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	1,	8,	128,	125,    0},  --	idle			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		
		{	7,	1,	8,	128,	125,    0},  --	stomp (front)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	7,	1,	8,	128,	125,    0},  --	stomp (front)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	7,	1,	8,	128,	125,    0},  --	stomp (front)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	8,	128,	125,    0},  --	white decks		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		
		{	1,	1,	8,	128,	100,	0},  --	decks (1)		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	8,	128,	100,	0},  --	decks (2)		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	8,	128,	100,	0},  --	decks (3)		-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["ToeJam"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 1024,
	["Height"] 	= 512,
	["ImageHeight"] = 64,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	4,	1,	7,	64,	150,    0},  --Walk		-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	1,	1,	11,	64,	250,    5000},  --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	11,	64,	250,    6000},  --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	11,	64,	250,    7000},  --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	6,	64,	250,    5000},  --Fix Hat	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	6,	64,	250,    6000},  --Fix Hat	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	6,	64,	250,    7000},  --Fix Hat	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	14,	64,	250,    5000},  --Polish	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	14,	64,	250,    6000},  --Polish	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	14,	64,	250,    7000},  --Polish	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	10,	64,	250,    0}, 	--Dance		-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
}

MLC_AnimationData["Derpy"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 4096,
	["Height"] 	= 1024,
	["ImageHeight"] = 128,
	["BorderColor"]		= "FFEC17",
	["BackdropColor"]	= "B3B0EB",
	["TextColor"]		= "FFEC17",
	["Walk"] = {
		{	1,	1,	16,	110,	50,    0},	--Fly			-- row, start, animation_amount, size, delay_(ms), pause(ms)	
		{	1,	1,	16,	110,	50,    0},	--Fly			-- row, start, animation_amount, size, delay_(ms), pause(ms)	
		{	1,	1,	16,	110,	50,    0},	--Fly			-- row, start, animation_amount, size, delay_(ms), pause(ms)	
		{	1,	1,	16,	110,	50,    0},	--Fly			-- row, start, animation_amount, size, delay_(ms), pause(ms)	
		{	2,	1,	16,	110,	50,    0},	--Fly(UD)		-- row, start, animation_amount, size, delay_(ms), pause(ms)	
		{	2,	1,	16,	110,	50,    0},	--Fly(UD)		-- row, start, animation_amount, size, delay_(ms), pause(ms)	
		{	3,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	110,	50,    0},	--Fly Mail		-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	5,	1,	27,	110,	50, 5000},  --Muffin		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	1,	16,	110,	50,    0},  --Sleep			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	1,	16,	110,	50,    0},  --Sleep			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	7,	1,	14,	110,  100, 5000},  --Stand			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	7,	1,	14,	110,  100, 5000},  --Stand			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	7,	1,	14,	110,  100, 5000},  --Stand			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	7,	1,	14,	110,  100, 5000},  --Stand			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	7,	1,	14,	110,  100, 5000},  --Stand			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	16,	110,	50,    0},  --Hover			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	8,	1,	16,	110,	50,    0},  --Hover			-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
};

MLC_AnimationData["Luna"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 2048,
	["Height"] 	= 1024,
	["ImageHeight"] = 128,
	["BorderColor"]		= "5D006E",
	["BackdropColor"]	= "3650BA",
	["TextColor"]		= "8704B3",
	["Walk"] = {
		{	1,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	16,	110,	50,    0},	--Walk Wing		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	16,	110,	50,    0},	--Walk Wing		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	110,	50,    0},	--Fly			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	110,	50,    0},	--Fly			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	5,	1,	13,	110,	50,    0},	--Bounce		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		
	},
	["Idle"] = {
		{	3,	1,	5,	110,	150, 7000}, --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	5,	110,	150, 7000}, --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	5,	110,	150, 7000}, --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	5,	110,	150, 7000}, --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	5,	110,	150, 7000}, --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	5,	110,	150, 7000}, --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	5,	110,	150, 7000}, --Stand		-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	6,	1,	2,	110,	400, 800},  --Sleep		-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
};

MLC_AnimationData["Twilight"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 2048,
	["Height"] 	= 512,
	["ImageHeight"] = 128,
	["BorderColor"]		= "DE0BC2",
	["BackdropColor"]	= "B3628D",
	["TextColor"]		= "5D0FBD",
	["Walk"] = {
		{	1,	1,	16,	110,	50,    0},	--Walk			-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{	2,	1,	16,	110,	100, 7000},--Stand(long)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	16,	110,	100, 7000},--Stand(long)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	7,	10,	110,	100, 5000},--Stand(turn)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	7,	10,	110,	100, 5000},--Stand(turn)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	7,	10,	110,	100, 5000},--Stand(turn)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	7,	10,	110,	100, 5000},--Stand(turn)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	 7,	110,	100, 4000},--Stand(blink)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	 7,	110,	100, 4000},--Stand(blink)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	 7,	110,	100, 4000},--Stand(blink)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	14,	140,	100, 3000},--Read			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	4,	1,	16,	110,	50,     0},--Magic			-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Fight"] = {
		{	4,	1,	16,	110,	50,    0},	--Magic			-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
};

MLC_AnimationData["Fluttershy"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 4096,
	["Height"] 	= 1024,
	["ImageHeight"] = 128,
	["BorderColor"]		= "E7FF47",
	["BackdropColor"]	= "F792E0",
	["TextColor"]		= "ffffff",
	["Walk"] = {
		{	1,	1,	16,	128,	50, 0},	--Standard Walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	128,	50, 0},	--Standard Walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		
		{	2,	1,	16,	128,	50, 0},	--Standard Fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {		
		{	3, 10,  5, 128,  200, 4000},--Shy (Animated)		-- row, start, animation_amount, size, delay_(ms), pause(ms)
	
		{ 	3,  1,  18, 128, 100, 1000},--Stand (Full Animate)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	3,  1,  18, 128, 100, 1000},--Stand (Full Animate)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	3,  1,  18, 128, 100, 1000},--Stand (Full Animate)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	
		{ 	3, 15,  1, 128, 1000, 0},	--Stand (Eyes Closed)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	
		{ 	3,  1,  1, 128, 9999, 0},	--Stand (Still)			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		
		{ 	5, 1,  16, 128, 50, 0},		--Float					-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	5, 1,  16, 128, 50, 0},		--Float					-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	5, 1,  16, 128, 50, 0},		--Float					-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	5, 1,  16, 128, 50, 0},		--Float					-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Fight"] = {
		{ 	4,	1,	9,	128,  100, 0},	--Stare					-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
};

MLC_AnimationData["RainbowDash"] = {
	["SizeModifier"] = 100,
	["Width"] 	= 2048,
	["Height"] 	= 1024,
	["ImageHeight"] = 128,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "8CC8E6",
	["TextColor"]		= "F7EA2A",
	["Walk"] = {
		{	1,	1,	16,	106,	50, 0},	--Standard Walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	1,	1,	16,	106,	50, 0},	--Standard Walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	16,	106,	50, 0},	--Standard Fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	2,	1,	16,	106,	50, 0},	--Standard Fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	5,  1,  16, 106, 	50, 0},	--Walk (Wings)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Idle"] = {
		{ 	3,  1,  1,  106,  1000, 0},	--Stand (Still)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	3,  1,  1,  106,  1000, 0},	--Stand (Still)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	3,  1,  1,  106,  1000, 0},	--Stand (Still)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	3,  1,  1,  106,  1000, 0},	--Stand (Still)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	3,  1,  1,  106,  1000, 0},	--Stand (Still)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	4,  1,  4,  106,   500, 0},	--Sleep (Cloud)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	6,  1,  15, 106,   100, 0},	--Float			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	6,  1,  15, 106,   100, 0},	--Float			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	6,  1,  15, 106,   100, 0},	--Float			-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{ 	6,  1,  15, 106,   100, 0},	--Float			-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Fight"] = {	--no fight animations
	},
	["Flyfast"] = {	--special flyfast animation
		{ 	7,	1,	16,	106,  50, 0},		--Fly (Fast)	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},	
};

--Irreama's Additions
MLC_AnimationData["SunsetShimmer"] = {
	["SizeModifier"] = 128,
	["Width"] 	= 2048,
	["Height"] 	= 256,
	["ImageHeight"] = 128,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Idle"] = {
		{	1,	1,	16,	128,	75,		5000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Walk"] = {
		{	2,	1,	16,	128,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
};

MLC_AnimationData["PrincessLuna"] = {
	["SizeModifier"] = 128,
	["Width"] 	= 4096,
	["Height"] 	= 512,
	["ImageHeight"] = 128,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Idle"] = {
		{	1,	1,	16,	128,	100, 0},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Walk"] = {
		{	2,	1,	32,	128,	50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	32,	128,	50,	0},  --	fly	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
};

--Octavia (Thank you Lanciufer for the sprite)
MLC_AnimationData["Octavia"] = {
	["SizeModifier"] = 125,
	["Width"] 	= 2048,
	["Height"] 	= 512,
	["ImageHeight"] = 125,
	["BorderColor"]		= "ffffff",
	["BackdropColor"]	= "ffffff",
	["TextColor"]		= "ffffff",
	["Idle"] = {
		{	2,	1,	13,	125, 100, 5000},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
		{	3,	1,	8,	125, 125, 0},  --	stand	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
	["Walk"] = {
		{	1,	1,	16,	125, 50,	0},  --	walk	-- row, start, animation_amount, size, delay_(ms), pause(ms)
	},
};