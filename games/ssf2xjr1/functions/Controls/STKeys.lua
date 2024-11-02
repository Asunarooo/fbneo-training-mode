-------------------------------------------------------------------------------------------
-- Translating keys ("LP","MP"...) into a correct format ("button1", "button2"...)
-------------------------------------------------------------------------------------------
ST_keys = {"left","right","up","down","LP","MP","HP","LK","MK","HK","coin","start"}
keys_translation = {"left","right","up","down","button1","button2","button3","button4","button5","button6","coin","start"}

function keyToButton(key) -- Return the corresponding button of a key ("LP" = "button1" etc.)
	for i = 1, #ST_keys do
		if ST_keys[i] == key then
			return keys_translation[i]
		end
	end
end

function buttonToKey(button) -- Return the corresponding key of a button
	for i = 1, #keys_translation do
		if keys_translation[i] == button then
			return ST_keys[i]
		end
	end
end
