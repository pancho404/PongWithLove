function createPads()
leftPosX=60
leftPosY=250
rightPosX = love.graphics.getPixelWidth()-leftPosX
rightPosY=250
width=20
height=100
speed=400
end

function DrawPads()
love.graphics.setColor(0,255,0)
love.graphics.rectangle("fill", leftPosX,leftPosY, width,height)
love.graphics.setColor(255,0,0)
love.graphics.rectangle("fill", rightPosX,rightPosY, width,height)
end

function MovePad(dt)

	if leftPosY>0 then
		if love.keyboard.isDown('w') then
		leftPosY=leftPosY-speed*dt
		end
	end

	if	leftPosY<windowMax then
		if love.keyboard.isDown('s') then
		leftPosY=leftPosY+speed*dt
		end
	end

	if rightPosY>0 then
		if love.keyboard.isDown("up") then
		rightPosY=rightPosY-speed*dt
		end
	end

	if	rightPosY<windowMax then
		if love.keyboard.isDown("down") then
		rightPosY=rightPosY+speed*dt
		end
	end

end