local Renderer = require "tools/renderer"
local GameLoop = require "tools/gameLoop"
local rect = require "objects/rect"
local entity = require "objects/entity"

inspect = require "libraries/inspect/inspect"
renderer = Renderer:create()
gameLoop = GameLoop:create()
math.randomseed(os.time())

g_Width = love.graphics.getWidth()
g_Height = love.graphics.getHeight()

g_GameTime = 0

local ent = entity:new(32, 32, 64, 64, "player")

function ent:load()
  gameLoop:addLoop(self)
end

function ent:tick(dt)
  print(self.id)
end

local obj = rect:new(128, 32, 64, 64)

function createBox()
  local b = {}

  function b:load()
    gameLoop:addLoop(self)
  end

  function b:tick(dt)
    print(dt, math.random())
  end

  return b
end

function love.load()
  -- local obj = createBox()
  -- obj:load()

  ent:load()
end

function love.update(dt)
  g_GameTime = g_GameTime + dt
  gameLoop:update(dt)
end

function love.draw()
  renderer:draw()

  love.graphics.rectangle("line", obj.pos.x, obj.pos.y, obj.size.x, obj.size.y)
end