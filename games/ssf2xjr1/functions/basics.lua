-------------------------------------
-- Variables and functions required
-- by fbneo-training-mode.lua
-------------------------------------
--------------------------
-- translationtable
--------------------------
translationtable = {
	"left",
	"right",
	"up",
	"down",
	"button1",
	"button2",
	"button3",
	"button4",
	"button5",
	"button6",
	"coin",
	"start",
	["Left"] = 1,
	["Right"] = 2,
	["Up"] = 3,
	["Down"] = 4,
	["Weak Punch"] = 5,
	["Medium Punch"] = 6,
	["Strong Punch"] = 7,
	["Weak Kick"] = 8,
	["Medium Kick"] = 9,
	["Strong Kick"] = 10,
	["Coin"] = 11,
	["Start"] = 12,
}
---------------------------------
-- Basic Functions
---------------------------------
trainingmaxhealth = 0x7fff
p1maxhealth = trainingmaxhealth
p2maxhealth = trainingmaxhealth
p1maxmeter = 0x30
p2maxmeter = 0x30

local max_meter = {p1maxmeter, p2maxmeter}
local max_health = {p1maxhealth, p2maxhealth}
local dizzy = {false, false} -- this is needed for the combo counter to work properly
local need_health_refill = {false, false}

local function playerInHitstun(_player_obj)
	if _player_obj.dizzy then
		if not dizzy[_player_obj.id] then
			dizzy[_player_obj.id] = true
			return true
		else
			return false
		end
	else
		dizzy[_player_obj.id] = false
	end
	if _player_obj.state == being_hit then
		return true
	end
	return false
end

local function readHealth(_player_obj)
	if not gamestate.is_in_match then return 0 end
	if REPLAY then return _player_obj.life end
	-- this must be life_backup (health at previous frame, otherwise breaks the combo counter)
	if max_health[_player_obj.id] == trainingmaxhealth then
		return _player_obj.life_backup-(trainingmaxhealth-144)
	else
		return _player_obj.life_backup
	end
end

local function writeHealth(_player_obj, health)
	if REPLAY then return end
	local prefix = _player_obj.id == 1 and "p1" or "p2"
	if not combovars[prefix].refillhealthenabled then
		return
	end
	local defender = _player_obj
	local attacker = defender.id == 1 and gamestate.P2 or gamestate.P1
	local refill = false
	if defender.life < 16 then
		-- if health < 16 we refill regardless of the state to avoid round ending
		refill = true
	elseif defender.life < 33 and defender.prev.state ~= doing_special_move and defender.state ~= being_hit then
		-- if health < 33 we refill even if it will cause some small glitches
		refill = true
	elseif ((defender.life < max_health[defender.id]) and (defender.state ~= being_thrown and defender.state ~= being_hit and defender.state ~= blocking_attempt) and (attacker.state == crouching or attacker.state == standing) and (attacker.projectile_ready)) then
		-- this only refills when attacker is idle or crouching and defender is not blocking or after being hit/thrown
		refill = true
	end
	if refill then
		ww(defender.addresses.life, max_health[defender.id])
		ww(defender.addresses.life_backup,  max_health[defender.id])
		ww(defender.addresses.life_hud,  max_health[defender.id])
		need_health_refill[defender.id] = false
	end
end

local function readMeter(_player_obj)
	if gamestate.curr_state == in_match then
		return _player_obj.special_meter
	else
		return max_meter[_player_obj.id]
	end
end

local function writeMeter(_player_obj, meter)
	if REPLAY then return end
	if gamestate.curr_state == in_match then
		wb(_player_obj.addresses.special_meter, meter)
	end
end

function playerOneInHitstun()
	return playerInHitstun(gamestate.P1)
end

function playerTwoInHitstun()
	return playerInHitstun(gamestate.P2)
end

function readPlayerOneHealth()
	return readHealth(gamestate.P1)
end

function readPlayerTwoHealth()
	return readHealth(gamestate.P2)
end

function writePlayerOneHealth(health)
	writeHealth(gamestate.P1, health)
end

function writePlayerTwoHealth(health)
	writeHealth(gamestate.P2, health)
end

function readPlayerOneMeter()
	return readMeter(gamestate.P1)
end

function readPlayerTwoMeter()
	return readMeter(gamestate.P2)
end

function writePlayerOneMeter(meter)
	writeMeter(gamestate.P1, meter)
end

function writePlayerTwoMeter(meter)
	writeMeter(gamestate.P2, meter)
end
------------------------
-- neverEnd()
------------------------
local infiniteTime = function()
	if REPLAY then return end
	if (gamestate.round_timer < 0x98) then
		ww(addresses.global.round_timer,0x9928)
	end
end

local function infiniteLife(_player_obj)
	if REPLAY then return end
	local DEBUG = false
	local scaledhealth = max_health[_player_obj.id]
	local prefix = _player_obj.id == 1 and "p1" or "p2"

	-- no health refill
	if not combovars[prefix].refillhealthenabled then
		if _player_obj.life > 144 and _player_obj.life <= trainingmaxhealth then
			max_health[_player_obj.id] = 144
			ww(_player_obj.addresses.life, max_health[_player_obj.id])
			ww(_player_obj.addresses.life_backup, max_health[_player_obj.id])
			ww(_player_obj.addresses.life_hud, max_health[_player_obj.id])
		end
		return
	end

	if _player_obj.life <= 144 then
		max_health[_player_obj.id] = trainingmaxhealth
		need_health_refill[_player_obj.id] = true
	end

	-- health always full
	if combovars[prefix].instantrefillhealth then
		scaledhealth = _player_obj.life
		ww(_player_obj.addresses.life_hud, scaledhealth)
	end

	-- refill after combo, compute the scaled health value to display
	if not combovars[prefix].instantrefillhealth then
		scaledhealth = 144-(max_health[_player_obj.id]-_player_obj.life)
		local limit = scaledhealth
		if scaledhealth >= 144 then
			scaledhealth = max_health[_player_obj.id]
		end
		if (_player_obj.life_hud > scaledhealth) and _player_obj.life_hud < 144 then
			scaledhealth = _player_obj.life_hud
		end
		if (_player_obj.life_hud > scaledhealth) and _player_obj.life_hud >= max_health[_player_obj.id] - 1 and limit > 0 then
			scaledhealth = 144
			if DEBUG then print("[".._player_obj.prefix.."] >>>>>> 144") end
		end
		if _player_obj.life_hud <= limit + 1 then
			scaledhealth = limit + 1
		end
		if scaledhealth <= 0 then
			scaledhealth = 0
		end
		if DEBUG and scaledhealth ~= max_health[_player_obj.id] then print("[".._player_obj.prefix.."] SCALED: "..scaledhealth.." / ".._player_obj.life_hud.." ["..limit.."]") end
		ww(_player_obj.addresses.life_hud, scaledhealth)
	end

	-- refill after being thrown or hold
	if (_player_obj.state == standing and _player_obj.prev.state==standing and _player_obj.life < max_health[_player_obj.id]) or (_player_obj.state == landing and _player_obj.prev.state == being_thrown) or (_player_obj.state == standing and _player_obj.prev.state == being_thrown) or (_player_obj.state == jumping and _player_obj.prev.state == being_hit) or (_player_obj.state == landing and _player_obj.prev.state == being_hit) then
		need_health_refill[_player_obj.id] = true
	end

	if need_health_refill[_player_obj.id] then
		writeHealth(_player_obj, max_health[_player_obj.id])
	end

end

neverEnd = function()
	if REPLAY then return end
	if not gamestate.is_in_match then
		return
	end
	infiniteTime()
	infiniteLife(gamestate.P1)
	infiniteLife(gamestate.P2)
end