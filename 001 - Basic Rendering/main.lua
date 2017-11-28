local Renderer = require "tools/renderer"
inspect = require "libraries/inspect/inspect"
renderer = Renderer:create() 
math.randomseed(os.time())

g_width = love.graphics.getWidth()
g_height = love.graphics.getHeight()

function createBox(x, y)
  local b = {}

  b.x = x or 0
  b.y = y or 0

  function b:load()
    renderer:addRenderer(self, 1)
  end

  function b:draw()
    love.graphics.setColor(math.random(0,255), math.random(0,255),
      math.random(0,255), math.random(0,255))
    love.graphics.rectangle("fill", self.x, self.y, 64, 64)
  end

  return b
end

function love.load()
  r1 = createBox(64, 64)
  r2 = createBox(96, 96)
  r3 = createBox(118, 118)

  r1:load()
  r2:load()
  r3:load()
end

function love.update(dt)
  
end

function love.draw()
  renderer:draw()
end