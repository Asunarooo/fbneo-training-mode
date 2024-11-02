------------------------------------------------------------
--	 Messages -- Borrowed from sako.lua by Born2SPD
------------------------------------------------------------
-- Messages in the middle of the screen
msg1 = ""
msg2 = ""
msg3 = ""
-- Messages following the players
player_msg1 = {"",""}
player_msg2 = {"",""}
-- Messages timer
MSG_FRAMELIMIT = 600
msg_fcount = 0
player_msg1_fcount = {0,0}
player_msg2_fcount = {0,0}

function update_msg(code)
	if code == 0 then -- reset general messages
		msg1 = ""
		msg2 = ""
		msg3 = ""
		msg_fcount = 0
	elseif code == -11 then -- reset player messages
		player_msg1[1] = ""
		player_msg1_fcount[1] = 0
	elseif code == -12 then
		player_msg2[1] = ""
		player_msg2_fcount[1] = 0
	elseif code == -21 then
		player_msg1[2] = ""
		player_msg1_fcount[2] = 0
	elseif code == -22 then
		player_msg2[2] = ""
		player_msg2_fcount[2] = 0
	end
end

function reset_msg()
	update_msg(0)
end

function reset_player_msg1(player)
	if player == 1 then
		update_msg(-11)
	elseif player == 2 then
		update_msg(-21)
	end
end

function reset_player_msg2(player)
	if player == 1 then
		update_msg(-12)
	elseif player == 2 then
		update_msg(-22)
	end
end

function get_player_msg_x(_player_obj)
	return (_player_obj.pos_x-gamestate.screen_x)-15
end

function get_player_msg_y(_player_obj)
	local character = _player_obj.character
	local screen_y = 0
	
	if character == Boxer or character == Zangief then
		screen_y = 120
	elseif character == Claw or character == Hawk or character == Sagat then
		screen_y = 110
	elseif character == Deejay then
		screen_y = 125
	else
		screen_y = 135
	end
	return screen_y-_player_obj.pos_y
end 

local function drawMessages()
	-- General messages
	if msg_fcount >= MSG_FRAMELIMIT then
		reset_msg()
	elseif msg_fcount > 0 then
		msg_fcount = countFrames(msg_fcount)
	end
	-- P1 messages
	if player_msg1_fcount[1] >= MSG_FRAMELIMIT then
		reset_player_msg1(1)
	elseif player_msg1_fcount[1] > 0 then
		player_msg1_fcount[1] = countFrames(player_msg1_fcount[1])
	end
	if player_msg2_fcount[1] >= MSG_FRAMELIMIT then
		reset_player_msg2(1)
	elseif player_msg2_fcount[1] > 0 then
		player_msg2_fcount[1] = countFrames(player_msg2_fcount[1])
	end
	-- P2 messages
	if player_msg1_fcount[2] >= MSG_FRAMELIMIT then
		reset_player_msg1(2)
	elseif player_msg1_fcount[2] > 0 then
		player_msg1_fcount[2] = countFrames(player_msg1_fcount[2])
	end
	if player_msg2_fcount[2] >= MSG_FRAMELIMIT then
		reset_player_msg2(2)
	elseif player_msg2_fcount[2] > 0 then
		player_msg2_fcount[2] = countFrames(player_msg2_fcount[2])
	end
	-- Draw
	gui.text(92,78,msg1)
	gui.text(92,86,msg2)
	gui.text(92,94,msg3)
	gui.text(get_player_msg_x(gamestate.P1),get_player_msg_y(gamestate.P1),player_msg1[1])
	gui.text(get_player_msg_x(gamestate.P1),get_player_msg_y(gamestate.P1)+10,player_msg2[1])
	gui.text(get_player_msg_x(gamestate.P2),get_player_msg_y(gamestate.P2),player_msg1[2])
	gui.text(get_player_msg_x(gamestate.P2),get_player_msg_y(gamestate.P2)+10,player_msg2[2])
end