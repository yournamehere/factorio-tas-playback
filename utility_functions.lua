-- Utility functions

function roundn(x)
  return x + 0.5 - (x + 0.5) % 1
end

function inrange(position, myplayer)
  return ((position[1]-myplayer.position.x)^2+(position[2]-myplayer.position.y)^2) < 36
end

function debugprint(msg)
	if settings.global["tas-verbose-logging"].value then 
		outp = game
		outp.print("[" .. game.tick .. "] " .. msg)
	end
end

function errprint(msg)
	outp = game
	outp.print("[" .. game.tick .. "]  ___WARNING___ " .. msg)
end
