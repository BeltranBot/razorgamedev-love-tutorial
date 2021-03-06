local Renderer = require "tools/renderer"
local GameLoop = require "tools/gameLoop"
local rect = require "objects/rect"
local entity = require "objects/entity"
local tileManager = require"tiles/tileManager"

inspect = require "libraries/inspect/inspect"
renderer = Renderer:create()
gameLoop = GameLoop:create()
math.randomseed(os.time())

g_Width = love.graphics.getWidth()
g_Height = love.graphics.getHeight()

g_GameTime = 0

function love.load()
  gameLoop:addLoop(self)
  tileManager:load()
end

function love.update(dt)
  g_GameTime = g_GameTime + dt
  gameLoop:update(dt)
end

function love.draw()
  renderer:draw()
end