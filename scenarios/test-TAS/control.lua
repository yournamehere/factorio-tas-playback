-- This is the main file of the default TAS scenario. 
-- It will run a dummy scenario that allows to test the TAS mod. 
require("configuration")
-- local commandqueue = require(run_file)

script.on_event(defines.events.on_player_created, function(event)
	if autorun then
		remote.call("TAS_playback", "launch")
	end
end)
-- These interface are only there to transmit information to the mod without being allowed to.
remote.add_interface("TASName_" .. run_name, {})
remote.add_interface("TASFile_" .. run_file, {})
