require("util")

myplayer = nil
global.walkstate = {walking = false}
global.minestate = nil

local directions = {}
directions["STOP"] = {walking = false}
directions["N"] =  {walking = true, direction = defines.direction.north}
directions["E"] =  {walking = true, direction = defines.direction.east}
directions["S"] =  {walking = true, direction = defines.direction.south}
directions["W"] =  {walking = true, direction = defines.direction.west}
directions["NE"] = {walking = true, direction = defines.direction.northeast}
directions["NW"] = {walking = true, direction = defines.direction.northwest}
directions["SE"] = {walking = true, direction = defines.direction.southeast}
directions["SW"] = {walking = true, direction = defines.direction.southwest}

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

local commands = {}

commands["move"] = function (tokens)
  debugprint("Moving: " .. tokens[2])
  global.walkstate = directions[tokens[2]]
  if tokens[2] == "STOP" then
    debugprint("Stopped at: (" .. myplayer.position.x .. "," .. myplayer.position.y .. ")")
  end
end

commands["craft"] = function (tokens)
  myplayer.begin_crafting{recipe = tokens[2], count = tokens[3] or 1}
  debugprint("Crafting: " .. tokens[2] .. " x" .. (tokens[3] or 1))
end

commands["stopcraft"] = function (tokens)
  myplayer.cancel_crafting{index = tokens[2], count = tokens[3] or 1}
  debugprint("Craft abort: Index " .. tokens[2] .. " x" .. (tokens[3] or 1))
end

commands["mine"] = function (tokens)
  local position = tokens[2]
  if position then
    if position[1] ~= roundn(position[1]) or position[2] ~= roundn(position[2]) then
      hasdecimals = true
    else
      hasdecimals = false
    end
  end

  if not position or hasdecimals then global.minestate = position
  else global.minestate = {position[1] + 0.5, position[2] + 0.5} end

  if position then
    if hasdecimals then debugprint("Mining: Coordinates (" .. position[1] .. "," .. position[2] .. ")")
    else debugprint("Mining: Tile (" .. position[1] .. "," .. position[2] .. ")") end
  else debugprint("Mining: STOP") end
end

commands["build"] = function (tokens)
  local item = tokens[2]
  local position = tokens[3]
  local direction = tokens[4]
  debugprint("Building: " .. item .. " on tile (" .. position[1] .. "," .. position[2] .. ")")

  -- Check if we have the item
  if myplayer.get_item_count(item) == 0 then 
    errprint("Build failed: No item available")
    return
  end

  -- Check if we are in reach of this tile
  if not inrange(position) then 
    errprint("Build failed: You are trying to place beyond realistic reach")
    return
  end
  
  -- Check if we can actually place the item at this tile
  local canplace = myplayer.surface.can_place_entity{name = item, position = position, force = "player"}  
  if not canplace then 
    errprint("Build failed: Something is in the way")
    return
  end
  
  -- If no errors, proceed to actually building things
  -- Place the item
  asm = myplayer.surface.create_entity{name = item, position = position, direction = direction, force="player"}
  -- Remove the placed item from the player (since he has now spent it)
  if asm then myplayer.remove_item({name = item, count = 1})
    else errprint("Build failed: Reason unknown.") end
  
end

commands["put"] = function (tokens)
  local position = tokens[2]
  local item = tokens[3]
  local amount = tokens[4]
  local slot = tokens[5]

  myplayer.update_selected_entity(position)

  if not myplayer.selected then
    errprint("Put failed: No object at position {" .. position[1] .. "," .. position[2] .. "}.")
    return
  end

  if not inrange(position) then
    errprint("Put failed: You are trying to reach too far.")
    return
  end

  local amountininventory = myplayer.get_item_count(item)
  local otherinv = myplayer.selected.get_inventory(slot)
  local toinsert = math.min(amountininventory, amount)

  if toinsert == 0 then
    errprint("Put failed: No items")
    return
  end
  if not otherinv then
	errprint("Put failed : Target doesn't have an inventory at {" .. position[1] .. "," .. position[2] .. "}.")
	return
  end

  local inserted = otherinv.insert{name=item, count=toinsert}

  --if we already failed for trying to insert no items, then if no items were inserted, it must be because it is full
  if inserted == 0 then
    errprint("Put failed: No space at {" .. position[1] .. "," .. position[2] .. "}.")
    return
  end

  myplayer.remove_item{name=item, count = inserted}

  if inserted < amount then
    errprint("Put sub-optimal: Only put " .. inserted .. "x " .. item  .. " instead of " .. amount .. "x " .. item .. " at {" .. position[1] .. "," .. position[2] .. "}.")
  end
  debugprint("Put " .. inserted .. "x " .. item .. " into " .. myplayer.selected.name  .. " at {" .. position[1] .. "," .. position[2] .. "}.")
end

commands["speed"] = function (tokens)
  if allowspeed then game.speed = tokens[2] end
  debugprint("Speed: " .. tokens[2])
end

commands["take"] = function (tokens)
  local position = tokens[2]
  local item = tokens[3]
  local amount = tokens[4]
  local slot = tokens[5]
  myplayer.update_selected_entity(position)

  if not myplayer.selected then
    errprint("Take failed: No object at position {" .. position[1] .. "," .. position[2] .. "}.")
    return
  end

  -- Check if we are in reach of this tile
  if not inrange(position) then
    errprint("Take failed: You are trying to reach too far.")
    return
  end

  local otherinv = myplayer.selected.get_inventory(slot)

  if not otherinv then
     errprint("Take failed: Unable to access inventories")
    return
  end

  local totake = amount
  local amountintarget = otherinv.get_item_count(item)
  if totake == "all" then totake = amountintarget
  else totake = math.min(amountintarget, amount)
  end

  if amountintarget == 0 then
    errprint("Take failed: No items at {" .. position[1] .. "," .. position[2] .. "}.")
    return
  end

  local taken = myplayer.insert{name=item, count=totake}
  debugprint("Took " .. taken .. "x " .. item .. " from " .. myplayer.selected.name  .. " at {" .. position[1] .. "," .. position[2] .. "}.")

  if taken == 0 then
    errprint("Take failed: No space at {" .. position[1] .. "," .. position[2] .. "}.")
    return
  end

  otherinv.remove{name=item, count=taken}

  if amount ~= "all" and taken < amount then
    errprint("Take sub-optimal: Only took " .. taken .. " at {" .. position[1] .. "," .. position[2] .. "}.")
  end

end

commands["tech"] = function (tokens)
  myplayer.force.current_research = tokens[2]
  debugprint("Research: " .. tokens[2])
end

commands["print"] = function (tokens)
  myplayer.print(tokens[2])
end

commands["recipe"] = function (tokens)
  myplayer.update_selected_entity(tokens[2])
  if not myplayer.selected then
	errprint("Setting recipe: Entity at position {" .. tokens[2][1] .. "," .. tokens[2][2] .. "} could not be selected.")
	return
  end
  myplayer.selected.recipe = tokens[3]
  debugprint("Setting recipe: " .. tokens[3] .. " at position {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") 
end

commands["rotate"] = function (tokens)
  local position = tokens[2]
  local direction = tokens[3]

  myplayer.update_selected_entity(position)
  
  if not myplayer.selected then
    errprint ("Rotate failed, no object at position {" .. position[1] .. "," .. position[2] .. "}")
  end
  
  myplayer.selected.direction = directions[direction]
  debugprint("Rotating " .. myplayer.selected.name  .. " so that it faces " .. direction .. ".")
end

------------------------------------
-- Functions that control the run --
------------------------------------
-- This function grabs the run data defined by the scenario
function init_run()
	global.allowspeed = commandqueue.settings.allowspeed
	global.start_tick = game.tick
	debugprint("initializing the run")
	local count = 0
	for v,k in pairs(commandqueue) do count = count+1 end
	debugprint("command queue size is " .. count)
	debugprint("stating tick is " .. global.start_tick)
end

function init_player_inventory(player)
	-- Initiate the player's inventory
	player.clear_items_inside()
	player.insert{name="iron-plate", count=8}
	player.insert{name="pistol", count=1}
	player.insert{name="firearm-magazine", count=10}
	player.insert{name="burner-mining-drill", count = 1}
	player.insert{name="stone-furnace", count = 1}
end

script.on_event(defines.events.on_tick, function(event)
	if commandqueue then
		local tick = game.tick - global.start_tick
		if not myplayer then myplayer = global.myplayer end
		if commandqueue[tick] then
			for k,v in pairs(commandqueue[tick]) do
				commands[v[1]](v)
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
	myplayer = game.players[event.player_index]
	global.myplayer = myplayer
	game.surfaces[1].always_day = true
	myplayer.game_view_settings.update_entity_selection = false
	myplayer.force.chart(myplayer.surface, {{myplayer.position.x - 200, myplayer.position.y - 200}, {myplayer.position.x + 200, myplayer.position.y + 200}})
	init_player_inventory(myplayer)
end)

-- Create the interface that allows to launch a run
remote.add_interface("TAS_playback", {launch = function() 
	init_run()
end})


-- Get the path of the scenario and the name of the run file through a very dirty trick
for k,v in pairs(remote.interfaces) do
	tas_name = tas_name or string.match(k,"^TASName_(.+)$")
	run_file = run_file or string.match(k,"^TASFile_(.+)$")
end
-- Get the run instructions everytime the game is loaded
commandqueue = require("scenarios." .. tas_name .. "." .. run_file)