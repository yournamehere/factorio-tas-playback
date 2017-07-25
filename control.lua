local commandqueue = require("run0p15")

local debugmode = commandqueue.settings.debugmode
local allowspeed = commandqueue.settings.allowspeed

local myplayer = nil
local curtick = 0
local walkstate = {walking = false}
local minestate = nil

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
  if debugmode then myplayer.print("[" .. curtick .. "] " .. msg) end
end
function errprint(msg)
  myplayer.print("[" .. curtick .. "]  ___WARNING___ " .. msg)
end

local commands = {}

commands["move"] = function (tokens)
  debugprint("Moving: " .. tokens[2])
  walkstate = directions[tokens[2]]
  if tokens[2] == "STOP" then debugprint("Stopped at: (" .. myplayer.position.x .. "," .. myplayer.position.y .. ")") end
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
  if tokens[2] then
    if tokens[2][1] ~= roundn(tokens[2][1]) or tokens[2][2] ~= roundn(tokens[2][2]) then
      hasdecimals = true
    else
      hasdecimals = false
    end
  end

  if not tokens[2] or hasdecimals then minestate = tokens[2]
  else minestate = {tokens[2][1] + 0.5, tokens[2][2] + 0.5} end
    
  if tokens[2] then
    if hasdecimals then debugprint("Mining: Coordinates (" .. tokens[2][1] .. "," .. tokens[2][2] .. ")")
    else debugprint("Mining: Tile (" .. tokens[2][1] .. "," .. tokens[2][2] .. ")") end
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
  myplayer.update_selected_entity(tokens[2])
  debugprint("Put " .. tokens[4] .. "x " .. tokens[3] .. " into " .. myplayer.selected.name  .. " at {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.")
  if myplayer.selected then
    -- Check if we are in reach of this tile
    local inrange = ((tokens[2][1]-myplayer.position.x)^2+(tokens[2][2]-myplayer.position.y)^2) < 36
    if not inrange then
      errorprint("Put failed: You are trying to reach too far.")
    else
      local avail = myplayer.get_item_count(tokens[3])
      local amt = tokens[4]
      local otherinv = myplayer.selected.get_inventory(tokens[5])

      if avail < amt then amt = avail end
      if avail > 0 then
        local amt = otherinv.insert{name=tokens[3], count=amt}
        if amt > 0 then
          myplayer.remove_item{name=tokens[3], count=amt}
          if amt < tokens[4] then errorprint("Put sub-optimal: Only put " .. amt .. " at {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") end
        else errorprint("Put failed: No space at {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") end
      else errorprint("Put failed: No items") end
    end
  else errorprint("Put failed: No object at position {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") end
end

commands["speed"] = function (tokens)
  if allowspeed then game.speed = tokens[2] end
  debugprint("Speed: " .. tokens[2])
end

commands["take"] = function (tokens)
  myplayer.update_selected_entity(tokens[2])
  if myplayer.selected then
    -- Check if we are in reach of this tile
    local inrange = ((tokens[2][1]-myplayer.position.x)^2+(tokens[2][2]-myplayer.position.y)^2) < 36
    if not inrange then
      errorprint("Take failed: You are trying to reach too far.")
    else
      local otherinv = myplayer.selected.get_inventory(tokens[5])

      if otherinv then
        local amt = tokens[4]
        local avail = otherinv.get_item_count(tokens[3])
        if amt == "all" then amt = avail
        elseif avail < amt then amt = avail end
        if avail > 0 then
          local amt = myplayer.insert{name=tokens[3], count=amt}
          if debugmode then myplayer.print("[" .. curtick .. "] Took " .. amt .. "x " .. tokens[3] .. " from " .. myplayer.selected.name  .. " at {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") end
          if amt > 0 then
            otherinv.remove{name=tokens[3], count=amt}
            if tokens[4] ~= "all" and amt < tokens[4] then myplayer.print("[" .. curtick .. "] Take sub-optimal: Only took " .. amt .. " at {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") end
          else errorprint("Take failed: No space at {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") end
        else errorprint("Take failed: No items at {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") end
      else errorprint("Take failed: Unable to access inventories") end
    end
  else errorprint("Take failed: No object at position {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") end
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
  myplayer.selected.recipe = tokens[3]
  debugprint("Setting recipe: " .. tokens[3] .. " at position {" .. tokens[2][1] .. "," .. tokens[2][2] .. "}.") 
end

commands["rotate"] = function (tokens)
  myplayer.update_selected_entity(tokens[2])
  if myplayer.selected then
    myplayer.selected.direction = directions[tokens[3]]
  end
  debugprint("Rotating " .. myplayer.selected.name  .. " so that it faces " .. tokens[3] .. ".")
end

script.on_event(defines.events.on_tick, function(event)
  curtick = curtick + 1
  if commandqueue[curtick] then
    for k,v in pairs(commandqueue[curtick]) do
      commands[v[1]](v)
    end
  end
  myplayer.walking_state = walkstate
  if not minestate then myplayer.mining_state = {mining = false}
  else
    myplayer.update_selected_entity(minestate)
    myplayer.mining_state = {mining = true, position = minestate}
  end
end)

script.on_event(defines.events.on_player_created, function(event)
  myplayer = game.players[event.player_index]
  game.surfaces[1].always_day = true
  myplayer.game_view_settings.update_entity_selection = false
  myplayer.insert{name="iron-plate", count=8}
  myplayer.insert{name="pistol", count=1}
  myplayer.insert{name="firearm-magazine", count=10}
  myplayer.insert{name="burner-mining-drill", count = 1}
  myplayer.insert{name="stone-furnace", count = 1}
  myplayer.force.chart(myplayer.surface, {{myplayer.position.x - 200, myplayer.position.y - 200}, {myplayer.position.x + 200, myplayer.position.y + 200}})
end)

-- script.on_init( function(event)
--   myplayer = game.players[1]
--   game.surfaces[1].always_day = true
--   myplayer.game_view_settings.update_entity_selection = false
--   myplayer.force.chart(myplayer.surface, {{myplayer.position.x - 200, myplayer.position.y - 200}, {myplayer.position.x + 200, myplayer.position.y + 200}})
-- end)
