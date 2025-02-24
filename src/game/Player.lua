local Class = require "libs.hump.class"
local Anim8 = require "libs.anim8"
local Tween = require "libs.tween"

local Player = Class{}
function Player:init(x,y)
    self.x = x
    self.y = y
end

function Player:reset()
end

function Player:createAnimations() -- fill up the animations & sprites
end

function Player:update(dt, stage)

end

function Player:draw()
    
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