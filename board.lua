board = {}

collisionHorizontal = {}
collisionHorizontal.left = false
collisionHorizontal.right = false

collisionVertical = {}
collisionVertical.left = false
collisionVertical.right = false

function board.Create()
    board.x = 0
    board.y = 0
    board.width = 800
    board.heigth = 600
    board.canShowSize = true
    board.ShowSize()
end

function board.ShowSize()
    if board.canShowSize then
        print(board.width)
        print(board.heigth)
        board.canShowSize = false;
    end
end