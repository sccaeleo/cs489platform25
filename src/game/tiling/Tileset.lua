local Class = require "libs.hump.class"
local Tile = require "src.game.tiling.Tile"

local Tileset = Class{}
function Tileset:init(img, tilesize)
    self.tileImage = img -- tileset image
    self.tileSize = tilesize -- size of the tiles 
    
    -- the number of rows & cols this tileset has
    self.rowCount = self.tileImage:getHeight() / self.tileSize
    self.colCount = self.tileImage:getWidth() / self.tileSize
    
    self.tiles = {} -- store the tiles as a dictionary/table
    self:createTiles()
end

function Tileset:createTiles() -- converts img to dict of tiles

end

function Tileset:newTile(row,col, index)

end

function Tileset:get(index)
    return self.tiles[index]
end

function Tileset:getImage()
    return self.tileImage
end

function Tileset:setNotSolid(tilelist)

end

return Tileset