local GameLoop = {}
local insert = table.insert

function GameLoop:create()
  local gameLoop = {}

  gameLoop.tickers = {}

  function gameLoop:addGameLoop(obj)
    insert(self.tickers, obj)
  end

  function gameLoop:update(dt)
    for tickers = 1, #self.tickers do
      local obj = self.tickers[tickers]
      obj:tick(dt)
    end
  end
  
  return gameLoop
end

return GameLoop