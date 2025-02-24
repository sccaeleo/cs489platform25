local Class = require "libs.hump.class"
local Anim8 = require "libs.anim8"
local Timer = require "libs.hump.timer"
local Enemy = require "src.game.mobs.Enemy"
local Hbox = require "src.game.Hbox"
local Sounds = require "src.game.Sounds"

local Boar = Class{__includes = Enemy}
function Boar:init(type) Enemy:init() -- superclass const.
    self.name = "boar"
    self.type = type
    if type == nil then self.type = "brown" end

    self.dir = "l" -- Direction r = right, l = left
    self.state = "idle" -- idle state
    self.animations = {} -- dict of animations (each mob will have its own)
    self.sprites = {} -- dict of sprites (for animations)
    self.hitboxes = {}
    self.hurtboxes = {}

end

function Boar:update(dt, stage)

end


return Boar