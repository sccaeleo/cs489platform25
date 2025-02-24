local Class = require "libs.hump.class"
local Hbox = require "src.game.Hbox"

local Enemy = Class{}
function Enemy:init()
    self.x = 0
    self.y = 0
    self.name = ""
    self.type = ""
    self.dir = "l" -- Direction r = right, l = left
    self.state = "idle" -- idle state
    self.invincile = false
    self.animations = {} -- dict of animations (each mob will have its own)
    self.sprites = {} -- dict of sprites (for animations)
    -- Attributes
    self.hitboxes = nil -- for later
    self.hurtboxes = nil -- for later
    self.hp = 10 -- hit/health points 
    self.damage = 10 -- mob's damage
    self.died = false
    self.score = 100 -- score to kill this mob 
end

function Enemy:getDimensions() -- returns current Width,Height
    return self.animations[self.state]:getDimensions()
end

function Enemy:setAnimation(st,sprite,anim)
    self.animations[st] = anim
    self.sprites[st] = sprite
end

function Enemy:setCoord(x,y)
    self.x = x
    self.y = y
end

function Enemy:update(dt)
    self.animations[self.state]:update(dt)
end

function Enemy:draw()
end

function Enemy:changeDirection()
end

function Enemy:hit(damage)
    self.hp = self.hp - damage
end

return Enemy