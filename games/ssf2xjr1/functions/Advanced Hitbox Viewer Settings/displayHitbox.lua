local function updateButton()

local but = ST_buttons["Training"]["Advanced Hitbox Viewer Settings"]

but["Display Player 1 Hitboxes"].autofunc = function()
	but["Display Player 1 Hitbox"].name = "Display "..printName(player[1]).."'s Hitboxes"
end

but["Display Player 2 Hitboxes"].autofunc = function()
	but["Display Player 2 Hitbox"].name = "Display "..printName(player[2]).."'s Hitboxes"
end

end