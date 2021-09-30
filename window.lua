window = {}

window.fullscreen = true;

function window.CenterInScreen()
	love.window.setFullscreen(true)
	local sWidth , sHeight = love.graphics.getDimensions()
	sWidth = sWidth / 2
	sHeight = sHeight / 2
	print("S anterior: " .. sWidth .. " , " .. sHeight)
	love.window.setFullscreen(false)
	local wWidth , wHeight , flags = love.window.getMode()
	wWidth = wWidth / 2
	wHeight = wHeight / 2
	print("W: " .. wWidth .. " , " .. wHeight)
	sWidth = sWidth - wWidth
	sHeight = sHeight - wHeight
	print("S: " .. sWidth .. " , " .. sHeight)
	love.window.setPosition(sWidth,sHeight,0)
end

function window.ToggleFullscreen()
	love.window.setFullscreen(window.fullscreen)
	if window.fullscreen then
		love.window.setPosition(0,0,0)
	else
		window.CenterInScreen()
	end
	window.fullscreen = not window.fullscreen
end

function window.TurnBackgroundWhite()
	love.graphics.setBackgroundColor(255,255,255)
end

function window.TurnBackgroundBlack()
	love.graphics.setBackgroundColor(0,0,0)
end

function window.SetObjectsViewables()
	love.graphics.setColor(255,255,255)
end

function window.ChangeName(name)
	love.window.setTitle(name)
end