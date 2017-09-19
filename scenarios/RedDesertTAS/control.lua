-- This is the main file of the default TAS scenario. 
-- It will run a dummy scenario that allows to test the TAS mod. 
local config = require("configuration")
-- local commandqueue = require(run_file)

script.on_event(defines.events.on_player_created, function(event)
	if config.autorun then
		remote.call("TAS_playback", "launch")
	end
end)
-- These interface are only there to transmit information to the mod without being allowed to.
remote.add_interface("TASName_" .. config.run_name, {})
remote.add_interface("TASFile_" .. config.run_file, {})
