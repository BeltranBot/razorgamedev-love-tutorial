local Renderer = require "tools/renderer"
local GameLoop = require "tools/gameLoop"

inspect = require "libraries/inspect/inspect"
renderer = Renderer:create()
gameLoop = GameLoop:create()
math.randomseed(os.time())

g_Width = love.graphics.getWidth()
g_Height = love.graphics.getHeight()

g_GameTime = 0

function createBox()
  local b = {}

  function b:load()
    gameLoop:addGameLoop(self)
  end

  function b:tick(dt)
    print(dt, math.random())
  end

  return b
end

function love.load()
  local obj = createBox()
  obj:load()
end

function love.update(dt)
  g_GameTime = g_GameTime + dt
  gameLoop:update(dt)
end

function love.draw()
  renderer:draw()
end