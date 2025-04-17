local Tileset = require "src.game.tiling.Tileset"

local imgTileset = love.graphics.newImage(
    "graphics/tilesets/brackeys_platformer_assets/sprites/world_tileset.png")

local NewTileset = Tileset(imgTileset, 16)
NewTileset:setNotSolid({49,57,65,81,89,98,149,193})

return NewTileset