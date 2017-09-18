-- Utility functions

function roundn(x)
  return x + 0.5 - (x + 0.5) % 1
end

function inrange(position, myplayer)
  return ((position[1]-myplayer.position.x)^2+(position[2]-myplayer.position.y)^2) < 36
end

local function prettytime()
  local tick = game.tick - (global.start_tick or 0)
  local hours = string.format("%02.f", math.floor(tick / 216000))
  local minutes = string.format("%02.f", math.floor(tick / 3600) - hours * 60)
  local seconds = string.format("%02.f", math.floor(tick / 60) - hours * 3600 - minutes * 60)
  local ticks = string.format("%02.f", tick - hours * 216000 - minutes * 3600 - seconds * 60)
  if hours == "00" then
    return "[" .. minutes .. ":" .. seconds .. ":" .. ticks .. "] "
  else
    return "[" .. hours .. ":" .. minutes .. ":" .. seconds .. ":" .. ticks .. "] "
  end
end

function debugprint(msg)
	for _, player in pairs(game.connected_players) do
		if player.mod_settings["tas-verbose-logging"].value then 
			player.print(prettytime() .. msg)
		end
	end
end

function errprint(msg)
	game.print(prettytime() .. " ___WARNING___ " .. msg)
end
