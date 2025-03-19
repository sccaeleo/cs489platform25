local Class = require "libs.hump.class"
local Anim8 = require "libs.anim8"
local Tween = require "libs.tween"

local idleSprite = love.graphics.newImage(
    "graphics/char/Idle-Sheet.png")
local idleGrid = Anim8.newGrid(64,80,
    idleSprite:getWidth(),idleSprite:getHeight())
local idleAnim = Anim8.newAnimation( idleGrid('1-4',1) )

local Player = Class{}
function Player:init(x,y)
    self.x = x
    self.y = y

    self.state = "idle"
    self.dir = "r" -- r for right, l for left
    self.speedY = 0

    self.animations = {}
    self.sprites = {}
    createAnimations()
end

function Player:reset()
end

function Player:createAnimations() -- fill up the animations & sprites
    self.animations["idle"] = idleAnim
    self.sprites["idle"] = idleSprite
end

function Player:update(dt, stage)
    self.animations[self.state]:update(dt)
end

function Player:draw()
    self.animations[self.state]:draw(self.sprites[self.state],
        math.floor(self.x), math.floor(self.y) )
end

function Player:keypressed(key)

end

function Player:keyreleased(key)
    
end

function Player:setCoords(x,y)
    self.x = x
    self.y = y
end


return Player