local gameLoop = require "tools/gameLoop"
local renderer = require "tools/renderer"

function love.load()
	gameLoop:load()
end

function love.update(dt)
	gameLoop:update(dt)
end

function love.draw()

end