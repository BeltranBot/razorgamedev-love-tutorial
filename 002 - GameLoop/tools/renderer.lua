local Renderer = {}

local num_of_layers = 5
local insert = table.insert
local remove = table.remove

function Renderer:create()
  local renderer = {}

  renderer.drawers = {}
  for i=1,num_of_layers do
    renderer.drawers[i] = {}
  end

  function renderer:addRenderer(obj, layer)
    local l = layer or 0
    insert(self.drawers[l], obj)
  end

  function renderer:draw()
    for layer = 1, #self.drawers do
      for draw = 1, #self.drawers[layer] do
        local obj = self.drawers[layer][draw]
        obj:draw()
      end
    end
  end
  
  return renderer
end

return Renderer