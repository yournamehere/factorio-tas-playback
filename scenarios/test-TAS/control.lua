-- This is the main file of the default TAS scenario. 
-- It will run a dummy scenario that allows to test the TAS mod. 
require("configuration")
local commandqueue = require(run_file)

script.on_event(defines.events.on_player_created, function(event)
	if autorun then
		remote.call("TAS_playback", "launch", commandqueue)
	end
end)
