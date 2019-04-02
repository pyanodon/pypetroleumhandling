local pumpjacks =
	{
	"pumpjack"
	}

local jacks = {}

script.on_init(function(event)
	for name in pairs(pumpjacks) do
		jacks[name] = true
	end
end)

script.on_event(defines.events.on_put_item, function(event)
local existingentitys
	if event.name == "pumpjack-mk01" then
		existingentitys = game.surfaces["nauvis"].find_entity("oil-mk01", event.position)
		existingentitys.destroy()
		game.surfaces["nauvis"].create_entity{name="natural-gas", position=event.position}
		game.surfaces["nauvis"].create_entity{name="natural-gas-extractor-mk01", position=event.position}
	end
end)

script.on_event(defines.events.on_built_entity, function(event)
	local E = event.created_entity
	if jacks[event.created_entity.name] then
		event.created_entity.destroy()
	end
end)