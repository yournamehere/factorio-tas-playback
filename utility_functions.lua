-- Utility functions
local util = {}

function util.roundn(x)
	return x + 0.5 - (x + 0.5) % 1
end

function util.inrange(position, myplayer)
	return ((position[1]-myplayer.position.x)^2+(position[2]-myplayer.position.y)^2) < 36
end

function util.can_fast_replace(name, position, myplayer)
	local entity_prototypes = game.entity_prototypes
	local blocking_entity = myplayer.surface.find_entities_filtered{position = position, force=myplayer.force}[1]
	
	if blocking_entity and entity_prototypes[blocking_entity.name].fast_replaceable_group == entity_prototypes[name].fast_replaceable_group and name ~= blocking_entity.name then
		return true
	end
	return false
end


function util.prettytime()
	local tick = game.tick - (global.start_tick or 0)
	if settings.global["tas-pretty-time"].value then
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
	return "[" .. tick .. "] "
end

function util.debugprint(msg)
	for _, player in pairs(game.connected_players) do
		if player.mod_settings["tas-verbose-logging"].value then 
			player.print(util.prettytime() .. msg)
		end
	end
end

function util.errprint(msg)
	game.print(util.prettytime() .. " ___WARNING___ " .. msg)
end

return util
