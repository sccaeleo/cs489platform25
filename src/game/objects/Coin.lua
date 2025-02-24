local Class = require "libs.hump.class"
local Anim8 = require "libs.anim8"

local Coin = Class{}
function Coin:init(type)
    self.name = "coin"
end

function Coin:setType(type)
end

return Coin