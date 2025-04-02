local Globals = require "src.Globals"
local Push = require "libs.push"
local Sounds = require "src.game.Sounds"
local Player = require "src.game.Player"
local Camera = require "libs.sxcamera"
local HUD = require "src.game.HUDimproved"

-- Load is executed only once; used to setup initial resource for your game
function love.load()
    love.window.setTitle("CS489 Platformer")
    Push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = false, resizable = true})
    math.randomseed(os.time()) -- RNG setup for later

    player = Player(0,0)
    hud = HUD(player)

    camera = Camera(gameWidth/2,gameHeight/2,
        gameWidth,gameHeight)
    camera:setFollowStyle('PLATFORMER')

    stagemanager:setPlayer(player)
    stagemanager:setCamera(camera)
    stagemanager:setStage(1)
end

-- When the game window resizes
function love.resize(w,h)
    Push:resize(w,h) -- must called Push to maintain game resolution
end

-- Event for keyboard pressing
function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    elseif key == "F2" or key == "tab" then
        debugFlag = not debugFlag  
    else
        player:keypressed(key) 
    end
end

-- Event to handle mouse pressed (there is another for mouse release)
function love.mousepressed(x, y, button, istouch)
    gx, gy = Push:toGame(x,y)

end

-- Update is executed each frame, dt is delta time (a fraction of a sec)
function love.update(dt)

    if gameState == "play" then
        stagemanager:currentStage():update(dt)
        player:update(dt, stagemanager:currentStage())
        hud:update(dt)

        camera:update(dt)
        camera:follow(
            math.floor(player.x+48), math.floor(player.y))

    elseif gameState == "start" then

    elseif gameState == "over" then

    end
end

-- Draws the game after the update
function love.draw()
    Push:start() 
    -- always draw between Push:start() and Push:finish()

    if gameState == "play" then
        drawPlayState()
    elseif gameState == "start" then
        drawStartState()
    elseif gameState == "over" then
        drawGameOverState()
    else --Error, should not happen
        love.graphics.setColor(1,1,0) -- Yellow
        love.graphics.printf("Error", 0,20,gameWidth,"center")
    end

    Push:finish()
end

function drawPlayState()

    stagemanager:currentStage():drawBg()

    camera:attach()

    stagemanager:currentStage():draw()
    player:draw()
    
    camera:detach()

    hud:draw()
end

function drawStartState()

end

function drawGameOverState()

end
