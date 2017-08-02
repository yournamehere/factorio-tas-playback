require("util")
-- Utility functions

function roundn(x)
  return x + 0.5 - (x + 0.5) % 1
end

function inrange(position)
  return ((position[1]-myplayer.position.x)^2+(position[2]-myplayer.position.y)^2) < 36
end

function debugprint(msg)
	if settings.global["tas-verbose-logging"].value then 
		outp = myplayer or game
		outp.print("[" .. game.tick .. "] " .. msg)
	end
end

function errprint(msg)
	outp = myplayer or game
	outp.print("[" .. game.tick .. "]  ___WARNING___ " .. msg)
end

-- Global variables initialization
myplayer = nil
init_on_player_created = false
global.walkstate = {walking = false}
global.minestate = nil
global.allowspeed = nil
global.start_tick = nil
global.running = false

-- Get the path of the scenario and the name of the run file through a very dirty trick
for k,v in pairs(remote.interfaces) do
	tas_name = tas_name or string.match(k,"^TASName_(.+)$")
	run_file = run_file or string.match(k,"^TASFile_(.+)$")
end
-- Get the run instructions everytime the game is loaded
if tas_name and run_file then
	commandqueue = require("scenarios." .. tas_name .. "." .. run_file)
else
	-- Currently throw a standard lua error since the custom error management system we use cannot be used. Nothing's initialized !!! 
	error("The run's scenario doesn't seem to be running. Please make sure you launched the scenario. ")
end
-- Get the commands that the speedrun can use
local TAScommands = require("commands")

------------------------------------
-- Functions that control the run --
------------------------------------
-- This function initializes the run's clock and a few properties
function init_run()
	debugprint("Initializing the run")
	local count = 0
	local tickcount = 0
	if not commandqueue then
		errprint("The command queue is empty ! No point in starting.")
		return
	end
	for k,v in pairs(commandqueue) do 
		count = count+1
		tickcount = tickcount + ((type(k) == "number" and 1) or 0) 
	end
	debugprint("command queue size is " .. count)
	if tickcount == 0 then
		errprint("The command queue is empty ! No point in starting.")
		return
	end
	
	if not commandqueue.settings then
		errmessage("The settings for of the command queue don't exist.")
		return
	end
	global.allowspeed = commandqueue.settings.allowspeed
	init_player()
	
	global.start_tick = game.tick
	debugprint("Stating tick is " .. global.start_tick)
	
	global.running = true
end

-- Initialize the player's inventory
function init_player_inventory(player)
	player.clear_items_inside()
	player.insert{name="iron-plate", count=8}
	player.insert{name="pistol", count=1}
	player.insert{name="firearm-magazine", count=10}
	player.insert{name="burner-mining-drill", count = 1}
	player.insert{name="stone-furnace", count = 1}
end

function init_player()
	myplayer.teleport({0,0})
	init_player_inventory(myplayer)
end

function init_world(player_index)
	myplayer = game.players[player_index]
	global.myplayer = myplayer
	game.surfaces["nauvis"].always_day = true
	myplayer.game_view_settings.update_entity_selection = false
	-- Reveal the map around the player
	myplayer.force.chart(myplayer.surface, {{myplayer.position.x - 200, myplayer.position.y - 200}, {myplayer.position.x + 200, myplayer.position.y + 200}})
end

script.on_event(defines.events.on_tick, function(event)
	if commandqueue and global.running then
		local tick = game.tick - global.start_tick
		if not myplayer then myplayer = global.myplayer end
		if commandqueue[tick] then
			for k,v in pairs(commandqueue[tick]) do
				TAScommands[v[1]](v)
			end
		end
		myplayer.walking_state = global.walkstate
		if not global.minestate then 
			myplayer.mining_state = {mining = false}
		else
			myplayer.update_selected_entity(global.minestate)
			myplayer.mining_state = {mining = true, position = global.minestate}
		end
	end
end)

script.on_event(defines.events.on_player_created, function(event)
	init_world(event.player_index)
	if init_on_player_created then
		init_run()
	end
end)

-- Create the interface and command that allow to launch a run
script.on_init(function()
	remote.add_interface("TAS_playback", {launch = function() 
		-- The event on_player_created of the scenario is triggered before the mod sees the player as created
		if game.player then
			init_run()
		else
			init_on_player_created = true
		end
	end})
	commands.add_command("init_run", "Start the speedrun", init_run)
end)