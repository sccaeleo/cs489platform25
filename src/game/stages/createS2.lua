-- The Custom Stage

local Stage = require "src.game.stages.Stage"
local BasicTileset = require "src.game.tiling.NewTileset"
local Background = require "src.game.tiling.Background"
local Boar = require "src.game.mobs.Boar"
local Sounds = require "src.game.Sounds"

local function createS2()
    local stage = Stage(20,50,BasicTileset)
    local mapdata = require "src.game.maps.map2"
    stage:readMapData(mapdata)

    local objdata = require "src.game.maps.map2objects"
    stage:readObjectsData(objdata)

    -- Backgrounds
    local bg1 = Background("graphics/tilesets/FreeCute/BG1.png")
    local bg2 = Background("graphics/tilesets/FreeCute/BG2.png")
    local bg3 = Background("graphics/tilesets/FreeCute/BG3.png")
    
    stage:addBackground(bg1)
    stage:addBackground(bg2)
    stage:addBackground(bg3)

    -- Initial Player Pos
    stage.initialPlayerX = 1*16
    stage.initialPlayerY = 13*16 

    -- Adding extra mobs
    local mob1 = Boar()
    mob1:setCoord(22*16, 12*16)
    mob1:changeDirection()
    stage:addMob(mob1)

    local mob2 = Boar()
    mob2:setCoord(24*16, 3*16)
    mob2:changeDirection()
    stage:addMob(mob2)

    -- He usually falls of the edge :(
    local mob3 = Boar()
    mob3:setCoord(44*16, 6*16)
    mob3:changeDirection()
    stage:addMob(mob3)

    -- music from me :) https://www.youtube.com/watch?v=vtgyaqWDFVQ
    stage:setMusic(Sounds["music_dewdrop"])

    return stage
end

return createS2