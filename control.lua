require("util")
require("utility_functions")
require("silo-script")

-- TODO: SOLVE JOINING PLAYERS; SOLVE THE RUNNER LEAVING (or not lol)

-- Global variables initialization
local max_tick = 0

-- Get the path of the scenario and the name of the run file through a very dirty trick
for k,v in pairs(remote.interfaces) do
	tas_name = tas_name or string.match(k,"^TASName_(.+)$")
	run_file = run_file or string.match(k,"^TASFile_(.+)$")
end
-- Get the run instructions every time the game is loaded
if tas_name and run_file then
	commandqueue = require("scenarios." .. tas_name .. "." .. run_file)
	-- determine last tick, each time the run is loaded
	for k,v in pairs(commandqueue) do 
		if type(k) == "number" and (k > max_tick) then -- Makes sure that k is actually bigger than our current max_tick
			max_tick = k
		end
	end
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
function init_run(myplayer_index)
	debugprint("Initializing the run")
	-- Examine the command queue for errors. 
	if not commandqueue then
		errprint("The command queue is empty! No point in starting.")
		return
	end
	debugprint("Command queue size is " .. table_size(commandqueue)) --includes settings "field"
	if max_tick == 0 then
		errprint("The command queue is empty! No point in starting.")
		return
	end
	if not commandqueue.settings then
		errmessage("The settings for of the command queue don't exist.")
		return
	end
	-- Applying command queue settings
	global.allowspeed = commandqueue.settings.allowspeed
	debugprint("Changing the speed of the run through commands is " .. ((global.allowspeed and "allowed") or "forbidden") .. ".")
	-- Initiating the game:
	-- Prepare the world
	local player = game.players[myplayer_index]
	global.myplayer = player
	player.surface.always_day = true
	player.game_view_settings.update_entity_selection = false
	player.game_view_settings.show_entity_info = true
	-- Prepare the players:
	-- Make all non-running players unable to interact with the world and have no body (character)
	-- set up permissions
	local spectators = game.permissions.create_group("Spectator")
	for _, input_action in pairs(defines.input_action) do
		spectators.set_allows_action(input_action, false)
	end
	local allowed_actions = {defines.input_action.start_walking, defines.input_action.open_gui, defines.input_action.open_technology_gui, defines.input_action.open_achievements_gui, defines.input_action.open_trains_gui, defines.input_action.open_train_gui, defines.input_action.open_train_station_gui, defines.input_action.open_bonus_gui, defines.input_action.open_production_gui, defines.input_action.open_kills_gui, defines.input_action.open_logistic_gui, defines.input_action.open_equipment, defines.input_action.open_item, defines.input_action.write_to_console}
	for _, input_action in pairs(allowed_actions) do
		spectators.set_allows_action(input_action, true)
	end
	-- make everyone spectator except the runner
	for _, player in pairs(game.connected_players) do
		if player.index ~= myplayer_index then
			local char_entity = player.character
			player.character = nil
			char_entity.destroy()
			player.game_view_settings.show_entity_info = true
			player.game_view_settings.show_controller_gui = false
			spectators.add_player(player)
		end
	end
	-- Prepare the runner
	init_player(player)
	
	global.start_tick = game.tick
	debugprint("Starting tick is " .. global.start_tick)
	
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

function init_player(player)
	player.teleport({0,0})
	init_player_inventory(player)
end

function init_world(player_index) --does what the freeplay scenario usually does
	local myplayer = game.players[player_index]
	-- Reveal the map around the player
	local pos = myplayer.position
	myplayer.force.chart(myplayer.surface, {{pos.x - 200, pos.y - 200}, {pos.x + 200, pos.y + 200}})
	silo_script.gui_init(player)
end

function end_of_input(player)
	if commandqueue.settings.end_tick_debug then
		player.game_view_settings.update_entity_selection = true
	end
end

script.on_event(defines.events.on_tick, function(event)
	if commandqueue and global.running then
		local tick = game.tick - global.start_tick
		local myplayer = global.myplayer
		if commandqueue[tick] then
			for k,v in pairs(commandqueue[tick]) do
				TAScommands[v[1]](v, myplayer)
			end
		end
		myplayer.walking_state = global.walkstate
		if not global.minestate then 
			myplayer.mining_state = {mining = false}
		else
			myplayer.update_selected_entity(global.minestate)
			myplayer.mining_state = {mining = true, position = global.minestate}
		end
		if tick == max_tick then
			end_of_input(myplayer)
		end
	end
end)

script.on_event(defines.events.on_player_created, function(event)
	init_world(event.player_index)
	if global.init_on_player_created and (event.player_index == 1) then -- Only the first player created automatically starts the run
		init_run(event.player_index)
	end
end)

-- Create the interface and command that allow to launch a run
script.on_init(function()
	-- Global variables initialization
	global.walkstate = {walking = false}
	silo_script.init()
end)

remote.add_interface("TAS_playback", {launch = function() 
	global.init_on_player_created = true
end})

commands.add_command("init_run", "Start the speedrun", function(event)
	if not game.players[event.player_index].admin then
		game.players[event.player_index].print("Only admins can start the run.")
	elseif global.running then 
		game.players[event.player_index].print("The run has already been started.")
	elseif event.player_index ~= 1 then
		game.players[event.player_index].print("Only the host can start the run, otherwise the run will fail. At some point. At a different point each run. Reason: http://i.imgur.com/kQykaQd.png")
	else
		init_run(event.player_index)
	end
end)

--freeplay scenario rocket launch stuff
script.on_event(defines.events.on_gui_click, function(event)
  silo_script.on_gui_click(event)
end)

script.on_event(defines.events.on_rocket_launched, function(event)
  silo_script.on_rocket_launched(event)
end)

silo_script.add_remote_interface()
