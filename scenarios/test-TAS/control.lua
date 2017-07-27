-- This is the main file of the default TAS scenario. 
-- It will run a dummy scenario that allows to test the TAS mod. 
require("configuration")
local commandqueue = require(run_file)

script.on_event(defines.events.on_player_created, function(event)
	local myplayer = game.players[1]
	myplayer.insert{name="iron-plate", count=8}
	myplayer.insert{name="pistol", count=1}
	myplayer.insert{name="firearm-magazine", count=10}
	myplayer.insert{name="burner-mining-drill", count = 1}
	myplayer.insert{name="stone-furnace", count = 1}
	if autorun then
		remote.call("TAS_playback", "launch", commandqueue)
	end
end)
