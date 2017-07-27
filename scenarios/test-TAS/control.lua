-- This is the main file of the default TAS scenario. 
-- It will run a dummy scenario that allows to test the TAS mod. 
require("configuration")
local commandqueue = require(run_file)

function TAS_init()
	--global.TAS_runs[run_name] = commandqueue
end

script.on_init(function()
	TAS_init()
end)


script.on_event(defines.events.on_player_created, function(event)
	if autorun then
		game.print("launching the run")
		remote.call("TAS_playback", "launch", commandqueue)
	end
end)
