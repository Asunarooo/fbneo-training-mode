-----------------------------
-- Enable/Disable easy charge
-----------------------------
local easyCharge = function(_player_obj)
	if _player_obj.character == Honda and _player_obj.is_old then
		wb(_player_obj.base + 0x81, 0x01) --B,F+P
	end
	if _player_obj.character == Honda and _player_obj.is_old and rb(0xAA+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xAB, 0x01) --D,U+K
	end
	if _player_obj.character == Honda and not _player_obj.is_old and rb(0x88+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x89, 0x01) --B,F+P
	end
	if _player_obj.character == Honda and not _player_obj.is_old and rb(0x90+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x91, 0x01) --D,U+K
	end
	if _player_obj.character == Honda and not _player_obj.is_old and rb(0x94+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x95, 0x01) --B,F,B,F+P
	end
 ------------------------------------
	if _player_obj.character == Blanka then
		wb(_player_obj.base + 0x81, 0x01) --B,F+P
		wb(_player_obj.base + 0xB4, 0x01) --D,U+K
		wb(_player_obj.base + 0xBA, 0x01) --B,F+K
		wb(_player_obj.base + 0xC2, 0x01) --B,F,B,F+P
	end
------------------------------------
	if _player_obj.character == Guile then
		wb(_player_obj.base + 0x81, 0x01) --B,F+P
		wb(_player_obj.base + 0x87, 0x01) --D,U+K
		wb(_player_obj.base + 0x95, 0x01) --D,F,B,U+K
	end
------------------------------------
	if _player_obj.character == Chun then
		wb(_player_obj.base + 0x81, 0x01) --B,F+P
	end
	if _player_obj.character == Chun and rb(0xB0+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xB1, 0x01) --B,F,B,F+K
	end
	if _player_obj.character == Chun and rb(0xBA+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xBB, 0x01) --D,U+K
	end
	if _player_obj.character == Chun and rb(0xBF+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xC0, 0x01) --B,F+K
	end
------------------------------------
	if _player_obj.character == Dictator then
		wb(_player_obj.base + 0x81, 0x01) --B,F+P
		wb(_player_obj.base + 0x89, 0x01) --B,F+K
		wb(_player_obj.base + 0x92, 0x01) --D,U+K
		wb(_player_obj.base + 0xC6, 0x01) --B,F,B,F+K
	end
	if _player_obj.character == Dictator and rb(0xAC+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xAD, 0x01) --D,U+P
	end
------------------------------------
	if _player_obj.character == Boxer then
		wb(_player_obj.base + 0x81, 0x01)  --B,F+P
		wb(_player_obj.base + 0x89, 0x01)  --B,F+K
		wb(_player_obj.base + 0xC1, 0x01)  --D,U+P
		wb(_player_obj.base + 0xD7, 0x01)  --B,DF+P
		wb(_player_obj.base + 0xDE, 0x01)  --B,DF+K
	end
	if _player_obj.character == Boxer and not _player_obj.is_old and rb(0xD4+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xD5, 0x01)--B,F,B,F+P
	end
------------------------------------
	if _player_obj.character == Claw and rb(0x88+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x89, 0x01)--B,F+P
	end
	if _player_obj.character == Claw and rb(0x8C+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x8D, 0x01)--D,U+K
	end
	if _player_obj.character == Claw and rb(0x90+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x91, 0x01)--D,U+P
	end
	if _player_obj.character == Claw and rb(0x99+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x9A, 0x01)--D,F,B,U+K
	end
	if _player_obj.character == Claw and rb(0x9D+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x9E, 0x01)--DB,F+K
	end
------------------------------------
	if _player_obj.character == Deejay and rb(0x92+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x93, 0x01) --B,F+K
	end
	if _player_obj.character == Deejay and rb(0x96+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0x97, 0x01) --D,U+P
	end
	if _player_obj.character == Deejay and rb(0xA6+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xA7, 0x01) --B,F+P
	end
	if _player_obj.character == Deejay and rb(0xAB+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xAC, 0x01) --D,U+K
	end
	if _player_obj.character == Deejay and rb(0xAF+_player_obj.base) <= 0x02 then
		wb(_player_obj.base + 0xB0, 0x01) --B,F,B,F+K
	end
end
-------------------------------

easyChargeControl = function ()
	if REPLAY then return end
	if easy_charge_moves_selector == 0 or easy_charge_moves_selector == 2 then
		easyCharge(gamestate.P1)
	end
	if easy_charge_moves_selector == 1 or easy_charge_moves_selector == 2 then
		easyCharge(gamestate.P2)
	end
end