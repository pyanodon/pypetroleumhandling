script.on_init(function()

global.hasbuiltoilderrick = false
global.oil_to_gas = false

end)

script.on_configuration_changed(function()

	if global.hasbuiltoilderrick == nil then
		global.hasbuiltoilderrick = false
	end
	if global.oil_to_gas == nil then
		global.oil_to_gas = false
	end

end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
	--change to get direction and enity collision box for entity size
	local E = event.created_entity
	if string.match(E.name, 'oil-derrick') ~= nil then
		if global.oil_to_gas == true then
			local mk = string.match(E.name, '%d+')
			local oil = game.surfaces['nauvis'].find_entity('oil-mk' .. mk, E.position)
			game.surfaces['nauvis'].create_entity{name = 'natural-gas' .. string.match(E.name, '%d'), amount = oil.amount}
			oil.destroy()
		end
	end
end)

script.on_event("recipe-selector", function(event)
--log("working")
	local player = game.players[event.player_index]
	
end)

--[[
script.on_event(defines.events.on_player_rotated_entity, function(event)
	if event.entity.name == "oil-derrick-mk01" then
		local direction = event.entity.direction
		--log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk01" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-2.5,spos.y-2.5},{spos.x+2.5,spos.y+2.5}},name="py-converter-valve"}
			--log("trying to rotate entity")
			for  _, v in pairs(valve) do
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+2,y=spos.y},direction=defines.direction.west,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y+2},direction=defines.direction.north,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-2,y=spos.y},direction=defines.direction.east,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y-2},direction=defines.direction.south,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				end
				v.destroy()
			end
		end
	elseif event.entity.name == "oil-derrick-mk02" then
		local direction = event.entity.direction
		--log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk02" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-3.5,spos.y-3.5},{spos.x+3.5,spos.y+3.5}},name="py-converter-valve"}
			--log("trying to rotate entity")
			for  _, v in pairs(valve) do
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+3,y=spos.y},direction=defines.direction.west,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y+3},direction=defines.direction.north,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-3,y=spos.y},direction=defines.direction.east,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y-3},direction=defines.direction.south,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				end
				v.destroy()
			end
		end
	elseif event.entity.name == "oil-derrick-mk03" then
		local direction = event.entity.direction
		--log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk03" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-4.5,spos.y-4.5},{spos.x+4.5,spos.y+4.5}},name="py-converter-valve"}
			--log("trying to rotate entity")
			for  _, v in pairs(valve) do
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+4,y=spos.y-1},direction=defines.direction.west,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+1,y=spos.y+4},direction=defines.direction.north,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-4,y=spos.y+1},direction=defines.direction.east,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-1,y=spos.y-4},direction=defines.direction.south,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				end
				v.destroy()
			end
		end
	elseif event.entity.name == "oil-derrick-mk04" then
		local direction = event.entity.direction
		--log(serpent.block(direction))
		local player = game.players[event.player_index]
		local selected = player.selected
		if selected and selected.name == "oil-derrick-mk04" then
			local spos = selected.position
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-5.5,spos.y-5.5},{spos.x+5.5,spos.y+5.5}},name="py-converter-valve"}
			--log("trying to rotate entity")
			for  _, v in pairs(valve) do
				if direction == 2 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x+5,y=spos.y},direction=defines.direction.west,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 4 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y+5},direction=defines.direction.north,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 6 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x-5,y=spos.y},direction=defines.direction.east,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				elseif direction == 0 then
					local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={x=spos.x,y=spos.y-5},direction=defines.direction.south,force=event.entity.force}
					CV.set_recipe(v.get_recipe())
				end
				v.destroy()
			end
		end
	end
end)
]]--

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
	if string.match(event.entity.name , "oil-derrick-mk01") then
		local oil = game.surfaces['nuavis'].find_entities( { {event.entity.position.x-1,event.entity.position.y-1} , {event.entity.position.x+1,event.entity.position.y+1} } )
			for _, ent in pairs(oil) do
				if ent.name == "natural-gas-1" then
					game.surfaces['nauvis'].create_entity{name = 'oil-mk1', amount = ent.amount}
					ent.destroy()
				end
				if ent.name == "natural-gas-2" then
					game.surfaces['nauvis'].create_entity{name = 'oil-mk2', amount = ent.amount}
					ent.destroy()
				end
				if ent.name == "natural-gas-3" then
					game.surfaces['nauvis'].create_entity{name = 'oil-mk3', amount = ent.amount}
					ent.destroy()
				end
				if ent.name == "natural-gas-4" then
					game.surfaces['nauvis'].create_entity{name = 'oil-mk4', amount = ent.amount}
					ent.destroy()
				end
			end
	end
end)