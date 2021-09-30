require "pads"
ball = {}

constantMovementX = 100
constantMovementY = 20
constVelocityAugmentX = 1.0009
constVelocityAugmentY = 1.0005

function ball.Create()
    ball.x = 200
    ball.y = 200
    ball.radius = 0.1
    ball.velX = constantMovementX
    ball.velY = constantMovementY
    ball.rotation = 0 
    ball.LoadSprite()
end

function ball.LoadSprite()
    ball.image = love.graphics.newImage("ast.png")
end

function ball.Update(dt)
    ball.x = ball.x + ball.velX * dt
    ball.y = ball.y + ball.velY * dt
    ball.velX = ball.velX * constVelocityAugmentX
    ball.velY = ball.velY * constVelocityAugmentY
    constVelocityAugmentY = constVelocityAugmentY * 1.0000004
    ball.CheckCollition()
end

function ball.Draw()
    love.graphics.draw(ball.image, constantMovementX + ball.x, constantMovementY + ball.y, ball.rotation, ball.radius, ball.radius)
end

function ball.CheckCollition()

    ball.width , ball.heigth = ball.image:getDimensions()

    if board.canShowSize then
        board.ShowSize()
        board.canShowSize = false;
    end

    if (ball.x + ball.radius > board.width - 100 - ball.width * ball.radius) then
        if(not enteredOnce) then
            ball.velX = -ball.velX
            print("toca el borde derecho")
        end
    end

    if (ball.x < - 100) then
        if(not enteredOnce) then
            ball.velX = -ball.velX
            print("toca el borde izquierdo")
        end
    end

    if (ball.y + ball.radius > board.heigth - ball.heigth * ball.radius * 3/2) then
        if(not enteredOnce) then
            ball.velY = -ball.velY
            print("toca el borde abajo")
        end
    end

    if (ball.y < - ball.radius * ball.heigth / 2) then
        if(not enteredOnce) then
            ball.velY = -ball.velY
            print("toca el borde arriba")
        end
    end

end