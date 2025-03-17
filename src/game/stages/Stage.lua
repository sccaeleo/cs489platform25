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
    for row = 1, self.rowCount do
        for col = 1, self.colCount do
            self:drawTile(row,col) 
        end -- end for col
    end -- end for row
end

function Stage:drawTile(row,col)
    local curTile = self.map[row][col]
    if curTile then -- if not nil
        love.graphics.draw(self.tileset:getImage(), --img
            curTile.quad,  -- quad
            (col-1)*self:getTileSize(), -- x 
            (row-1)*self:getTileSize(),  -- y
            curTile.rotation, -- rotation (zero = no rotation)
            curTile.flipHor, --  no flip = 1, flipped = -1 
            curTile.flipVer)
    end
end



return Stage
