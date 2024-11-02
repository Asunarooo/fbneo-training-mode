function saveStatus()
	local savestate_name = "Savestate "..ST_buttons["Training"]["Basic Settings"]["Save Status"].popup["Slot"].selector + 1
	local new_savestate = savestate.create(savestate_name)
	savestate.save(new_savestate)
	os.rename("./"..savestate_name,"./"..savestate_path.."custom_savestates/"..savestate_name..".fs")
end

function replaySavedStatus()
	local savestate_name = "Savestate "..ST_buttons["Training"]["Basic Settings"]["Replay Saved Status"].popup["Slot"].selector + 1
	interactivegui.enabled = false
	savestate.load(savestate_path.."custom_savestates/"..savestate_name..".fs")
end