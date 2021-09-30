require "ball"
require "board"
require "window"
require "input"

function checkCollitions()
    ball.CheckCollition()
end

function loadParameters()
    board.Create()
    ball.Create()
    window.ChangeName("Pongaroid")
    window.CenterInScreen()
    window.TurnBackgroundBlack()
end

function love.load()
   loadParameters()
end

function love.update(dt)
    ball.Update(dt)
    input.CheckForFullscreen(dt)
    checkCollitions()
end

function love.draw()
    ball.Draw()
end

