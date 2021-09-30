require "window"

input = {}

input.fullscreenTimer = 0

function input.CheckForFullscreen(dt)
    if input.fullscreenTimer == 0 then
        if love.keyboard.isDown("f") then
            window.ToggleFullscreen()
            input.fullscreenTimer = input.fullscreenTimer + dt
        end
    else
        input.fullscreenTimer = input.fullscreenTimer + dt
        if input.fullscreenTimer > 1 then
            input.fullscreenTimer = 0
        end
    end
end