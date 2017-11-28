local tileManager = {}
local width = 128
local height = 128
local size = 16

function tileManager:load()
  renderer:addRenderer(self)
  gameLoop:addLoop(self)

  self.tiles = {}

  for i=1,height do
    self.tiles[i] = {}
    
  end
end

function tileManager:tick()
end

function tileManager:draw()
  for i = 1, #self.tiles do
    for j = i, #self.tiles[i] do
      local t = self.tiles[i][j]      
      love.graphics.rectangle("fill",
        (size*t.x) - size,
        (size*t.y) - size,
        t.w, t.h)
    end
  end
end

function tileManager:add(t)
  self.tiles[t.y][t.x] = t
end

return tileManager