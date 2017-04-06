-- Create a namespace.
PlayedAll = {}

PlayedAll.name = "PlayedAll"

-- Addon's Init function.
function PlayedAll:Initialize()

end

-- When addons are loaded, run our plugin's init function.
function PlayedAll.OnAddOnLoaded(event, addonName)
	if addonName == PlayedAll.name then
		PlayedAll:Initialize()
	end
end

function playedAll()
	d('Ran /playedall.')
end

EVENT_MANAGER:RegisterForEvent(PlayedAll.name, EVENT_ADD_ON_LOADED, PlayedAll.OnAddOnLoaded)
SLASH_COMMANDS["/playedall"] = playedAll
