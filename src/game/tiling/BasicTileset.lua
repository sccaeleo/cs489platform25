local Tileset = require "src.game.tiling.Tileset"

local imgTileset = love.graphics.newImage(
    "graphics/tilesets/Tileset16.png")

local BasicTileset = Tileset(imgTileset, 16)
-- setNotSolid()

return BasicTileset