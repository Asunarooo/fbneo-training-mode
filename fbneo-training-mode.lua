-- memory macros
wb = memory.writebyte
ww = memory.writeword
rb = memory.readbyte
rw = memory.readword
rws = memory.readwordsigned
rdw = memory.readdword

require "gd"

FBNEO_TRAINING_MODE_VERSION = "v0.21.09"

local fc = emu.framecount()

local games = {
	[""] = {}, -- null case
	aliencha = {"aliencha", iconfile = "icons-capcom-32.png"},
	aof = {"aof", iconfile = "icons-neogeo-32.png"},
	aof2 = {"aof2", iconfile = "icons-neogeo-32.png"},
	aof3 = {"aof3", iconfile = "icons-neogeo-32.png"},
	asurabld = {"asurabld", iconfile = "icons-asurabus-32.png"},
	asurabus = {"asurabus", iconfile = "icons-asurabus-32.png"},
	avengrgs = {"avengrgs", iconfile = "icons-banpresto-32.png"},
	breakrev = {"breakrev", iconfile = "icons-neogeo-32.png"},
	cyberbots = {"cybots", hitboxes = "cps2-hitboxes", iconfile = "icons-jojos-32.png"},
	dankuga = {"dankuga", iconfile= "icons-capcom-32.png"},
	daraku = {"daraku", hitboxes = "daraku-hitboxes", iconfile= "icons-psikyo-32.png"},
	dinorex = {"dinorex", iconfile = "icons-taito-32.png"},
	dbz2 = {"dbz2", iconfile = "icons-banpresto-32.png"},
	doubledr = {"doubledr", iconfile = "icons-neogeo-32.png"},
	fatfury1 = {"fatfury1", iconfile = "icons-neogeo-32.png"},
	fatfury3 = {"fatfury3", iconfile = "icons-neogeo-32.png"},
	fatfursp = {"fatfursp", iconfile = "icons-neogeo-32.png"},
	galaxyfg = {"galaxyfg", iconfile = "icons-neogeo-32.png"},
	garou = {"garou", iconfile = "icons-neogeo-32.png"},
	gundamex = {"gundamex", iconfile = "icons-banpresto-32.png"},
	gowcaizr = {"gowcaizr", iconfile = "icons-neogeo-32.png"},
	hsf2 = {"hsf2", hitboxes = "sf2-hitboxes", iconfile = "icons-capcom-32.png"},
	jchan2 = {"jchan2", hitboxes = "jchan2-hitboxes", iconfile = "icons-kaneko-32.png"},
	jojos = {"jojoba", "jojoban", "jojobanr1", hitboxes = "hftf-hitboxes", iconfile = "icons-jojos-32.png"},
	jojov = {"jojo", "jojon", hitboxes = "jojo-hitboxes", iconfile = "icons-jojos-32.png"},
	kabukikl = {"kabukikl", iconfile = "icons-neogeo-32.png"},
	karnovr = {"karnovr", hitboxes = "karnovr-hitboxes", iconfile = "icons-neogeo-32.png"},
	kizuna = {"kizuna", iconfile = "icons-neogeo-32.png"},
	kof94 = {"kof94", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof95 = {"kof95", "kof95sp", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof96 = {"kof96", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof97 = {"kof97", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof98 = {"kof98", "kof98cb", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof99 = {"kof99", "kof99ae", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof2000 = {"kof2000", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof2001 = {"kof2001", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof2002 = {"kof2002", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kof2003 = {"kof2003", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	kf2k5uni = {"kf2k5uni", hitboxes = "kof-hitboxes", iconfile = "icons-neogeo-32.png"},
	lb2 = {"lastbld2", hitboxes = "cps3-hitboxes", iconfile = "icons-neogeo-32.png"},
	matrim = {"matrim", iconfile = "icons-neogeo-32.png"},
	martmast = {"martmast", iconfile = "icons-martmast-32.png"},
	msh = {"msh", hitboxes = "marvel-hitboxes", iconfile = "icons-capcom-32.png"},
	mshvsf = {"mshvsf", hitboxes = "marvel-hitboxes", iconfile = "icons-capcom-32.png"},
	mvc = {"mvc", "mvsc", hitboxes = "marvel-hitboxes", iconfile = "icons-capcom-32.png"},
	mwarr = {"mwarr", iconfile = "icons-mwarr-32.png"},
	ninjamas = {"ninjamas", iconfile = "icons-neogeo-32.png"},
	rabbit = {"rabbit", iconfile = "icons-banpresto-32.png"},
	ragnagrd = {"ragnagrd", iconfile = "icons-neogeo-32.png"},
	rbff1 = {"rbff1", iconfile = "icons-neogeo-32.png"},
	rbff2 = {"rbff2", "rbff2h", iconfile = "icons-neogeo-32.png"},
	rbffspec = {"rbffspec", iconfile = "icons-neogeo-32.png"},
	redearth = {"redearth", hitboxes = "cps3-hitboxes", iconfile = "icons-capcom-32.png"},
	ringdest = {"ringdest", iconfile = "icons-ringdest-32.png"},
	rotd = {"rotd", hitboxes = "rotd-hitboxes", iconfile = "icons-neogeo-32.png"},
	samsho = {"samsho", iconfile = "icons-neogeo-32.png"},
	samsho2 = {"samsho2", iconfile = "icons-neogeo-32.png"},
	samsho3 = {"samsho3", iconfile = "icons-neogeo-32.png"},
	samsho4 = {"samsho4", iconfile = "icons-neogeo-32.png"},
	samsho5 = {"samsho5", iconfile = "icons-neogeo-32.png"},
	samsho5sp = {"samsh5sp", iconfile = "icons-neogeo-32.png"},
	slammast = {"slammast", iconfile = "icons-slammast-32.png"},
	sf = {"sf", iconfile = "icons-capcom-32.png"},
	sf2 = {"sf2", hitboxes = "sf2-hitboxes", iconfile = "icons-capcom-32.png"},
	sf2ce = {"sf2ce", "sf2hf", "sf2rb", hitboxes = "sf2-hitboxes", iconfile = "icons-capcom-32.png"},
	sfa = {"sfa", hitboxes = "cps2-hitboxes", iconfile = "icons-capcom-32.png"},
	sfa2 = {"sfa2", "sfa2u", hitboxes = "cps2-hitboxes", iconfile = "icons-capcom-32.png"},
	sfa3 = {"sfa3", hitboxes = "cps2-hitboxes", iconfile = "icons-capcom-32.png"},
	sgemf = {"sgemf", hitboxes = "cps2-hitboxes", iconfile = "icons-capcom-32.png"},
	ssf2xjr1 = {"ssf2xjr1", hitboxes = "sf2-hitboxes", iconfile = "icons-capcom-32.png"},
	tkdensho = {"tkdensho", iconfile = "icons-banpresto-32.png"},
	vhuntjr2 = {"nwarr", "vhuntjr2", hitboxes = "cps2-hitboxes", iconfile = "icons-capcom-32.png"},
	wakuwak7 = {"wakuwak7", "wakuwak7bh", iconfile = "icons-neogeo-32.png"},
	whp = {"whp", iconfile = "icons-neogeo-32.png"},
	xmvsf = {"xmvsf", hitboxes = "marvel-hitboxes", iconfile = "icons-capcom-32.png"},
	xmcota = {"xmcota", "xmcotabh", hitboxes = "marvel-hitboxes", iconfile = "icons-capcom-32.png"},
}

local usage = function()
		print ("Beta for fbneo-training-script ("..FBNEO_TRAINING_MODE_VERSION..")")
		print "Replay with 1 coin press"
		print "Record with 2 coin presses"
		print "Swap inputs with 3 coin presses"
		print "Open the menu with 4 coin presses or hold the button to open it"
		print ""
		print "Move around the menu with left/right"
		print "Select a function with P1 Button 1"
		print "Read function info with P1 Button 2"
		print "Return to the previous menu with P1 Button 3"
end

-- locals
local defaultconfig = {
	p1 = {
		-- Health
		refillhealthspeed = 10,
		instantrefillhealth = true,
		refillhealthenabled = true,
		refillmeterspeed = 10,
		instantrefillmeter = false,
		refillmeterenabled = true,
	},
	p2 = {
		-- Health
		refillhealthspeed = 10,
		instantrefillhealth = true,
		refillhealthenabled = true,
		refillmeterspeed = 10,
		instantrefillmeter = false,
		refillmeterenabled = true,
	},

	-- Combo Gui
	hud = {
		p1healthx = 10,
		p1healthy = 10,
		p1healthtextcolour = 0xFFFFFFFF,
		p1healthenabled = false,
		p2healthx = 180,
		p2healthy = 10,
		p2healthtextcolour = 0xFFFFFFFF,
		p2healthenabled = false,
		p1meterx = 10,
		p1metery = 100,
		p1metertextcolour = 0xFFFFFFFF,
		p1meterenabled = false,
		p2meterx = 180,
		p2metery = 100,
		p2metertextcolour = 0xFFFFFFFF,
		p2meterenabled = false,
		combotextx = 180,
		combotexty = 42,
		combotextcolour = 0xFFFF00FF,
		combotextcolour2 = 0x00FF00FF,
		damagetextcolour = 0x00FF00FF,
		totaltextcolour = 0x00FF00FF,
		comboenabled = false,
	},

	-- Interactive Gui

	interactivegui = {
		bg = 0xF0F0F0FF,
		ol = 0x000000FF,
		barcolour = "yellow",
		boxxd = 8, -- divisor
		boxxm = 7, -- multiplier
		boxyd = 10, -- divisor
		boxym = 9, -- multiplier
		selectioncolour = 0xFF0000FF,
	},

	-- Input Settings
	inputs = {
		simpleinputenabled = true,
		iconsize = 10,
		coinleniency = 10,
		state = {true, true},
		framenumbersenabled = false,
		scrollinginputxoffset = {},
		scrollinginputyoffset = {},	
	},

	recording = {
		skiptostart = false,
		skiptofinish = false,
	},

	hitbox = {
		enabled = true,
	},
}

local config = defaultconfig
local rom = emu.romname()
local interactiveguipages = {}
local configpath = "games/other/"..rom..".lua"
guiinputs = {
	P1 = {previousinputs={}, coinframestart = 0, coinpresscount = 0, leftframecount = 0, rightframecount = 0, downframecount = 0, upframecount = 0,},
	P2 = {previousinputs={}},
}

do -- file checking logic + global variables/tables
function fexists(s)
	local fs = io.open(s,"r")
	local res = fs~=nil
	if (res) then
		fs:close()
	end
	return res
end

----------------------------------------------
-- ROM NAME
----------------------------------------------
dirname = ""
for i, v in pairs(games) do
	for _, k in ipairs(v) do
		if (rom == k) then
			dirname = i
			configpath = "games/"..dirname.."/config.lua"
		end
	end
end

----------------------------------------------
-- CHECK IF ROM MEMORY FILE EXISTS
----------------------------------------------
nbuttons = 0 -- makes calcs easier to already have this

if fexists("games/"..dirname.."/"..dirname..".lua") then
	dofile("games/"..dirname.."/"..dirname..".lua")
	local i = 5
	while (translationtable[i]:sub(1,6)=="button") do nbuttons = nbuttons+1 i=i+1 end
else
	print("Memory addresses not found for "..rom)
end

-- check if the translationtable is valid, failsafe
do 
local player, input
for i,v in pairs(joypad.get()) do -- check every button
	player = i:sub(1,2)
	input = i:sub(4)
	if player == "P1" then -- assume the same inputs for each player
		if not translationtable[input] or not translationtable[translationtable[input]] then -- bad button found
			print "Translation table malformed"
			nbuttons = 0
			break
		end
	end
end
end

if nbuttons == 0 then
	print("No buttons found for "..rom)
	print "Attempting to make a translationtable from defaults"
	-- try to make a translation table

	-- modified from dammits input display script
	local a = {"Weak Punch", "Medium Punch", "Heavy Punch", "Weak Kick", "Medium Kick", "Heavy Kick", 
		["Weak Punch"] = 1,
		["Medium Punch"] = 2,
		["Heavy Punch"] = 3,
		["Weak Kick"] = 4,
		["Medium Kick"] = 5,
		["Heavy Kick"] = 6,
	}
	local a2 = {"Weak Punch", "Medium Punch", "Strong Punch", "Weak Kick", "Medium Kick", "Strong Kick", 
		["Weak Punch"] = 1,
		["Medium Punch"] = 2,
		["Strong Punch"] = 3,
		["Weak Kick"] = 4,
		["Medium Kick"] = 5,
		["Strong Kick"] = 6,
	}
	local c = joypad.get()
	local player, input
	nbuttons = nil
	for b=6,1,-1 do
		for _,v in ipairs({"P1 Button "..b, "P1 Button "..string.char(b+64), "P1 Fire "..b, "P1 "..a[b], "P1 "..a2[b]}) do -- some common buttons
			if c[v] ~= nil then
				nbuttons = b
				break
			end
		end
		if nbuttons then break end
	end
	-- assume all games have cardinal directions
	if nbuttons then
		print("Found ".. nbuttons .. " buttons")
		local tonum = function(val) -- works for digits and letters in the context of joypad inputs
			if (tonumber(val:sub(#val))) then
				return tonumber(val:sub(#val))
			elseif string.byte(val:sub(#val))-64 <= 6 then -- F (6 buttons)
				return string.byte(val:sub(#val))-64
			elseif a[val] then
				return a[val]
			elseif a2[val] then
				return a2[val]
			else
				return nil
			end
		end

		translationtable = {"coin", "start", "select", "up", "down", "left", "right", "button1", "button2", "button3", "button4", "button5", "button6",
			Coin = 1,
			Start = 2,
			Select = 3,
			Up = 4,
			Down = 5,
			Left = 6,
			Right = 7,
		}
		for i,v in pairs(c) do -- check buttons
			player = i:sub(1,2)
			input = i:sub(4)
			if player == "P1" and translationtable[input]==nil then -- change translation table to not work with [1]
				translationtable[input] = 7+assert(tonum(input), "Can't make a translation table") -- bind JUST attack buttons
			elseif player == "P2" then
			else -- stuff like dipswitches
				translationtable[i] = 7+nbuttons+1 -- we dont care about any of these but need to make sure they're bound to something
			end
		end
		local d = {nil, nil, "icons-taito-32.png", "icons-neogeo-32.png", nil, "icons-capcom-32.png"} -- iconfiles, 3,4,6 buttons
		games[""].iconfile = d[nbuttons]
	else
		print "Can't make a translationtable"
		nbuttons = 0
	end
end

----------------------------------------------
-- CHECK IF TABLEIO IS PRESENT AND TRYING TO OPEN CONFIG FILE
----------------------------------------------
-- TRY TO USE CONFIG.LUA, THEN A GAME'S DEFAULT CONFIG, THEN THE GENERAL DEFAULT CONFIG
----------------------------------------------
if fexists("tableio.lua") then
	dofile("tableio.lua")
	if not gamedefaultconfig then -- comes from game luas
		print "Game default config not found."
	else
		for i, v in pairs(gamedefaultconfig) do
			if not config[i] then config[i]={} end
			for j, k in pairs(v) do
				config[i][j] = k
			end
		end
	end
	if fexists(configpath) then
		config = table.load(configpath)
		if not config then
			print("Can't read config file found for "..dirname..", using default config.")
			config = defaultconfig
		else -- if the file is loaded, make sure the contents are at least superficially correct
			local check = true 
			for i, v in pairs(defaultconfig) do
				for j, k in pairs(v) do
					if not config[i] or type(k) ~= type(config[i][j]) then
						if not config[i] then
							config[i] = defaultconfig[i]
						else
							config[i][j] = defaultconfig[i][j]
						end
						print("Error reading value "..i.."."..j.." from config file, using default.")
					end
				end
			end
		end
	end
	if dirname ~= nil then
		if dirname=="" then assert(table.save(config,configpath)==nil, "Can't save config file")
		else assert(table.save(config,configpath)==nil, "Can't save config file") end
	end
else
	print("Can't read/write")
end
----------------------------------------------


----------------------------------------------
-- VARIABLE TABLES
----------------------------------------------

availablefunctions = {}

checkAvailableFunctions = function() -- SETUP availablefunctions TABLE
	-- Training mode functions
	if Run then availablefunctions.run = true end
	if playerOneInHitstun then availablefunctions.playeroneinhitstun = true end
	if playerTwoInHitstun then availablefunctions.playertwoinhitstun = true end
	if readPlayerOneHealth then availablefunctions.readplayeronehealth = true end
	if writePlayerOneHealth then availablefunctions.writeplayeronehealth = true end
	if readPlayerTwoHealth then availablefunctions.readplayertwohealth = true end
	if writePlayerTwoHealth then availablefunctions.writeplayertwohealth = true end
	if readPlayerOneMeter then availablefunctions.readplayeronemeter = true end
	if writePlayerOneMeter then availablefunctions.writeplayeronemeter = true end
	if readPlayerTwoMeter then availablefunctions.readplayertwometer = true end
	if writePlayerTwoMeter then availablefunctions.writeplayertwometer = true end
	if playerOneFacingLeft then availablefunctions.playeronefacingleft = true end
	if playerTwoFacingLeft then availablefunctions.playertwofacingleft = true end
	-- 
	-- Hitbox functions
	if hitboxesReg then availablefunctions.hitboxesreg = true end
	if hitboxesRegAfter then availablefunctions.hitboxesregafter = true end
	--
	-- Inputs functions try to get these to load a global input table to avoid multiple joypad.get()'s?
	if inputDisplayReg then availablefunctions.inputdisplayreg = true end
	if scrollingInputReg then availablefunctions.scrollinginputreg = true end
	if scrollingInputRegAfter then availablefunctions.scrollinginputregafter = true end
	--
	-- Saving/Loading
	if table.save then availablefunctions.tablesave = true end
	if table.load then availablefunctions.tableload = true end
	--
end

checkAvailableFunctions()

interactivegui = {
	enabled = false,
	page = 1, -- these should be numbers referencing interactiveguipages
	selection = 1,
	sw = emu.screenwidth(),
	sh = emu.screenheight(),
	-- CONFIGS
	bgcolour = config.interactivegui.bg,
	olcolour = config.interactivegui.ol,
	barcolour = config.interactivegui.barcolour,
	boxx = emu.screenwidth()/config.interactivegui.boxxd, -- proportions of the screen
	boxy = emu.screenheight()/config.interactivegui.boxyd,
	boxx2 = config.interactivegui.boxxm*(emu.screenwidth()/config.interactivegui.boxxd),
	boxy2 = config.interactivegui.boxym*(emu.screenheight()/config.interactivegui.boxyd),
	boxxlength = (config.interactivegui.boxxm-1)*(emu.screenwidth()/config.interactivegui.boxxd), -- commonly used calculations
	boxylength = (config.interactivegui.boxym-1)*(emu.screenheight()/config.interactivegui.boxyd),
	selectioncolour = config.interactivegui.selectioncolour,
	movehud = false,
	movehudselected = false,
	movehudselection = 1,
	replayeditor = {inputs = {}},
}

modulevars = {
	p1 = {
		inhitstun = false,
		health = 0,
		previoushealth = 0,
		meter = 0,
		constants = {},
	},
	p2 = {
		inhitstun = false,
		health = 0,
		meter = 0,
		previoushealth = 0,
		constants = {},
	},
	constants = {},
}

setAvailableConstants = function()  -- SETUP modulevars CONSTANTS TABLES
	if p1maxhealth then 
		modulevars.p1.constants.maxhealth = p1maxhealth
		modulevars.p1.maxhealth = p1maxhealth
	end
	if p2maxhealth then 
		modulevars.p2.constants.maxhealth = p2maxhealth
		modulevars.p2.maxhealth = p2maxhealth 
	end
	if p1maxmeter then 
		modulevars.p1.constants.maxmeter = p1maxmeter
		modulevars.p1.maxmeter = p1maxmeter
	end
	if p2maxmeter then 
		modulevars.p2.constants.maxmeter = p2maxmeter
		modulevars.p2.maxmeter = p2maxmeter
	end
	if translationtable then modulevars.constants.translationtable = translationtable end
end

setAvailableConstants()

combovars = {
	p1 = {
		healthdiff = 0,
		previousdamage = 0,
		combo = 0,
		previouscombo = 0,
		displaycombo = 0,
		comboDamage = 0,
		refillhealth = 0,
		refillmeter = 0,
		-- CONFIGS
		refillhealthspeed = config.p1.refillhealthspeed,
		instantrefillhealth = config.p1.instantrefillhealth,
		refillhealthenabled = config.p1.refillhealthenabled,
		refillmeterspeed = config.p1.refillmeterspeed,
		instantrefillmeter = config.p1.instantrefillmeter,
		refillmeterenabled = config.p1.refillmeterenabled,
	},
	p2 = {
		healthdiff = 0,
		previousdamage = 0,
		combo = 0,
		previouscombo = 0,
		displaycombo = 0,
		comboDamage = 0,
		refillhealth = 0,
		refillmeter = 0,
		-- CONFIGS
		refillhealthspeed = config.p2.refillhealthspeed,
		instantrefillhealth = config.p2.instantrefillhealth,
		refillhealthenabled = config.p2.refillhealthenabled,
		refillmeterspeed = config.p2.refillmeterspeed,
		instantrefillmeter = config.p2.instantrefillmeter,
		refillmeterenabled = config.p2.refillmeterenabled,
	},

}

hud = {
	-- CONFIGS
	-- p1health
	p1healthx = config.hud.p1healthx,
	p1healthy = config.hud.p1healthy,
	p1healthtextcolour = config.hud.p1healthtextcolour,
	p1healthenabled = config.hud.p1healthenabled,
	--p1meter
	p1meterx = config.hud.p1meterx,
	p1metery = config.hud.p1metery,
	p1metertextcolour = config.hud.p1metertextcolour,
	p1meterenabled = config.hud.p1meterenabled,
	--p2health
	p2healthx = config.hud.p2healthx,
	p2healthy = config.hud.p2healthy,
	p2healthtextcolour = config.hud.p2healthtextcolour,
	p2healthenabled = config.hud.p2healthenabled,
	--p2meter
	p2meterx = config.hud.p2meterx,
	p2metery = config.hud.p2metery,
	p2metertextcolour = config.hud.p2healthtextcolour,
	p2meterenabled = config.hud.p2meterenabled,
	-- combos
	combotextx = config.hud.combotextx,
	combotexty = config.hud.combotexty,
	combotextcolour = config.hud.combotextcolour,
	combotextcolour2 = config.hud.combotextcolour2,
	damagetextcolour = config.hud.damagetextcolour,
	totaltextcolour = config.hud.totaltextcolour,
	comboenabled = config.hud.comboenabled,
}

inputs = {
	properties = {
		simpleinput = {
			enabled = config.inputs.simpleinputenabled,
		},
		scrollinginput = {
			iconsize = config.inputs.iconsize,
			state = config.inputs.state,
			frames = config.inputs.framenumbersenabled,
			scrollinginputxoffset = config.inputs.scrollinginputxoffset,
			scrollinginputyoffset = config.inputs.scrollinginputyoffset,
		},
		coinleniency = config.inputs.coinleniency,
		enableinputswap = false,
		enablehold = false,
		p1hold = {},
		p2hold = {},
	},
	p1 = {},
	p2 = {},
	other = {},
	setinputs = {},
}

hitboxes = {
	enabled = config.hitbox.enabled,
}

recording = {
	{},
	{},
	{},
	{},
	{},
	recordingslot = 1,
	hitslot,
	blockslot,
	editframe,
	skiptostart = config.recording.skiptostart,
	skiptofinish = config.recording.skiptofinish,
	swapplayers = true,
	replayP1 = false,
	replayP2 = true,
}

----------------------------------------------
-- 
----------------------------------------------

----------------------------------------------
-- TRYING TO OPEN HITBOXES
----------------------------------------------
hitbox = games[dirname].hitboxes

if hitbox then
	if fexists("hitboxes/"..hitbox..".lua") then
		dofile("hitboxes/"..hitbox..".lua")
		else
		print("Hitbox file "..games[dirname].hitboxes.."not found for "..rom)
	end
else
	print("No associated hitbox file for "..rom)
end

----------------------------------------------
-- TRYING TO DISPLAY INPUTS
----------------------------------------------

if fexists("inputs/input-display.lua") then
	if fexists("inputs/input-modules.lua") then
		dofile("inputs/input-display.lua")
	else
		print("input-modules.lua not found")
	end
else
	print("input-display.lua not found")
end

if games[dirname].iconfile then
	iconfile = games[dirname].iconfile
	if fexists("inputs/scrolling-input/"..iconfile) then
		if fexists("inputs/scrolling-input-display.lua") then
			if fexists("inputs/scrolling-input/scrolling-input-code.lua") then
				dofile("inputs/scrolling-input-display.lua")
			else
				print("scrolling-input-code.lua not found")
			end
		else
			print("scrolling-input-display.lua not found")
		end
	else
		print("inputs/scrolling-input/"..iconfile.." not found")
	end
else
	print("No scrolling input image found for "..rom)
end
----------------------------------------------
-- 
----------------------------------------------

----------------------------------------------
-- CHECK IF GUIPAGES EXISTS AND OPEN
-- DEFINE FUNCTIONS USED BY GUIPAGES
----------------------------------------------
createPopUpMenu = function(BaseMenu, releasefunc, selectfunc, autofunc, Elements, startx, starty, numofelements)

	if releasefunc == nil then
		releasefunc = function() return function() CIG(interactivegui.previouspage, interactivegui.previousselection) end end
	end

	menu = {}

	for i,v in pairs(BaseMenu) do -- copy over the table and make sure ipairs wont pick up the elements
		menu["a"..i] = v
	end

	local but

	if (Elements) then -- fallback to the default, passed elements, if needed
		for i, v in ipairs(Elements) do
			-- create buttons
			but = {}
			if (v.releasefunc) then
				but.releasefunc = v.releasefunc(i)
			else
				if (releasefunc) then but.releasefunc = releasefunc(i) end
			end

			if (v.selectfunc) then
				but.selectfunc = v.selectfunc(i)
			else
				if (selectfunc) then but.selectfunc = selectfunc(i) end
			end

			if (v.autofunc) then
				but.autofunc = v.autofunc(i)
			else
				if (autofunc) then but.autofunc = autofunc(i) end
			end

			if (v.text) then 
				but.text = v.text
			else
				but.text = tostring(i)
			end

			if (v.x) then
				but.x = v.x
			else 
				but.x = startx
			end

			if (v.y) then
				but.y = v.y
			else 
				but.y = starty+(i-1)*10
			end

			table.insert(menu, but)
		end
	else
		for i = 1, numofelements do
			-- create buttons
			but = {}
			if (releasefunc) then but.releasefunc = releasefunc(i) end
			if (selectfunc) then but.selectfunc = selectfunc(i) end
			if (autofunc) then but.autofunc = autofunc(i) end
			but.text = tostring(i)
			but.x = startx
			but.y = starty+(i-1)*10
			table.insert(menu, but)
		end
	end

	return menu

end

createScrollingBar = function(BaseMenu, x, y, min, max, updatefunc, length, closingfunc, autofunc, text)
	local menu = {}
	if not text then text = "" end

	local barlen = max - min

	if not length then length = barlen end

	length = length/4 -- account for text size

	for _=1,(length-#text)/4 do
		text = " "..text
	end
	for _=1,(length-(#text/2))/4 do
		text = text.." "
	end

	for i,v in pairs(BaseMenu) do -- copy over the table and make sure ipairs wont pick up the elements
		menu["a"..i] = v
	end

	menu.min = 	{
					x = x-(#tostring(min))*2,
					y = y+10,
					text = tostring(min)
				}

	menu.max = 	{
					x = x+(#text)*4-(#tostring(max))*2,
					y = y+10,
					text = tostring(max)
				}

	local but = {}
	but.x = x
	but.y = y
	but.text = text
	but.olcolour = "black"
	but.val = updatefunc()
	but.fillpercent = (but.val-min)/barlen

	local workingframes = function(n) -- get faster the longer it runs
		if (n < 60) then
			if n%10==1 then return 1 end -- maybe tie this to coin input leniency?
			return 0
		elseif (n < 120) then
			return 1
		elseif (n < 180) then
			return 5
		end
		return 10
	end

	but.autofunc = 	function(this)
		but.val = updatefunc()
		local d = 0
		if guiinputs.P1.left then

			d = workingframes(guiinputs.P1.leftframecount) 

			if but.val-d>=min then
				updatefunc(-d)
			else
				updatefunc(max-but.val)
			end
		elseif guiinputs.P1.right then

			d = workingframes(guiinputs.P1.rightframecount) 

			if but.val+d<=max then
				updatefunc(d)
			else
				updatefunc(min-but.val)
			end
		end
		but.fillpercent = (but.val-min)/barlen
		if autofunc then autofunc() end
	end

	if closingfunc then
		but.func = closingfunc
	else
		but.func = 	function() CIG(interactivegui.previouspage, interactivegui.previousselection) end
	end

	menu[1] = but

	return menu
end

local hitplayback=gd.createFromPng("resources/replay/hitplayback.png"):gdStr() -- load images
local playback=gd.createFromPng("resources/replay/playback.png"):gdStr()

drawReplayInfo = function()
	for i = 1, 5 do
		if (recording[i][1]) then -- something in slot
			gui.text(interactivegui.boxx2-41,interactivegui.boxy2-71+10*i, "Slot "..i, "yellow")
		else
			gui.text(interactivegui.boxx2-41,interactivegui.boxy2-71+10*i, "Slot "..i)
		end
		if recording.recordingslot == i then
			gui.gdoverlay(interactivegui.boxx2-53, interactivegui.boxy2-71+10*i-1, playback)
		end
		if recording.hitslot == i then
			gui.gdoverlay(interactivegui.boxx2-64, interactivegui.boxy2-71+10*i-1, hitplayback)
		end
		-- check if anything is recorded in that slot
		if (recording[i].p1start~=recording[i].p1finish and recording[i].p1finish and recording[i].p2start~=recording[i].p2finish and recording[i].p2finish) then
			gui.text(interactivegui.boxx2-16,interactivegui.boxy2-71+10*i, "P1&2")
		elseif (recording[i].p1start~=recording[i].p1finish and recording[i].p1finish) then
			gui.text(interactivegui.boxx2-16,interactivegui.boxy2-71+10*i, "P1")
		elseif (recording[i].p2start~=recording[i].p2finish and recording[i].p2finish) then
			gui.text(interactivegui.boxx2-16,interactivegui.boxy2-71+10*i, "P2")
		end
	end
end

replaySave = function()
	assert(table.save(recording[recording.recordingslot],"replay.lua")==nil, "Can't save replay file")
end

replayLoad = function()
	if fexists("replay.lua") then
		recording[recording.recordingslot]=table.load("replay.lua")
	end
end

if fexists("guipages.lua") then
	dofile("guipages.lua")
	interactiveguipages = guipages
else
	print("Gui pages not found"..rom)
end
----------------------------------------------
end

function orTable(tab) -- or a table (check if not empty), this should be replaced with next()

	for _,v in pairs(tab) do
		if v then
			return true
		end
	end

	return false
end

function changeConfig(tab, index, value, otherlocation, otherindex) -- table in config (false or nil for base), index of variable to change, new value, otherlocation to change if necessary, otherindex if the index is different
	local c = {}

	if not tab then c = config
	else c = config[tab] end

	if type(value)~= type(c[index]) and type(c[index])~=nil then print("Tried to write a bad config value to "..index) return end -- make sure the right type is being passed
	config.changed = true
	c[index] = nil -- just to be sure
	c[index] = value
	if otherlocation then
		if otherindex then
			otherlocation[otherindex] = nil
			otherlocation[otherindex] = value
		else
			otherlocation[index] = nil
			otherlocation[index] = value
		end
	end
end

local saveConfig = function()
	if not availablefunctions.tablesave or not config.changed then return end
	config.changed = false -- only saves if the config has changed
	print("Saving config: " .. configpath)
	assert(table.save(config, configpath)==nil, "Can't save config file")
end

local updateModuleVars = function()
	if availablefunctions.playertwoinhitstun then
		modulevars.p2.inhitstun = playerTwoInHitstun()
	end
	if availablefunctions.playeroneinhitstun then
		modulevars.p1.inhitstun = playerOneInHitstun()
	end

	if availablefunctions.readplayeronehealth then
		modulevars.p1.previoushealth = modulevars.p1.health
		modulevars.p1.health = readPlayerOneHealth()
	end

	if availablefunctions.readplayertwohealth then
		modulevars.p2.previoushealth = modulevars.p2.health
		modulevars.p2.health = readPlayerTwoHealth()
	end

	if availablefunctions.playertwofacingleft then
		modulevars.p2.facingleft = playerTwoFacingLeft()
	end
	if availablefunctions.playeronefacingleft then
		modulevars.p1.facingleft = playerOneFacingLeft()
	end

	if availablefunctions.readplayeronemeter then
		modulevars.p1.meter = readPlayerOneMeter()
	end
	if availablefunctions.readplayertwometer then
		modulevars.p2.meter = readPlayerTwoMeter()
	end

end

local comboHandlerP1 = function()

	combovars.p1.healthdiff = modulevars.p1.previoushealth - modulevars.p1.health

	combovars.p1.previouscombo = combovars.p1.combo

	if combovars.p1.healthdiff ~= 0 and modulevars.p1.inhitstun then
		combovars.p1.combo = combovars.p1.combo+1 -- if theres a difference in health detected and p1 is in a combo
	end

	if not modulevars.p1.inhitstun then
		combovars.p1.combo = 0 -- if p1 is not in hitstun the combo drops
	end
end

local healthHandlerP1 = function()

	if not combovars.p1.refillhealthenabled then return end

	if combovars.p1.combo ~= combovars.p1.previouscombo and not modulevars.p1.inhitstun then
		if combovars.p1.refillhealth == 0 then
			combovars.p1.refillhealth = math.ceil((modulevars.p1.maxhealth - modulevars.p1.health) / combovars.p1.refillhealthspeed) -- refill speed
		end
	end

	if modulevars.p1.inhitstun then
		combovars.p1.refillhealth = 0
	end

	if combovars.p1.refillhealth ~= 0 then
		if (combovars.p1.refillhealth + modulevars.p1.health >= modulevars.p1.maxhealth) or combovars.p1.instantrefillhealth then
			writePlayerOneHealth(modulevars.p1.maxhealth)
			combovars.p1.refillhealth = 0
		else
			writePlayerOneHealth(modulevars.p1.health + combovars.p1.refillhealth)
		end
	end
end

local meterHandlerP1 = function()

	if not combovars.p1.refillmeterenabled then return end

	if combovars.p1.instantrefillmeter then
		writePlayerOneMeter(modulevars.p1.maxmeter)
	end

	if combovars.p2.combo ~= combovars.p2.previouscombo and not modulevars.p2.inhitstun then
		if combovars.p1.refillmeter == 0 then
			combovars.p1.refillmeter = math.ceil((modulevars.p1.maxmeter - modulevars.p1.meter) / combovars.p1.refillmeterspeed) -- refill speed
		end
	end

	if modulevars.p2.inhitstun then
		combovars.p1.refillmeter = 0
	end

	if combovars.p1.refillmeter ~= 0 then
		if (combovars.p1.refillmeter + modulevars.p1.meter >= modulevars.p1.maxmeter) then
			writePlayerOneMeter(modulevars.p1.maxmeter)
			combovars.p1.refillmeter = 0
		else
			writePlayerOneMeter(modulevars.p1.meter + combovars.p1.refillmeter)
		end
	end

end

local instantHealthP1 = function()
	if not combovars.p1.refillhealthenabled then return end
	if not combovars.p1.instantrefillhealth then return end
	writePlayerOneHealth(modulevars.p1.maxhealth)
end

local instantMeterP1 = function()
	if not combovars.p1.refillmeterenabled then return end
	if not combovars.p1.instantrefillmeter then return end
	writePlayerOneMeter(modulevars.p1.maxmeter)
end

local comboHandlerP2 = function()

	combovars.p2.healthdiff = modulevars.p2.previoushealth - modulevars.p2.health

	combovars.p2.previouscombo = combovars.p2.combo

	if combovars.p2.healthdiff ~= 0 and modulevars.p2.inhitstun then
		combovars.p2.combo = combovars.p2.combo+1 -- if theres a difference in health detected and p2 is in a combovars.combo
	end

	if not modulevars.p2.inhitstun then
		combovars.p2.combo = 0 -- if p2 is not in hitstun the combovars.combo drops
	end

	if modulevars.p2.inhitstun then
		combovars.p2.displaycombo = combovars.p2.combo
	end

	if combovars.p2.healthdiff > 0 then
		combovars.p2.previousdamage = combovars.p2.healthdiff
		if combovars.p2.combo == 1 then
			combovars.p2.comboDamage=0
		end
		combovars.p2.comboDamage = combovars.p2.comboDamage + combovars.p2.healthdiff
	end
end

local healthHandlerP2 = function()

	if not combovars.p2.refillhealthenabled then return end

	if combovars.p2.combo ~= combovars.p2.previouscombo and not modulevars.p2.inhitstun then
		if combovars.p2.refillhealth == 0 then
			combovars.p2.refillhealth = math.ceil((modulevars.p2.maxhealth - modulevars.p2.health) / combovars.p2.refillhealthspeed) -- refill speed
		end
	end

	if modulevars.p2.inhitstun then
		combovars.p2.refillhealth = 0
	end

	if combovars.p2.refillhealth ~= 0 then
		if (combovars.p2.refillhealth + modulevars.p2.health >= modulevars.p2.maxhealth) or combovars.p2.instantrefillhealth then
			writePlayerTwoHealth(modulevars.p2.maxhealth)
			combovars.p2.refillhealth = 0
		else
			writePlayerTwoHealth(modulevars.p2.health + combovars.p2.refillhealth)
		end
	end
end

local meterHandlerP2 = function()

	if not combovars.p2.refillmeterenabled then return end

	if combovars.p2.instantrefillmeter then
		writePlayerTwoMeter(modulevars.p2.maxmeter)
	end

	if combovars.p1.combo ~= combovars.p1.previouscombo and not modulevars.p1.inhitstun then
		if combovars.p2.refillmeter == 0 then
			combovars.p2.refillmeter = math.ceil((modulevars.p2.maxmeter - modulevars.p2.meter) / combovars.p2.refillmeterspeed) -- refill speed
		end
	end

	if modulevars.p1.inhitstun then
		combovars.p2.refillmeter = 0
	end

	if combovars.p2.refillmeter ~= 0 then
		if (combovars.p2.refillmeter + modulevars.p2.meter >= modulevars.p2.maxmeter) then
			writePlayerTwoMeter(modulevars.p2.maxmeter)
			combovars.p2.refillmeter = 0
		else
			writePlayerTwoMeter(modulevars.p2.meter + combovars.p2.refillmeter)
		end
	end
end

local instantHealthP2 = function()
	if not combovars.p2.refillhealthenabled then return end
	if not combovars.p2.instantrefillhealth then return end
	writePlayerTwoHealth(modulevars.p2.maxhealth)
end

local instantMeterP2 = function()
	if not combovars.p2.refillmeterenabled then return end
	if not combovars.p2.instantrefillmeter then return end
	writePlayerTwoMeter(modulevars.p2.maxmeter)
end

local readGuiInputs = function()
	local player, input
	guiinputs.P1.previousinputs = nil
	guiinputs.P2.previousinputs = nil
	guiinputs.P1.previousinputs = copytable(guiinputs.P1)
	guiinputs.P2.previousinputs = copytable(guiinputs.P2)
	for i,v in pairs(joypad.get()) do -- check every button
		player = i:sub(1,2)
		input = i:sub(4)
		if player == "P1" then
			guiinputs.P1[modulevars.constants.translationtable[modulevars.constants.translationtable[input]]] = v
		elseif player == "P2" then
			guiinputs.P2[modulevars.constants.translationtable[modulevars.constants.translationtable[input]]] = v
		end
	end
end

local stickimgs = {}
for i = 1,9 do
	stickimgs[i]=gd.createFromPng("resources/stick/"..i..".png"):gdStr() -- load images
end

function displayStick(x, y)
	local a = function(b) if b then return 1 end return 0 end -- bool to num
	local dir = 5+a(guiinputs.P1["up"])*3 + a(guiinputs.P1["left"])*-1 + a(guiinputs.P1["right"])*1 + a(guiinputs.P1["down"])*-3
	gui.gdoverlay(x, y, stickimgs[dir])
end

local readInputs = function() -- these inputs can be altered for replays, swapping character etc., gui inputs won't be
	local player, input
	inputs.setinputs = {}
	for i,v in pairs(joypad.get()) do -- check every button
		player = i:sub(1,2)
		input = i:sub(4)
		if player == "P1" then
			inputs.p1[input] = v
		elseif player == "P2" then
			inputs.p2[input] = v
		else
			inputs.other[i] = v
		end
	end
end

local combinePlayerInputs = function(P1, P2, other)

	if type(P1) ~= "table" or type(P2) ~= "table" then return end

	local t = {}

	for i,v in pairs(P1) do
		t["P1 "..i] = v
	end
	for i,v in pairs(P2) do
		t["P2 "..i] = v
	end
	if type(other)=="table" then
		for i,v in pairs(other) do
			t[i] = v
		end
	end
	
	inputs.properties.enableinputset = true
	return t
end

local toggleSwapInputs = function(bool, vargs)
	if bool==nil then inputs.properties.enableinputswap = not inputs.properties.enableinputswap
	else inputs.properties.enableinputswap = bool end
	if vargs then vargs.swapinputs = false end
	toggleStates(vargs)
end

local swapInputs = function()

	if not inputs.properties.enableinputswap then return end

	local tab = inputs.p1
	inputs.p1 = inputs.p2
	inputs.p2 = tab

	tab = combinePlayerInputs(inputs.p1, inputs.p2, inputs.other)
	inputs.setinputs = tab
end

local swapPlayerDirection = function(player)

	local tab = copytable(player) -- shallow copy
	
	if tab.Left==true then tab.Right=true tab.Left=false
	elseif tab.Right==true then tab.Left=true tab.Right=false end

	return tab

end

local freezePlayer = function(player)

	if player == 1 or not player then
		if inputs.properties.p1freeze then
			for i,_ in pairs(inputs.p1) do
				inputs.setinputs["P1 "..i] = false
				inputs.properties.enableinputset = true
			end
		end
	end

	if player == 2 or not player then
		if inputs.properties.p2freeze then
			for i,_ in pairs(inputs.p2) do
				inputs.setinputs["P2 "..i] = false
				inputs.properties.enableinputset = true
			end
		end
	end
end

-- Const
local SERIALISETABLE = {}
SERIALISETABLE.p1 = {}
SERIALISETABLE.p2 = {}

for i,v in pairs(joypad.get()) do -- assemble table in proper order
	local input
	if i:sub(1,2) == "P1" then -- P1 and P2 should have the same inputs
		input = i:sub(4)
		SERIALISETABLE.p1[#SERIALISETABLE.p1+1] = input
		SERIALISETABLE.p1[input] = #SERIALISETABLE.p1
		SERIALISETABLE.p2[#SERIALISETABLE.p2+1] = input
		SERIALISETABLE.p2[input] = #SERIALISETABLE.p2
	end
end
SERIALISETABLE.p1.len = #SERIALISETABLE.p1 -- used for cleaning up inputs
SERIALISETABLE.p2.len = SERIALISETABLE.p1.len
	
local serialiseInit = function(recordslot) -- set up compression, reduce the size of _stable to make the numbers actually smaller
	local player, input, num
	for i,_ in pairs(recordslot.constants) do 
		player = i:sub(1,2)
		input = i:sub(4)
		if player == "P1" then
			num = recordslot._stable.p1[input]
			for i = num+1, recordslot._stable.p1.len do
				recordslot._stable.p1[input] = nil -- remove
				recordslot._stable.p1[i-1] = recordslot._stable.p1[i]
				recordslot._stable.p1[ recordslot._stable.p1[i] ] = i-1
			end
			recordslot._stable.p1.len = recordslot._stable.p1.len-1
			for i = 1, #recordslot._stable.p1-recordslot._stable.p1.len do table.remove(recordslot._stable.p1) end-- remove garbage
			for i, v in pairs(recordslot._stable.p1) do if recordslot._stable.p1[v]==nil and i~="len" then recordslot._stable.p1[i]=nil end end
		elseif player == "P2" then
			num = recordslot._stable.p2[input]
			for i = num+1, recordslot._stable.p2.len do
				recordslot._stable.p2[input] = nil -- remove
				recordslot._stable.p2[i-1] = recordslot._stable.p2[i]
				recordslot._stable.p2[ recordslot._stable.p2[i] ] = i-1
			end
			recordslot._stable.p2.len = recordslot._stable.p2.len-1
			for i = 1, #recordslot._stable.p2-recordslot._stable.p2.len do table.remove(recordslot._stable.p2) end-- remove garbage
			for i, v in pairs(recordslot._stable.p2) do if recordslot._stable.p2[v]==nil and i~="len" then recordslot._stable.p2[i]=nil end end -- final check
		end
	end
end

local serialise = function(recordslot)
	for i = 1, #recordslot do -- serialize
		local num = 0
		recordslot[i].serial={}
		recordslot[i].serial.other={}
		for i, v in pairs(recordslot[i].raw.p1) do
			if v and recordslot.constants["P1 "..i]==nil then num = bit.bor(num, bit.lshift(1, recordslot._stable.p1[i]-1)) end
		end
		for i, v in pairs(recordslot[i].raw.p2) do
			if v and recordslot.constants["P2 "..i]==nil then num = bit.bor(num, bit.lshift(1, recordslot._stable.p2[i]-1+recordslot._stable.p1.len)) end
		end
		for j, v in pairs(recordslot[i].raw.other) do -- dipswitches aren't boolean so they can't be serialised
			if recordslot.constants[j]==nil then recordslot[i].serial.other[j] = v end -- only put in the ones we need
		end
		--final bit to track direction
		if recordslot[i].p1facingleft then num = bit.bor(num, bit.lshift(1, recordslot._stable.p1.len+recordslot._stable.p2.len)) end
		if recordslot[i].p2facingleft then num = bit.bor(num, bit.lshift(1, recordslot._stable.p1.len+recordslot._stable.p2.len+1)) end
		recordslot[i].serial.player = num
		recordslot[i].raw = {} -- we can empty this now
	end
end

local Unserialise = function(inputs, _stable, constants) -- takes inputs (recordslot[frame]), _stable and constants to unserialise
	local serial = inputs.serial.player
	inputs.raw = {} -- initialise
	inputs.raw.p1 = {}
	inputs.raw.p2 = {}
	inputs.raw.other = {}
	local t = inputs.raw.p1
	for i = 1, #_stable.p1 do
		if bit.band(serial,1)==1 then
			t[ _stable.p1[i] ] = true
		else
			t[ _stable.p1[i] ] = false
		end
		serial = bit.rshift(serial,1)
	end
	t=inputs.raw.p2
	for i = 1, #_stable.p2 do
		if bit.band(serial,1)==1 then
			t[ _stable.p2[i] ] = true
		else
			t[ _stable.p2[i] ] = false
		end
		serial = bit.rshift(serial,1)
	end
	inputs.p1facingleft = bit.band(serial,1)==1 -- set direction flag
	inputs.p2facingleft = bit.band(serial,2)==2 -- set direction flag
	t=inputs.raw.other
	for i, v in pairs(inputs.serial.other) do
		t[i] = v
	end
	
	local player, input
	for i, v in pairs(constants) do -- apply constants
		player = i:sub(1,2)
		input = i:sub(4)
		if player == "P1" then
			inputs.raw.p1[input] = v
		elseif player == "P2" then
			inputs.raw.p2[input] = v
		else
			t[i] = v
		end
	end
end

local toggleRecording = function(bool, vargs)

	if interactivegui.movehud then return end

	if vargs then vargs.recording = false end
	toggleStates(vargs)

	if bool==nil then recording.enabled = not recording.enabled
	else recording.enabled = bool end

	recording.swapplayers = not recording.replayP1

	if recording.swapplayers then
		toggleSwapInputs(recording.enabled, vargs)
	else
		toggleSwapInputs(false, vargs)
	end

	if recording.enabled then
		recording[recording.recordingslot] = {}
		recording.framestart = fc
		-- prep for serialising
		recording[recording.recordingslot]._stable = {}
		recording[recording.recordingslot]._stable.p1 = copytable(SERIALISETABLE.p1)
		recording[recording.recordingslot]._stable.p2 = copytable(SERIALISETABLE.p2)
		recording[recording.recordingslot].constants = joypad.get()
	else
		local recordslot = recording[recording.recordingslot]
		if not recordslot[1] or not recordslot[1].raw or not recordslot[1].raw.p1 or not recordslot[1].raw.p2 then return end -- nothing to do past here
		if not recordslot.p1start and not recordslot.p2start then -- if nothing is recorded
			recording[recording.recordingslot] = {}
		else
			if not recordslot.p1start then recordslot.p1start = #recordslot	end
			if not recordslot.p2start then recordslot.p2start = #recordslot	end
			for i=#recordslot,recordslot.p1start,-1 do
				if recordslot[i].raw.p1 then recordslot[i].raw.p1.Coin = false end-- clear coin
			end
			for i=#recordslot,recordslot.p2start,-1 do
				if recordslot[i].raw.p2 then recordslot[i].raw.p2.Coin = false end -- clear coin
			end
			serialiseInit(recordslot)
			serialise(recordslot)
		end
	end
end

local logRecording = function()

	if not recording.enabled then return end
	if not recording[recording.recordingslot] then recording[recording.recordingslot] = {} end

	local recordslot = recording[recording.recordingslot]
	local tab = {
		raw = {
			p1 = copytable(inputs.p1),
			p2 = copytable(inputs.p2),
			other = copytable(inputs.other)
		},
		serial = {
			player={},
			other={},
		},
	}

	for i, v in pairs(tab.raw.p1) do
		if recordslot.constants["P1 "..i]~=v then recordslot.constants["P1 "..i]=nil end -- remove non-duping values from table
	end
	for i, v in pairs(tab.raw.p2) do
		if recordslot.constants["P2 "..i]~=v then recordslot.constants["P2 "..i]=nil end -- remove non-duping values from table
	end
	for i, v in pairs(tab.raw.other) do
		if recordslot.constants[i]~=v then recordslot.constants[i]=nil end -- remove non-duping values from table
	end

	if not recording[recording.recordingslot].p1start then -- move start forward to first frame that something happens on
		if orTable(tab.raw.p1) and not tab.raw.p1.Coin then
			recordslot.p1start = fc - recording.framestart + 1
		end
	end

	if not recording[recording.recordingslot].p2start then -- move start forward to first frame that something happens on
		if orTable(tab.raw.p2) and not tab.raw.p2.Coin then
			recordslot.p2start = fc - recording.framestart + 1
		end
	end

	if orTable(tab.raw.p1) and not tab.raw.p1.Coin then  -- put finish on the last frame that something happens
		recordslot.p1finish = fc - recording.framestart - 1
	end

	if orTable(tab.raw.p2) and not tab.raw.p2.Coin then  -- put finish on the last frame that something happens
		recordslot.p2finish = fc - recording.framestart - 1
	end
	
	if availablefunctions.playeronefacingleft then
		tab.p1facingleft = modulevars.p1.facingleft
	end

	if availablefunctions.playertwofacingleft then
		tab.p2facingleft = modulevars.p2.facingleft
	end

	table.insert(recordslot, tab)
	gui.text(1,1,"Slot "..recording.recordingslot.." (0/"..#recordslot..")","red")

end

local togglePlayBack = function(bool, vargs)
	if interactivegui.movehud then return end
	
	if vargs then vargs.playback = false end
	toggleStates(vargs)
	
	if recording.randomise then
		local b = false
		for i = 1, 5 do if recording[i][1] then b = true end end
		if not b then return end
		local pos
		recording.recordingslot = nil
		while recording.recordingslot==nil do -- keep running until we get a valid slot
			pos = math.random(5)
			if recording[pos][1] then -- check if there's something in here
				recording.recordingslot = pos
			end
		end
	end
	
	local recordslot = recording[recording.recordingslot]
	if not recordslot then return end

	if not recordslot.p1start and not recordslot.p2start then -- if nothing is recorded
		recording[recording.recordingslot] = {}
	end
	if not recordslot[1] then return end -- if nothing is recorded

	if bool==nil then recording.playback = not recording.playback
	else recording.playback = bool end
	
	if not recording.replayP1 and not recording.replayP2 then
		recording.replayP2 = true
	end

	if not recording.playback then
		recordslot.framestart = nil
	else
		if recording.replayP1 and recording.replayP2 then
			recordslot.start = recordslot.p1start
			if (recordslot.start==nil and recordslot.p2start~=nil) or (recordslot.start>recordslot.p2start) then recordslot.start = recordslot.p2start end
		elseif recording.replayP1 then
			toggleSwapInputs(true)
			recordslot.start = recordslot.p1start 
		else
			recordslot.start = recordslot.p2start
		end
		if recordslot.start==recordslot.finish then toggleSwapInputs(false) return end -- nothing recorded
	end
end

local playBack = function()
	if not recording.playback then return end
	local recordslot = recording[recording.recordingslot]
	if not recordslot then return end

	if not recordslot.framestart then recordslot.framestart = fc - 1 end

	local start, finish = 0, #recordslot

	if recording.skiptostart and recordslot.start then start = recordslot.start end
	if recording.skiptofinish and recordslot.finish then finish = recordslot.finish end

	if fc - recordslot.framestart + start > finish then
		recordslot.framestart = nil
		if not recording.loop then -- finished replaying, reset everything
			recording.playback = false
			recording.hitplayback = false
			toggleSwapInputs(false)
		else -- loop
			recordslot.framestart = nil
			togglePlayBack(true)
		end
		return
	end

	gui.text(1,1,"Slot "..recording.recordingslot.." ("..fc-recordslot.framestart.."/"..#recordslot..")")
	Unserialise(recordslot[fc - recordslot.framestart + start], recordslot._stable, recordslot.constants)
	local raw = recordslot[fc - recordslot.framestart + start].raw
	
	if modulevars.p1.facingleft ~= recordslot[fc - recordslot.framestart + start].p1facingleft and recording.autoturn then
		raw.p1 = swapPlayerDirection(raw.p1)
	end
	if modulevars.p2.facingleft ~= recordslot[fc - recordslot.framestart + start].p2facingleft and recording.autoturn then
		raw.p2 = swapPlayerDirection(raw.p2)
	end
	if recording.replayP1 and recording.replayP2 then
		inputs.setinputs = combinePlayerInputs(raw.p1, raw.p2, raw.other)
	elseif recording.replayP1 then
		inputs.setinputs = combinePlayerInputs(raw.p1, inputs.p2, raw.other)	
	else
		inputs.setinputs = combinePlayerInputs(inputs.p1, raw.p2, raw.other)
	end
	recordslot[fc - recordslot.framestart + start].raw = {}
	recordslot[fc - recordslot.framestart + start].p1facingleft = nil
	recordslot[fc - recordslot.framestart + start].p2facingleft = nil
end

local hitPlayBack = function()
	if not recording.hitslot then return end
	if not recording.hitplayback and combovars.p2.previouscombo <= combovars.p2.combo then return end
	togglePlayBack(true)
end

local setInputs = function()
	if inputs.properties.enableinputset then
		joypad.set(inputs.setinputs)
	end
	inputs.properties.enableinputset = false
end

setDirection = function(player, ...) -- getting a player to hold down/up etc.
	local dir1, dir2 = ... -- only need to check two inputs at a time

	if type(dir1)=="number" then -- for numpad
		local a = {{"Down", "Left"}, {"Down"}, {"Down", "Right"}, {"Left"}, {}, {"Right"}, {"Up", "Left"}, {"Up"}, {"Up", "Right"}} -- numpad
		dir2 = a[dir1][2]
		dir1 = a[dir1][1]
	end

	inputs.properties.enablehold = dir1 or dir2

	inputs.properties.p1hold = {}
	inputs.properties.p2hold = {}

	if player == 1 then 
		if dir1 then inputs.properties.p1hold[dir1] = true end
		if dir2 then inputs.properties.p1hold[dir2] = true end
	end

	if player == 2 then
		if dir1 then inputs.properties.p2hold[dir1] = true end
		if dir2 then inputs.properties.p2hold[dir2] = true end
	end
end

local applyDirection = function() -- getting a player to hold down/up etc.
	if not inputs.properties.enablehold then return end
	for i, _ in pairs(inputs.properties.p1hold) do
		inputs.setinputs["P1 "..i] = true
	end
	for i, _ in pairs(inputs.properties.p2hold) do
		inputs.setinputs["P2 "..i] = true
	end
	inputs.properties.enableinputset = true
end

-- set up gd images
local helpElements = {}
local icons = {[16] = {}, [32] = {}} -- follows translationtable series
local helpButtons = {}
local helpShell = gd.createFromPng("resources/info/shell.png")
helpShell = helpShell:gdStr()

if scrollingInputReg then -- if there's a scrolling input file loaded
	local img = gd.createFromPng("inputs/scrolling-input/"..games[dirname].iconfile) -- always assume we're using a 32x32 tileset image
	local imgcnt = img:sizeY()/32
	local y = img:sizeY()-(nbuttons+1)*32 -- y of first button, ignoring start
	--[[
		Left,
		Right,
		Up,
		Down,
		Up-Left, -- skip these
		Up-Right,
		Down-Left,
		Down-Right,
		{
		.
		.
		.
		*Buttons*,
		.
		.
		.
		},
		Start
	--]]
	
	for i = 1, 4 do
		icons[32][i] = gd.create(32,32)
		icons[32][i]:copy(img, 0, 0, 0, (i-1)*32, 32, 32)
		icons[32][i] = icons[32][i]:gdStr()
		
		icons[16][i] = gd.create(16,16)
		icons[16][i]:copyResampled(img, 0, 0, 0, (i-1)*32, 16, 16, 32, 32)
		icons[16][i] = icons[16][i]:gdStr()
	end
	
	for i = 9, imgcnt do -- skip diagonals
		icons[32][i-4] = gd.create(32,32)
		icons[32][i-4]:copy(img, 0, 0, 0, (i-1)*32, 32, 32)
		icons[32][i-4] = icons[32][i-4]:gdStr()
		
		icons[16][i-4] = gd.create(16,16)
		icons[16][i-4]:copyResampled(img, 0, 0, 0, (i-1)*32, 16, 16, 32, 32)
		icons[16][i-4] = icons[16][i-4]:gdStr()
	end
	
	for i = 1,nbuttons do
		helpButtons[i] = icons[16][i+4]
		y=y+32
	end
else -- otherwise use these defaults
	for i = 1,nbuttons do
		helpButtons[i] = gd.createFromPng("resources/info/"..i..".png")
		helpButtons[i] = helpButtons[i]:gdStr()
	end
end

local buttonHandlerInputs = {
	["button1"] = 1,
	["button2"] = 2,
	["button3"] = 3,
	["button4"] = 4,
	["button5"] = 5,
	["button6"] = 6,
	["button7"] = 7,
	["button8"] = 8,
	["button9"] = 9,
	["button10"] = 10,
}

local moreButtonsButtonHandler = 
{	name="MORE",
	button="button"..(nbuttons-1),
	func = function(but)
		if not (guiinputs.P1[but] and not guiinputs.P1.previousinputs[but]) then return end
		if nbuttons+helpElements.block*(nbuttons-2) >= #helpElements then helpElements.block = 0 end
		for i = 1, nbuttons-2 do -- space for more and back
			local temp = helpElements[i]
			local offset = helpElements.block*(nbuttons-2) + i + nbuttons
			helpElements[i] = {} -- clear
			if not (offset > #helpElements) and next(helpElements[offset]) then
				helpElements[i] = helpElements[offset]
				helpElements[i].button = i -- make sure the buttons are set up right
				helpElements[i].buttonnum = "button"..i
				helpElements.len = i+2
			end
			helpElements[offset] = temp
		end
		helpElements.block = helpElements.block+1
	end
}

local buttonHandler = function(t)
	--[[
		t={
			{name="", button=""},
			{name="", button=""},
			{name="", button=""},
			.
			.
			.
			funcs = {... = (), other = ()}
			len
		}
	--]]

	if not t[1].button then t[1].button = "button1" end -- just in case
		
	for i = 1, #t.funcs do
		if not t[i] then t[i] = {name = " "} end
		if not t[i].button then t[i].button = "button"..(tonumber(t[i-1].button:sub(7))+1) end
	end
	
	t.len = #t

	if not helpElements.more then helpElements.more = 0 end
	
	if t.funcs ~= helpElements.funcs then -- new set of buttons
		helpElements = {}

		t.len=t.len+1 -- space for back

		t[t.len] = {name="BACK", button="button"..nbuttons} -- insert back as the last button

		for i,v in ipairs(t.funcs) do t[i].func=v end -- copy across funcs

		helpElements.more = 0
		helpElements.block = 0
		if t.len > nbuttons or #t.funcs > t.len then -- not enough buttons for functions, set up the MORE button
			local back = t[t.len] -- back button
			for i = t.len+1, nbuttons, -1 do t[i] = t[i-2] end -- shunt along
			t[nbuttons] = back -- put back in place
			t[nbuttons-1] = moreButtonsButtonHandler -- put more in place
			helpElements.more = 1 -- mark more as being added
			t.len=t.len+1 -- space for more
		end
		helpElements.funcs = t.funcs
		helpElements.len = t.len
		for i = 1, helpElements.len do
			helpElements[i]={name=t[i].name, button=buttonHandlerInputs[t[i].button], buttonnum=t[i].button, func=t[i].func}
		end
		if t.funcs.back then
			helpElements[math.min(nbuttons,helpElements.len)].func = t.funcs.back
		else
			helpElements[math.min(nbuttons,helpElements.len)].func = function() toggleStates({}) end -- default for back
		end
		if helpElements.len>nbuttons then helpElements.len = nbuttons end
	end
	for i=1,nbuttons do if helpElements[i] and helpElements[i].func then helpElements[i].func(helpElements[i].buttonnum) end end -- run all the functions
	if helpElements.funcs.other then helpElements.funcs.other() end
end

local drawHelp = function()
	if not (interactivegui.movehud or interactivegui.enabled or interactivegui.replayeditor.enabled) then return end -- need some sort of state system eventually to make this sort of thing easier
	local offset = helpElements.len*9
	local i,l = 1, helpElements.len
	while i<=l do
		if helpElements[i] and helpElements[i].name then
			if not helpElements[i].button then helpElements[i].button = i end
			gui.gdoverlay(interactivegui.sw/2 - offset, interactivegui.sh-27, helpShell)
			gui.gdoverlay(interactivegui.sw/2 - offset + 1, interactivegui.sh-26, helpButtons[helpElements[i].button])
			gui.text(interactivegui.sw/2 - offset + 9 - #helpElements[i].name:sub(1,4)*2, interactivegui.sh-9, helpElements[i].name:sub(1,4))
			offset=offset-18
		else
			l=l+1 -- more to iterate
		end
	i=i+1
	end
end

local toggleInteractiveGuiEnabled = function(bool)
	
	if vargs then vargs.interactiveguienabled = false end
	toggleStates(vargs)
	if not recording[recording.recordingslot] then recording[recording.recordingslot] = {} end
	recording[recording.recordingslot].framestart = nil

	if bool==nil then interactivegui.enabled = not interactivegui.enabled
	else interactivegui.enabled = bool end

	inputs.properties.p1freeze = interactivegui.enabled
	inputs.properties.p2freeze = interactivegui.enabled
end

local garbagecount = {disp = collectgarbage("count")}

local callGuiSelectionFunc = function()
	local func = interactiveguipages[interactivegui.page][interactivegui.selection].func
	if not interactivegui.enabled or not func then return end
	func()
end

local callGuiSelectionReleaseFunc = function()
	local func = interactiveguipages[interactivegui.page][interactivegui.selection].releasefunc
	if not interactivegui.enabled or not func then return end
	func()
end

local interactiveGuiSelectionInfo = function()
	
	local info = interactiveguipages[interactivegui.page][interactivegui.selection].info
	if not interactivegui.enabled or not info then return end
	
	local largest = 0
	local sw, sh, y2 = interactivegui.sw, interactivegui.sh, interactivegui.boxy2


	for _,v in ipairs(info) do
		if largest < #v then largest = #v end
	end

	gui.box(sw/2 - 3 - (largest)*2, y2 - (#info)*10, sw/2 + 1 + (largest)*2, y2, 0x89cfefff, "black")

	for i,v in ipairs(info) do
		gui.text(sw/2 - #v*2, y2 - (#info)*10 + 2 + (i-1)*10, v)
	end
end

local interactiveGuiSelectionBack = function()
	if not interactivegui.enabled then return end
	CIG(interactivegui.previouspage, interactivegui.previousselection)
end

local drawInteractiveGuiFuncs = {
	function(but)
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then
			callGuiSelectionFunc()
		end
		if not guiinputs.P1[but] and guiinputs.P1.previousinputs[but] then
			callGuiSelectionReleaseFunc()
		end
	end,

	function(but)
		if guiinputs.P1[but] then
			interactiveGuiSelectionInfo()
		end
	end,
	
	back = function(but) 
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then -- back button
			interactiveGuiSelectionBack()
		end
	end,

	other = function() -- runs every frame regardless
		if guiinputs.P1.left and not guiinputs.P1.previousinputs.left then
			changeInteractiveGuiSelection(interactivegui.selection-1)
		elseif guiinputs.P1.right and not guiinputs.P1.previousinputs.right then
			changeInteractiveGuiSelection(interactivegui.selection+1)
		end
	end
}

local drawInteractiveGui = function()

	if not interactivegui.enabled then return end
	
	local t = {{name="SLCT", button="button1"}, {}, funcs=drawInteractiveGuiFuncs}

	local boxx, boxy, boxx2, boxy2, bgcolour, olcolour, page, selection

	boxx = interactivegui.boxx
	boxy = interactivegui.boxy
	boxx2 = interactivegui.boxx2 
	boxy2 = interactivegui.boxy2 
	bgcolour = interactivegui.bgcolour
	olcolour = interactivegui.olcolour

	gui.box(boxx,boxy,boxx2,boxy2,bgcolour,olcolour)

	page = interactiveguipages[interactivegui.page]
	selection = page[interactivegui.selection]

	local w, h, colour

	local barcolour = interactivegui.barcolour
	for i,v in pairs(page) do
		if i~="other_func" and i~="aother_func"  then  -- this should be a function, copied function
			if v.autofunc then
				v:autofunc()
			end

			if i ~= interactivegui.selection then

				if not v.x then v.x = 0 end
				if not v.y then v.y = 0 end
				if not v.text then v.text = " " end
				if not v.textcolour then v.textcolour = "white" end
				if not v.bgcolour then v.bgcolour = bgcolour end
				if not v.olcolour then v.olcolour = bgcolour end

				w, h = #v.text*4, 10

				if (v.fillpercent) then
					gui.box(v.x + boxx, v.y + boxy, v.x + boxx + (w + 4)*v.fillpercent, v.y + boxy + h, barcolour)
					v.bgcolour = nil
				end

				if v.bgcolour ~= bgcolour or v.olcolour ~= bgcolour then
					gui.box(v.x + boxx, v.y + boxy, v.x + boxx + w + 4, v.y + boxy + h, v.bgcolour, v.olcolour)
				end
				gui.text(v.x + boxx + 3, v.y + boxy + 2, v.text, v.textcolour)
			end
		end
	end

	-- draws the selected box but with a red outline instead
	if selection.info then t[2] = {name="INFO", button="button2"} end
	if selection.selectfunc then selection.selectfunc() end

	if not selection.x then selection.x = 0 end
	if not selection.y then selection.y = 0 end
	if not selection.text then selection.text = "" end
	if not selection.textcolour then selection.textcolour = "white" end
	if not selection.bgcolour then selection.bgcolour = bgcolour end
	if not selection.olcolour then selection.olcolour = bgcolour end

	w, h = #selection.text*4, 10
	colour = interactivegui.selectioncolour
	if (selection.fillpercent) then
		gui.box(selection.x + boxx, selection.y + boxy, selection.x + boxx + (w + 4)*selection.fillpercent, selection.y + boxy + h, barcolour)
		selection.bgcolour = nil
	end
	gui.box(selection.x + boxx, selection.y + boxy, selection.x + boxx + w + 4, selection.y + boxy + h, selection.bgcolour, colour)
	gui.text(selection.x + boxx + 3, selection.y + boxy + 2, selection.text, selection.textcolour)
	
	table.insert(garbagecount, math.floor(collectgarbage("count")*100)/100) -- round to two places
	if #garbagecount>=10 then
		local disp = 0
		for _, v in ipairs(garbagecount) do
			disp = disp+v
		end
		disp = disp/#garbagecount
		garbagecount={}
		garbagecount.disp = disp
	end
	gui.text(boxx+1, boxy2-7, garbagecount.disp)
	if page.other_func then page.other_func() end -- if theres anything else to be ran
	buttonHandler(t)
end

changeInteractiveGuiPage = function(n)
	if not interactivegui.enabled then return end
	if not n then n = interactivegui.page+1 end
	interactivegui.previouspage = interactivegui.page -- keep previous for backing out
	interactivegui.previousselection = interactivegui.selection

	if interactiveguipages[n] then -- if the page exists go there
		interactivegui.page = n
	else -- otherwise try to wrap-around
		if n == 0 then
			interactivegui.page = #interactiveguipages -- goto last
		elseif n == #interactiveguipages+1 then
			interactivegui.page = 1 -- goto first
		end -- otherwise do nothing
	end

	local page = interactiveguipages[interactivegui.page]

	if interactivegui.selection > #page then -- make sure selection is in bounds
		interactivegui.selection = #page
	elseif interactivegui.selection < 1 then
		interactivegui.selection = 1
	end
end

changeInteractiveGuiSelection = function(n)
	if not interactivegui.enabled then return end
	local page = interactiveguipages[interactivegui.page] -- current page
	if (#page<=1) then
		interactivegui.selection = 1
		return
	end
	if not n then n = interactivegui.selection+1 end

	if page[n] then -- if the selection exists go there
		interactivegui.selection = n
	else -- otherwise try to wrap around
		if n == 0 then
			interactivegui.selection = #page -- goto last
		elseif n == #page+1 then
			interactivegui.selection = 1 -- goto first
		end -- otherwise do nothing
	end
end

CIG = function(page, selection) -- macro, both of these are used together so often
	changeInteractiveGuiPage(page)
	changeInteractiveGuiSelection(selection)
end

--fall backs in case can't read joypad input
input.registerhotkey(1, toggleInteractiveGuiEnabled)
input.registerhotkey(2, callGuiSelectionFunc)
input.registerhotkey(3, changeInteractiveGuiSelection)
input.registerhotkey(4, function() print(interactiveguipages[interactivegui.page][interactivegui.selection].info) end)
input.registerhotkey(5, function() recording.hitplayback = true end)

local readGUIInputs = function()
	--inspired by grouflons and crystal_cubes menus

	-- some general input stuff put at the start, could be put in its own function

	-- opening the menu and operating coin functionality
	if guiinputs.P1.coin and not guiinputs.P1.previousinputs.coin then -- one clean input
		guiinputs.P1.coinframestart = fc
		guiinputs.P1.coinpresscount = guiinputs.P1.coinpresscount+1
	end


	if fc - guiinputs.P1.coinframestart >= inputs.properties.coinleniency and guiinputs.P1.coinframestart ~= 0 and not guiinputs.P1.coin then
		if fc - guiinputs.P1.coinframestart > inputs.properties.coinleniency*3 or interactivegui.enabled then
			guiinputs.P1.coinpresscount = 0
		end
		if guiinputs.P1.coinpresscount == 1 then
			togglePlayBack(nil, {})
		elseif guiinputs.P1.coinpresscount == 2 then
			toggleRecording(nil, {})
		elseif guiinputs.P1.coinpresscount == 3 then
			toggleSwapInputs(nil, {})
		else
			toggleInteractiveGuiEnabled(nil, {})
		end
		guiinputs.P1.coinframestart = 0
		guiinputs.P1.coinpresscount = 0
	end

	-- Count how many frames each input has been held
	if guiinputs.P1.left then
		guiinputs.P1.leftframecount = guiinputs.P1.leftframecount+1
	else
		guiinputs.P1.leftframecount = 0
	end

	if guiinputs.P1.right then
		guiinputs.P1.rightframecount = guiinputs.P1.rightframecount+1
	else
		guiinputs.P1.rightframecount = 0
	end

	if guiinputs.P1.down then
		guiinputs.P1.downframecount = guiinputs.P1.downframecount+1
	else
		guiinputs.P1.downframecount = 0
	end

	if guiinputs.P1.up then
		guiinputs.P1.upframecount = guiinputs.P1.upframecount+1
	else
		guiinputs.P1.upframecount = 0
	end
end

local HUDElements = {}

toggleMoveHUD = function(bool, vargs)
	if #HUDElements==0 then return end
	
	if vargs then vargs.movehud = false end
	toggleStates(vargs)
	if bool then interactivegui.movehud = true guiinputs.P1.previousinputs.button1 = true -- stop double pressing
	elseif bool == false then interactivegui.movehud = false
	else interactivegui.movehud = not interactivegui.movehud end
	interactivegui.movehudselected = false

	inputs.properties.p1freeze = interactivegui.movehud
	inputs.properties.p2freeze = interactivegui.movehud
end

function drawHUD() -- all parts of the hud should be dropped in here

	if interactivegui.enabled or interactivegui.replayeditor.enabled then return end

	for _, v in ipairs(HUDElements) do
		if v.enabled() then v.drawfunc() end
	end
end

local hudworkingframes = function(n) -- get faster the longer it runs
	if (n < 60) then
		if n%10==1 then return 1 end -- maybe tie this to coin input leniency?
		return 0
	elseif (n < 120) then
		return 1
	elseif (n < 180) then
		return 5
	end
	return 10
end

local moveHUDFuncs = {
	
	function(but)
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then -- slct
			interactivegui.movehudselected = not interactivegui.movehudselected
		end
	end,
	
	function(but)
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then -- hide
			local enabled = HUDElements[interactivegui.movehudselection].enabled()
			if enabled==nil then enabled=false end
			HUDElements[interactivegui.movehudselection].enabled(not enabled)
		end
	end,
	
	back = function(but)
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then -- back
			toggleMoveHUD(false)
		end
	end,
	
	other = function()
		local x = HUDElements[interactivegui.movehudselection].x()
		local y = HUDElements[interactivegui.movehudselection].y()
		if interactivegui.movehudselected then 
			local d = 0
			local pos
			if guiinputs.P1.left then
				d = hudworkingframes(guiinputs.P1.leftframecount)*-1
				pos = HUDElements[interactivegui.movehudselection].x(x+d)
				if (pos < 0) then HUDElements[interactivegui.movehudselection].x(interactivegui.sw) end -- stay in bounds
			elseif guiinputs.P1.right then
				d = hudworkingframes(guiinputs.P1.rightframecount) 
				pos = HUDElements[interactivegui.movehudselection].x(x+d)
				if (pos > interactivegui.sw) then HUDElements[interactivegui.movehudselection].x(0) end -- stay in bounds
			end

			if guiinputs.P1.up then
				d = hudworkingframes(guiinputs.P1.upframecount)*-1
				pos = HUDElements[interactivegui.movehudselection].y(y+d)
				if (pos < 0) then HUDElements[interactivegui.movehudselection].y(interactivegui.sh) end -- stay in bounds
			elseif guiinputs.P1.down then
				d = hudworkingframes(guiinputs.P1.downframecount) 
				pos = HUDElements[interactivegui.movehudselection].y(y+d)
				if (pos > interactivegui.sh) then HUDElements[interactivegui.movehudselection].y(0) end -- stay in bounds
			end
		else
			if guiinputs.P1.left and not guiinputs.P1.previousinputs.left then -- switch through different elements
				interactivegui.movehudselection = interactivegui.movehudselection-1
				if interactivegui.movehudselection < 1 then interactivegui.movehudselection = #HUDElements end
			elseif guiinputs.P1.right and not guiinputs.P1.previousinputs.right then
				interactivegui.movehudselection = interactivegui.movehudselection+1
				if interactivegui.movehudselection > #HUDElements then interactivegui.movehudselection = 1 end
			end
		end
	end,
}

local moveHUD = function()

	if not interactivegui.movehud then return end

	-- pick different hud elements, hook them up to changeconfig

	t = {{name="SLCT", button="button1"}, {name="HIDE", button="button2"}, funcs=moveHUDFuncs}

	local col = 0xff8000ff -- orange
	if interactivegui.movehudselected then
		col = bit.bor(0xff0000ff, 0x00040000*(fc%40))
		t[1].name = "BACK"
	end
	local x = HUDElements[interactivegui.movehudselection].x()
	local y = HUDElements[interactivegui.movehudselection].y()
	gui.pixel(x, y, col)
	col = 0xffffffff
	local enabled = HUDElements[interactivegui.movehudselection].enabled()
	if not enabled then
		col = 0x0000ffff
		t[2].name = "SHOW"
	end
	
	local str = "("..x..","..y..")"
	local dispx, dispy = x, y-10
	if #str*4+x>interactivegui.sw then dispx = interactivegui.sw - #str*4 end
	if dispy<0 then dispy = 0 end
	gui.text(dispx, dispy, str, col)
	
	buttonHandler(t)
end

local registers = {
	registerbefore = {},
	guiregister = {},
	registerafter = {},
}

local drawcomboHUD = function()
	if combovars.p2.healthdiff > 0 then
		gui.text(hud.combotextx-4,hud.combotexty,"Damage: " ..combovars.p2.healthdiff,hud.damagetextcolour)
	else
		gui.text(hud.combotextx-4,hud.combotexty,"Damage: " .. combovars.p2.previousdamage,hud.damagetextcolour)
	end
	if modulevars.p2.inhitstun then
		gui.text(hud.combotextx,hud.combotexty+10,"Combo: "..combovars.p2.combo,hud.combotextcolour)
	else
		gui.text(hud.combotextx,hud.combotexty+10,"Combo: "..combovars.p2.displaycombo,hud.combotextcolour2)
	end
   	gui.text(hud.combotextx,hud.combotexty+20,"Total: " .. combovars.p2.comboDamage,hud.totaltextcolour)
end

toggleReplayEditor = function(bool, vargs)
	-- need state switching
	
	if bool==nil then interactivegui.replayeditor.enabled = not interactivegui.replayeditor.enabled 
	else interactivegui.replayeditor.enabled=bool end
	
	if vargs then vargs.replayeditor = false end
	toggleStates(vargs)
	
	inputs.properties.p1freeze = interactivegui.replayeditor.enabled
	inputs.properties.p2freeze = interactivegui.replayeditor.enabled
	
	if interactivegui.replayeditor.enabled then
		interactivegui.replayeditor.inputs = {[1]={},[2]={},[3]={},[4]={},[5]={}}
		for j = 1, 5 do
			local recordslot = recording[j]
			for i = 1, #recordslot do -- unserialise them all so they can be seen
				interactivegui.replayeditor.inputs[j][i] = {serial={}}
				interactivegui.replayeditor.inputs[j][i].serial.player = recordslot[i].serial.player -- copy across necessary values
				interactivegui.replayeditor.inputs[j][i].serial.other = recordslot[i].serial.other
				Unserialise(interactivegui.replayeditor.inputs[j][i], recordslot._stable, recordslot.constants) -- should be able to do these in one and buffer it
			end
		end
	else
		--if not interactivegui.replayeditor.inputs then return end
		--if not interactivegui.replayeditor.inputs[recording.recordingslot] then return end
		--if not interactivegui.replayeditor.inputs[recording.recordingslot][1] then return end
		if not interactivegui.replayeditor.changed then return end

		for j,_ in pairs(interactivegui.replayeditor.changed) do
			local recordslot = recording[j]
			recordslot.constants = joypad.get()
			recording.framestart = fc-1
			for i = 1, #interactivegui.replayeditor.inputs[j] do
				recordslot[i] = {raw = {}}
				recordslot[i].raw.p1 = copytable(interactivegui.replayeditor.inputs[j][i].raw.p1)
				recordslot[i].raw.p2 = copytable(interactivegui.replayeditor.inputs[j][i].raw.p2)
				recordslot[i].raw.other = copytable(inputs.other) -- fallback

				for i, v in pairs(recordslot[i].raw.p1) do
					if recordslot.constants["P1 "..i]~=v then recordslot.constants["P1 "..i]=nil end -- remove non-duping values from table
				end
				for i, v in pairs(recordslot[i].raw.p2) do
					if recordslot.constants["P2 "..i]~=v then recordslot.constants["P2 "..i]=nil end -- remove non-duping values from table
				end
				for i, v in pairs(recordslot[i].raw.other) do
					if recordslot.constants[i]~=v then recordslot.constants[i]=nil end -- remove non-duping values from table
				end

				if not recordslot.p1start then -- move start forward to first frame that something happens on
					if orTable(recordslot[i].raw.p1) and not recordslot[i].raw.p1.Coin then
						recordslot.p1start = fc - recording.framestart + 1
					end
				end

				if not recordslot.p2start then -- move start forward to first frame that something happens on
					if orTable(recordslot[i].raw.p2) and not recordslot[i].raw.p2.Coin then
						recordslot.p2start = fc - recording.framestart + 1
					end
				end

				if orTable(recordslot[i].raw.p1) and not recordslot[i].raw.p1.Coin then  -- put finish on the last frame that something happens
					recordslot.p1finish = fc - recording.framestart - 1
				end

				if orTable(recordslot[i].raw.p2) and not recordslot[i].raw.p2.Coin then  -- put finish on the last frame that something happens
					recordslot.p2finish = fc - recording.framestart - 1
				end
			end
		end
		interactivegui.replayeditor.changed = {}
		toggleRecording(false) -- sets up serialising stuff
	end
end

local drawReplayEditorFuncs = {
	function(but) -- set
		if interactivegui.replayeditor.framestart then return end
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then -- starts the timer
			interactivegui.replayeditor.framestart = fc 
		end
	end,
	function(but) -- copy
		if interactivegui.replayeditor.framestart or not interactivegui.replayeditor.inputs[recording.recordingslot][interactivegui.replayeditor.editframe] then return end
		local reinputs = interactivegui.replayeditor.inputs[recording.recordingslot]
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then -- something to copy
			local recordslot = recording[recording.recordingslot]
			reinputs[interactivegui.replayeditor.editframe+1] = {raw={p1={}, p2={}}}
			reinputs[interactivegui.replayeditor.editframe+1].raw.p2=copytable(reinputs[interactivegui.replayeditor.editframe].raw.p2)
			recordslot._stable = {}
			recordslot._stable.p1 = copytable(SERIALISETABLE.p1)
			recordslot._stable.p2 = copytable(SERIALISETABLE.p2)
			if not interactivegui.replayeditor.changed then interactivegui.replayeditor.changed = {} end
			interactivegui.replayeditor.changed[recording.recordingslot] = true
			interactivegui.replayeditor.editframe=interactivegui.replayeditor.editframe+1
		end
	end,
	function(but) -- delete
		if interactivegui.replayeditor.framestart then return end
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then
			interactivegui.replayeditor.inputs[recording.recordingslot][interactivegui.replayeditor.editframe] = {raw={p1={}, p2={}}}
		end
	end,
	function(but) -- dec slot
		if interactivegui.replayeditor.framestart then return end
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then
			recording.recordingslot = recording.recordingslot-1
			if recording.recordingslot <=0 then recording.recordingslot = 5 end
		end
	end,
	function(but) -- inc slot
		if interactivegui.replayeditor.framestart then return end
		if guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then
			recording.recordingslot = recording.recordingslot+1
			if recording.recordingslot >=6 then recording.recordingslot = 1 end
		end
	end,
	back = function(but)
		if interactivegui.replayeditor.framestart then return end
		if not interactivegui.replayeditor.framestart and guiinputs.P1[but] and not guiinputs.P1.previousinputs[but] then 
			toggleReplayEditor(false) 
		end
	end,
	other = function()
		if interactivegui.replayeditor.framestart then return end
		if guiinputs.P1.upframecount ~= 0 then interactivegui.replayeditor.editframe=interactivegui.replayeditor.editframe-hudworkingframes(guiinputs.P1.upframecount) end
		if guiinputs.P1.downframecount ~= 0 then interactivegui.replayeditor.editframe=interactivegui.replayeditor.editframe+hudworkingframes(guiinputs.P1.downframecount) end
	end,
}

local drawReplayEditor = function()
	if not interactivegui.replayeditor.enabled then return end
	local length = SERIALISETABLE.p1.len-1 -- don't want to include start or coin
	local recordslot = recording[recording.recordingslot]
	local reinputs = interactivegui.replayeditor.inputs[recording.recordingslot]
	
	local sw, sh = interactivegui.sw, interactivegui.sh
	
	--use these to control how a grid is drawn
	local x,y,frames = 100,10,12
	
	t = {{name="SET"}, {name="COPY"}, {name="DEL"}, {name="<SLT"}, {name="SLT>"}, funcs = drawReplayEditorFuncs}
	buttonHandler(t)
	
	if interactivegui.replayeditor.framestart then -- countdown to taking input
		gui.text(1,1,60-(fc-interactivegui.replayeditor.framestart),"red")
		if fc >= interactivegui.replayeditor.framestart+60 or interactivegui.replayeditor.framestart>fc then -- one second/failsafe
			reinputs[interactivegui.replayeditor.editframe] = {raw={p1={}, p2={}}}
			reinputs[interactivegui.replayeditor.editframe].raw.p2=copytable(inputs.p1)
			interactivegui.replayeditor.framestart=nil
			recordslot._stable = {}
			recordslot._stable.p1 = copytable(SERIALISETABLE.p1)
			recordslot._stable.p2 = copytable(SERIALISETABLE.p2)
			if not interactivegui.replayeditor.changed then interactivegui.replayeditor.changed = {} end
			interactivegui.replayeditor.changed[recording.recordingslot] = true
		end
	end
	
	-- draw in frame numbers
	if not interactivegui.replayeditor.editframe or interactivegui.replayeditor.editframe<1 then interactivegui.replayeditor.editframe = 1 end -- failsafe
	local startframe = interactivegui.replayeditor.editframe -- first frame to draw
	startframe = startframe-math.floor(frames/2)
	if not reinputs[startframe+frames] then startframe = #reinputs-frames+2 end -- display only one frame out of bounds
	if startframe<1 then startframe = 1 end -- failsafe
	if interactivegui.replayeditor.editframe>=#reinputs+1 then interactivegui.replayeditor.editframe = #reinputs+1 end -- keep selection in bounds
	for i = 1, frames do
		if startframe+i-1 == interactivegui.replayeditor.editframe then
			gui.box(x, y+16*i, x+length*16, y+16*(i+1), "gray")
		end
		gui.text(x + 16 - #tostring(startframe+i-1)*4, y+6+16*i, tostring(startframe+i-1))
	end
	
	-- draw grid
	gui.box(x,y,x+length*16,y+16, "blue") -- blue background
	gui.line(x,y,x+length*16,y) -- top line of top
	gui.line(x,y+16,x+length*16,y+16) -- underline of top
	gui.line(x,y,x,y+16+16*frames) -- first vertical line
	gui.line(x+length*16,y,x+length*16,y+16+16*frames) -- last vertical line
	gui.text(x+1,y+1,"SLOT")
	gui.text(x+7,y+8,recording.recordingslot)
	for i = 1,length-1 do
		gui.line(x+i*16,y,x+i*16,y+16+16*frames) -- vertical lines
		gui.gdoverlay(x+i*16, y, icons[16][i])
	end
	for i = 1, frames do -- should be the length of frames shown
		gui.line(x,y+16+i*16,x+length*16,y+16+i*16)
	end
	
	--deserialise and images
	--make sure that it does need to display images
	if not reinputs or not reinputs[1] then return end
	if not recordslot or not recordslot._stable or not reinputs[1].raw.p2 then return end
	
	for i = 1, frames do
		if not reinputs[startframe+i-1] then break end
		for j,v in pairs(reinputs[startframe+i-1].raw.p2) do
			if v and recordslot._stable.p2[j] and j~="Coin" then
				gui.gdoverlay(x+16*modulevars.constants.translationtable[j],y+16*i,icons[16][modulevars.constants.translationtable[j]])
			end
		end
	end
end

toggleStates = function(vargs) -- nil = false, true = true, false = skip
	if vargs == nil then return end -- bad argument
	if vargs["swapinputs"]==nil then toggleSwapInputs(false, vargs) elseif vargs["swapinputs"] then toggleSwapInputs(true, vargs) end
	if vargs["recording"]==nil then toggleRecording(false, vargs) elseif vargs["recording"] then toggleRecording(true, vargs) end
	if vargs["playback"]==nil then togglePlayBack(false, vargs) elseif vargs["playback"] then togglePlayBack(true, vargs) end
	if vargs["interactiveguienabled"]==nil then toggleInteractiveGuiEnabled(false, vargs) elseif vargs["interactiveguienabled"] then toggleInteractiveGuiEnabled(true, vargs) end
	if vargs["movehud"]==nil then toggleMoveHUD(false, vargs) elseif vargs["movehud"] then toggleMoveHUD(true, vargs) end
	if vargs["replayeditor"]==nil then toggleReplayEditor(false, vargs) elseif vargs["replayeditor"] then toggleReplayEditor(true, vargs) end
end

setRegisters = function() -- pre-calc stuff

	checkAvailableFunctions()
	setAvailableConstants()

	if availablefunctions.playertwofacingleft then
		recording.autoturn = true
	else 
		print "Can't auto-swap directions in replays"
	end

	registers.registerbefore = {updateModuleVars, readInputs, swapInputs, logRecording, applyDirection, playBack, hitPlayBack, freezePlayer, setInputs}
	registers.guiregister = {}
	registers.registerafter = {}

	if availablefunctions.run then
		table.insert(registers.guiregister, Run)
	else
		print "Nothing running every frame from memory file"
	end

	local str = ""

	if availablefunctions.readplayeronehealth then
		table.insert(HUDElements, {x = function(n) if n then changeConfig("hud", "p1healthx", n, hud) end return hud.p1healthx end, y = function(n) if n then changeConfig("hud", "p1healthy", n, hud) end return hud.p1healthy end, enabled = function(n) if n~=nil then changeConfig("hud", "p1healthenabled", n, hud) end return hud.p1healthenabled end, drawfunc = function() gui.text(hud.p1healthx, hud.p1healthy, modulevars.p1.health, hud.p1healthtextcolour) end})
		if availablefunctions.playeroneinhitstun then
			table.insert(registers.guiregister, comboHandlerP1)
		else
			print "player one hitstun not set, can't do combos.\n"
		end
	else
		print "player one health read not set, can't do combos.\n"
	end

	if availablefunctions.readplayertwohealth then
		table.insert(HUDElements, {x = function(n) if n then changeConfig("hud", "p2healthx", n, hud) end return hud.p2healthx end, y = function(n) if n then changeConfig("hud", "p2healthy", n, hud) end return hud.p2healthy end, enabled = function(n) if n~=nil then changeConfig("hud", "p2healthenabled", n, hud) end return hud.p2healthenabled end, drawfunc = function() gui.text(hud.p2healthx, hud.p2healthy, modulevars.p2.health, hud.p2healthtextcolour) end})
		if availablefunctions.playertwoinhitstun then
			table.insert(registers.guiregister, comboHandlerP2)
		else
			print "player two hitstun not set, can't do combos.\n"
		end
	else
		print "player two health read not set, can't do combos.\n"
	end

	if modulevars.p1.constants.maxhealth and availablefunctions.readplayeronehealth and availablefunctions.writeplayeronehealth and availablefunctions.playeroneinhitstun then
		table.insert(registers.registerafter, healthHandlerP1)
	else
		str = ""
		if not modulevars.p1.constants.maxhealth then
			str = str .. "max health and "
		end
		if not availablefunctions.readplayeronehealth then
			str = str .. "player one health read and "
		end
		if not availablefunctions.writeplayeronehealth then
			str = str .. "player one health write and "
		end
		if not availablefunctions.playeroneinhitstun then
			str = str .. "player one hitstun and "
		end
		print(str:sub(1,#str-5) .. " not set, can't do health refill for p1.\n")
	end

	if modulevars.p2.constants.maxhealth and availablefunctions.readplayertwohealth and availablefunctions.writeplayertwohealth and availablefunctions.playertwoinhitstun then
		table.insert(registers.registerafter, healthHandlerP2)
		table.insert(HUDElements, {x = function(n) if n then changeConfig("hud", "combotextx", n, hud) end return hud.combotextx end, y = function(n) if n then changeConfig("hud", "combotexty", n, hud) end return hud.combotexty end, enabled = function(n) if n~=nil then changeConfig("hud", "comboenabled", n, hud) end return hud.comboenabled end, drawfunc = drawcomboHUD})
	else
		str = ""
		if not modulevars.p2.constants.maxhealth then
			str = str .. "max health and "
		end
		if not availablefunctions.readplayertwohealth then
			str = str .. "player two health read and "
		end
		if not availablefunctions.writeplayertwohealth then
			str = str .. "player two health write and "
		end
		if not availablefunctions.playertwoinhitstun then
			str = str .. "player two hitstun and "
		end
		print(str:sub(1,#str-5) .. " not set, can't do health refill for p2.\n")
	end

	if modulevars.p1.constants.maxhealth and availablefunctions.writeplayeronehealth then
		table.insert(registers.registerafter, instantHealthP1)
	else
		str = ""
		if not modulevars.p1.constants.maxhealth then
			str = str .. "max health and "
		end
		if not availablefunctions.writeplayeronehealth then
			str = str .. "player one health write and "
		end
		print(str:sub(1,#str-5) .. " not set, can't do health refill for p1.\n")
	end

	if modulevars.p2.constants.maxhealth and availablefunctions.writeplayertwohealth then
		table.insert(registers.registerafter, instantHealthP2)
	else
		str = ""
		if not modulevars.p2.constants.maxhealth then
			str = str .. "max health and "
		end
		if not availablefunctions.writeplayertwohealth then
			str = str .. "player two health write and "
		end
		print(str:sub(1,#str-5) .. " not set, can't do health refill for p2.\n")
	end

	if modulevars.p1.constants.maxmeter and availablefunctions.readplayeronemeter then
		table.insert(HUDElements, {x = function(n) if n then changeConfig("hud", "p1meterx", n, hud) end return hud.p1meterx end, y = function(n) if n then changeConfig("hud", "p1metery", n, hud) end return hud.p1metery end, enabled = function(n) if n~=nil then changeConfig("hud", "p1meterenabled", n, hud) end return hud.p1meterenabled end, drawfunc = function() gui.text(hud.p1meterx, hud.p1metery, modulevars.p1.meter, hud.p1metertextcolour) end})
		if modulevars.p1.constants.maxmeter and availablefunctions.readplayeronemeter and availablefunctions.writeplayeronemeter and availablefunctions.readplayertwohealth and availablefunctions.playertwoinhitstun then
			table.insert(registers.registerafter, meterHandlerP1)
		else
			if modulevars.p1.constants.maxmeter and availablefunctions.writeplayeronemeter then
				print "Using P1 back-up Meter always full"
				table.insert(registers.registerafter, instantMeterP1)
				combovars.p1.instantrefillmeter = true
			else
				print "Can't auto-refill P1 meter"
			end
		end
	else
		print "Can't auto-refill P1 meter"
	end


	if modulevars.p2.constants.maxmeter and availablefunctions.readplayertwometer then
		table.insert(HUDElements, {x = function(n) if n then changeConfig("hud", "p2meterx", n, hud) end return hud.p2meterx end, y = function(n) if n then changeConfig("hud", "p2metery", n, hud) end return hud.p2metery end, enabled = function(n) if n~=nil then changeConfig("hud", "p2meterenabled", n, hud) end return hud.p2meterenabled end, drawfunc = function() gui.text(hud.p2meterx, hud.p2metery, modulevars.p2.meter, hud.p2metertextcolour) end})
		if availablefunctions.writeplayertwometer and availablefunctions.readplayeronehealth and availablefunctions.playeroneinhitstun then
			table.insert(registers.registerafter, meterHandlerP2)
		else
			if modulevars.p2.constants.maxmeter and availablefunctions.writeplayertwometer then
				print "Using P2 back-up Meter always full"
				table.insert(registers.registerafter, instantMeterP2)
				combovars.p2.instantrefillmeter = true
			else
				print "Can't auto-refill P2 meter"
			end
		end
	else
		print "Can't auto-refill P2 meter"
	end

	if availablefunctions.hitboxesreg and availablefunctions.hitboxesregafter then
		table.insert(registers.guiregister, hitboxesReg)
		table.insert(registers.registerafter, hitboxesRegAfter)
	else
		print "Can't display hitboxes"
	end

	if availablefunctions.inputdisplayreg then
		table.insert(registers.guiregister, inputDisplayReg)
	else
		print("Can't display simple inputs")
	end

	if availablefunctions.scrollinginputreg and availablefunctions.scrollinginputregafter then
		table.insert(registers.guiregister, scrollingInputReg)
		table.insert(registers.registerafter, scrollingInputRegAfter)
	else
		print("Can't display scrolling inputs")
	end
	
	if modulevars.constants.translationtable then
		table.insert(registers.guiregister, drawReplayEditor)
	else
		print("Can't use the replay editor")
	end

	table.insert(registers.guiregister, drawHUD)
	table.insert(registers.guiregister, drawInteractiveGui)

	if modulevars.constants.translationtable then
		table.insert(registers.guiregister, drawHelp)
		table.insert(registers.registerbefore, readGuiInputs)
		table.insert(registers.guiregister, readGUIInputs)
		table.insert(registers.guiregister, moveHUD)
	else
		print("No translation table found, can't read or process inputs from controller, or show input help, use lua hotkeys")
	end

	if scrollingInputReg then -- if scrolling-input-display.lua is loaded
		local scroll = inputs.properties.scrollinginput -- keep it short
		table.insert(HUDElements, {x = function(n) if n then changeConfig("inputs", "scrollinginputxoffset", {n, scroll.scrollinginputxoffset[2]}, scroll) end return scroll.scrollinginputxoffset[1] end, y = function(n) if n then changeConfig("inputs", "scrollinginputyoffset", {n, scroll.scrollinginputyoffset[2]}, scroll) end return scroll.scrollinginputyoffset[1] end, enabled = function(n) if n~=nil then changeConfig("inputs", "state", {n, scroll.state[2]}, scroll) scrollingInputReload() end return scroll.state[1] end, drawfunc = function() end})
		table.insert(HUDElements, {x = function(n) if n then changeConfig("inputs", "scrollinginputxoffset", {scroll.scrollinginputxoffset[1], n}, scroll) end return scroll.scrollinginputxoffset[2] end, y = function(n) if n then changeConfig("inputs", "scrollinginputyoffset", {scroll.scrollinginputyoffset[1], n}, scroll) end return scroll.scrollinginputyoffset[2] end, enabled = function(n) if n~=nil then changeConfig("inputs", "state", {scroll.state[1], n}, scroll) scrollingInputReload() end return scroll.state[2] end, drawfunc = function() end})
	end

	emu.registerbefore(function ()
		fc = emu.framecount() -- update framecount
		for _,v in pairs(registers.registerbefore) do
			v()
		end
	end)

	gui.register(function ()
		for _,v in ipairs(registers.guiregister) do
			v()
		end
	end)

	local garbage = 	function () -- garbage collection
							if collectgarbage("count") > 5000 then -- not sure how much garbage fbneo can handle at a time
								collectgarbage("collect") -- garbage mostly comes from redoing gdimages in scrolling inputs and replays
							end
						end

	emu.registerafter(function ()
		for _,v in ipairs(registers.registerafter) do
			v()
		end
		garbage()
	end)

	print()
	usage()
end

local saveprocedure = function()
	toggleStates({})
end

local loadprocedure = function()
	toggleStates({})
end

local exitprocedure = function()
	saveConfig()
end

savestate.registersave(saveprocedure)
savestate.registerload(loadprocedure)
emu.registerexit(exitprocedure)

setRegisters()
