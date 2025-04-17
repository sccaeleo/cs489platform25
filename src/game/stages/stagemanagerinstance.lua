local StageManager = require "src.game.stages.StageManager"
local createS0 = require "src.game.stages.createS0"
local createS1 = require "src.game.stages.createS1"
local createS2 = require "src.game.stages.createS2"

local manager = StageManager()

manager.createStage[0] = createS0 
manager.createStage[1] = createS1
manager.createStage[2] = createS2

return manager