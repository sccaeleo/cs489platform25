local Class = require "libs.hump.class"
local Matrix = require "libs.matrix"

local Stage = Class{}
function Stage:init(rows, cols, ts)
    self.tileset = ts -- tileset used in this map
    self.rowCount = rows
    self.colCount = cols

    self.initialPlayerY = 0
    self.initialPlayerX = 0

    self.music = nil -- this stage music
    self.mobs = {} -- mobs
    self.objects = {} -- game objects
    self.bgs = {} -- backgrounds
    self.map = Matrix:new(self.rowCount, self.colCount) -- map will be a matrix of tiles
end


function Stage:update(dt)
end

function Stage:getWidth()
    return self.colCount * self:getTileSize()
end

function Stage:getHeight()
    return self.rowCount * self:getTileSize()
end

function Stage:getTileSize()
    return self.tileset.tileSize
end

function Stage:draw()

end




return Stage
