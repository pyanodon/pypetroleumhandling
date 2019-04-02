local OilDerricks =
	{
	"oil-derrick-mk01",
	"oil-derrick-mk02",
	"oil-derrick-mk03",
	"oil-derrick-mk04"
	}
	
local hidrecipe =
	{
	"oil-to-oil",
	"oil-to-gas"
	}

local Derricks = {}

script.on_init(function(event)
	for name in pairs(OilDerricks) do
		Derricks[name] = true
	end
end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
	local E = event.created_entity
	if event.created_entity.name == "oil-derrick-mk01" or event.created_entity.name == "oil-derrick-mk02" or event.created_entity.name == "oil-derrick-mk03" or event.created_entity.name == "oil-derrick-mk04" then
		local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x,E.position.y-2},direction=defines.direction.south}
		CV.set_recipe("oil-to-oil")
	end
end)

script.on_event("recipe-selector", function(event)
--log("working")
	local player = game.players[event.player_index]
	local selected = player.selected
		if selected and selected.name == "oil-derrick-mk01" then
			local spos = selected.position
			--log(serpent.block(spos))
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-3,spos.y-3},{spos.x+3,spos.y+3}},name="py-converter-valve"}
			for _, v in pairs(valve) do
				if v.get_recipe == "oil-to-oil" then
					v.set_recipe("oil-to-gas")
				elseif v.get_recipe == "oil-to-gas" then
					v.set_recipe("oil-to-oil")
				end
			end
		end
end)

script.on_event(defines.events.on_player_rotated_entity, function(event)
	if event.entity.name == "oil-derrick-mk01" then
		local direction = event.entity.direction
		local epos = event.entity.position
		log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk01" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-3,spos.y-3},{spos.x+3,spos.y+3}},name="py-converter-valve"}
			log("trying to rotate entity")
			log(serpent.block(valve.name))
			for  _, v in pairs(valve) do
			-- position is off by 1 spawns outside bounds and is on the wrong end of derrick
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-3,y=spos.y},direction=defines.direction.west}
					CV.set_recipe(v.get_recipe())
					--v.direction=defines.direction.west
					--v.position = {x=spos.x-3,y=spos.y}
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y+3},direction=defines.direction.north}
					CV.set_recipe(v.get_recipe())
					--v.direction=defines.direction.north
					--v.position = {x=spos.x,y=spos.y+3}
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+3,y=spos.y},direction=defines.direction.east}
					CV.set_recipe(v.get_recipe())
					--v.direction=defines.direction.east
					--v.position = {x=spos.x+3,y=spos.y}
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y-3},direction=defines.direction.south}
					CV.set_recipe(v.get_recipe())
					--v.direction=defines.direction.south
					--v.position = {x=spos.x,y=spos.y-3}
				end
			end
		end
	end
end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)

end)