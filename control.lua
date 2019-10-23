script.on_init(function()

global.hasbuiltoilderrick = false

end)

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
	--change to get direction and enity collision box for entity size
	local E = event.created_entity
	local direction = E.direction
	local cbox
	if E.name == "oil-derrick-mk01" or E.name == "oil-derrick-mk02" or E.name == "oil-derrick-mk03" or E.name == "oil-derrick-mk04" then
		if global.hasbuiltoilderrick == false then
			game.print("press Shift + G for alt resource output from oil derrick")
		end
		if E.name == "oil-derrick-mk01" then
			cbox = 2
		elseif E.name == "oil-derrick-mk02" then
		 cbox = 3
		elseif E.name == "oil-derrick-mk03" then
			cbox =4
		elseif E.name == "oil-derrick-mk04" then
			cbox = 5
		end
		if event.created_entity.name == "oil-derrick-mk01" then
			if direction == 2 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x+cbox,E.position.y},direction=defines.direction.west,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 4 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x,E.position.y+cbox},direction=defines.direction.north,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 6 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x-cbox,E.position.y},direction=defines.direction.east,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 0 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x,E.position.y-cbox},direction=defines.direction.south,force=E.force}
				CV.set_recipe("oil-to-oil")
			end
		elseif event.created_entity.name == "oil-derrick-mk02" then
			if direction == 2 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x+cbox,E.position.y},direction=defines.direction.west,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 4 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x,E.position.y+cbox},direction=defines.direction.north,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 6 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x-cbox,E.position.y},direction=defines.direction.east,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 0 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x,E.position.y-cbox},direction=defines.direction.south,force=E.force}
				CV.set_recipe("oil-to-oil")
			end
		elseif event.created_entity.name == "oil-derrick-mk03" then
			if direction == 2 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x+cbox,E.position.y-1},direction=defines.direction.west,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 4 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x+1,E.position.y+cbox},direction=defines.direction.north,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 6 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x-cbox,E.position.y+1},direction=defines.direction.east,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 0 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x-1,E.position.y-cbox},direction=defines.direction.south,force=E.force}
				CV.set_recipe("oil-to-oil")
			end
		elseif event.created_entity.name == "oil-derrick-mk04" then
			if direction == 2 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x+cbox,E.position.y},direction=defines.direction.west,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 4 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x,E.position.y+cbox},direction=defines.direction.north,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 6 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x-cbox,E.position.y},direction=defines.direction.east,force=E.force}
				CV.set_recipe("oil-to-oil")
			elseif direction == 0 then
				local CV = game.surfaces["nauvis"].create_entity{name="py-converter-valve",position={E.position.x,E.position.y-cbox},direction=defines.direction.south,force=E.force}
				CV.set_recipe("oil-to-oil")
			end
		end
	end
end)

script.on_event("recipe-selector", function(event)
--log("working")
	local player = game.players[event.player_index]
	local selected = player.selected
		--Oil derrick mk01
		if selected and selected.name == "oil-derrick-mk01" then
			if global.hasbuiltoilderrick == false then
				global.hasbuiltoilderrick = true
			end
			local spos = selected.position
			--log(serpent.block(spos))
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-3,spos.y-3},{spos.x+3,spos.y+3}},name="py-converter-valve"}
			for _, v in pairs(valve) do
				if v.get_recipe() ~= nil then
					--log(serpent.block(v.get_recipe().name))
					if v.get_recipe().name == "oil-to-oil" then
						log("is this working")
						v.set_recipe("oil-to-gas")
					elseif v.get_recipe().name == "oil-to-gas" then
						v.set_recipe("oil-to-oil")
					end
				end
			end
		end
		--Oil derrick mk02
		if selected and selected.name == "oil-derrick-mk02" then
			if global.hasbuiltoilderrick == false then
				global.hasbuiltoilderrick = true
			end
			local spos = selected.position
			--log(serpent.block(spos))
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-4,spos.y-4},{spos.x+4,spos.y+4}},name="py-converter-valve"}
			for _, v in pairs(valve) do
				if v.get_recipe() ~= nil then
					--log(serpent.block(v.get_recipe().name))
					if v.get_recipe().name == "oil-to-oil" then
						log("is this working")
						v.set_recipe("oil-to-gas")
					elseif v.get_recipe().name == "oil-to-gas" then
						v.set_recipe("oil-to-oil")
					end
				end
			end
		end
		--Oil derrick mk03 off center
		if selected and selected.name == "oil-derrick-mk03" then
			if global.hasbuiltoilderrick == false then
				global.hasbuiltoilderrick = true
			end
			local spos = selected.position
			--log(serpent.block(spos))
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-5,spos.y-5},{spos.x+5,spos.y+5}},name="py-converter-valve"}
			for _, v in pairs(valve) do
				if v.get_recipe() ~= nil then
					--log(serpent.block(v.get_recipe().name))
					if v.get_recipe().name == "oil-to-oil" then
						log("is this working")
						v.set_recipe("oil-to-gas")
					elseif v.get_recipe().name == "oil-to-gas" then
						v.set_recipe("oil-to-oil")
					end
				end
			end
		end
		--Oil derrick mk04
		if selected and selected.name == "oil-derrick-mk04" then
			if global.hasbuiltoilderrick == false then
				global.hasbuiltoilderrick = true
			end
			local spos = selected.position
			--log(serpent.block(spos))
			local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-6,spos.y-6},{spos.x+6,spos.y+6}},name="py-converter-valve"}
			for _, v in pairs(valve) do
				if v.get_recipe() ~= nil then
					--log(serpent.block(v.get_recipe().name))
					if v.get_recipe().name == "oil-to-oil" then
						log("is this working")
						v.set_recipe("oil-to-gas")
					elseif v.get_recipe().name == "oil-to-gas" then
						v.set_recipe("oil-to-oil")
					end
				end
			end
		end
end)

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

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
	if event.entity.name == "oil-derrick-mk01" then
		local spos = event.entity.position
		local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-2.5,spos.y-2.5},{spos.x+2.5,spos.y+2.5}},name="py-converter-valve"}
		for _, v in pairs(valve) do
			v.destroy()
		end
	elseif event.entity.name == "oil-derrick-mk02" then
		local spos = event.entity.position
		local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-3.5,spos.y-3.5},{spos.x+3.5,spos.y+3.5}},name="py-converter-valve"}
		for _, v in pairs(valve) do
			v.destroy()
		end
	elseif event.entity.name == "oil-derrick-mk03" then
		local spos = event.entity.position
		local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-4.5,spos.y-4.5},{spos.x+4.5,spos.y+4.5}},name="py-converter-valve"}
		for _, v in pairs(valve) do
			v.destroy()
		end
	elseif event.entity.name == "oil-derrick-mk04" then
		local spos = event.entity.position
		local valve = game.surfaces["nauvis"].find_entities_filtered{area={{spos.x-5.5,spos.y-5.5},{spos.x+5.5,spos.y+5.5}},name="py-converter-valve"}
		for _, v in pairs(valve) do
			v.destroy()
		end
	end
end)