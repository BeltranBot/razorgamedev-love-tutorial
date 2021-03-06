local rect = require "objects/rect"
local vec2 = require "tools/vec2"

local Entity = {}

function Entity:new(x,y,w,h,img,quad,id)
	local entity = rect:new(x,y,w,h)

	entity.vel = vec2:new(0,0)
	entity.spd = vec2:new(0,0)
	entity.dir = vec2:new(0,0)

	function entity:load()end
	function entity:tick(dt)end
	function entity:draw()end

	return entity
end

return Entity