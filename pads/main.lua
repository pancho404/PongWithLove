require "pads"

function love.load()		
	createPads()
	windowMax = love.graphics.getPixelHeight() - height
end

function love.update(dt)
	MovePad(dt)
end


function love.draw()
	DrawPads()
end


