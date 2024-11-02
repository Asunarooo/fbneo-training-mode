local turbo = {turbo1, turbo2, turbo3, turbo4} -- see data/universal/constants.lua

function gameSpeed()
	wb(addresses.global.frameskip, turbo[ST_buttons["Training"]["Environment Settings"]["Game Speed Setting"].selector + 1])
end