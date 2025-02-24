local Class = require "libs.hump.class"
local Anim8 = require "libs.anim8"

local Gem = Class{}
function Gem:init(type) 
    self.name = "gem"
    self.type = nil
    self.sprite = nil 
    
end

function Gem:setType(type)
end

function Gem:update(dt)
end

function Gem:draw()
end

return Gem