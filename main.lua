require "ball"
require "board"
require "window"
require "input"
require "window"
require "board"
require "ball"
require "pads"

function loadParameters()
    board.Create()
    ball.Create()
    window.ChangeName("Pong Simulator")
    window.CenterInScreen()
    window.TurnBackgroundBlack()
end

function love.load()
   loadParameters()
	ball.Create()	
	createPads()
	board.Create()
	windowMax = love.graphics.getPixelHeight() - height
end

function love.update(dt)
    ball.Update(dt)  
    input.CheckForFullscreen(dt)	
	MovePad(dt)
end


function love.draw()
    DrawPads()	
	ball.Draw()
end


