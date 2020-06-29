script.on_init(function()

global.hasbuiltoilderrick = false
global.oil_to_gas = false
global.first_chunk = false


end)

script.on_configuration_changed(function()

	if global.hasbuiltoilderrick == nil then
		global.hasbuiltoilderrick = false
	end
	if global.oil_to_gas == nil then
		global.oil_to_gas = false
	end

end)

local function oil_gas_select(entity, global_bypass)
	local E = entity
	if string.match(E.name, 'oil%-derrick') ~= nil then
		if global.oil_to_gas == true or global_bypass == true then
			local mk = string.match(E.name, '%d+')
			log(mk)
			local oil = game.surfaces['nauvis'].find_entity('oil-mk' .. mk, E.position)
			local gas = game.surfaces['nauvis'].find_entity('natural-gas-' .. string.match(string.match(E.name, '%d+'), '[^0]'), E.position)
			if oil ~= nil then
				game.surfaces['nauvis'].create_entity{name = 'natural-gas-' .. string.match(string.match(E.name, '%d+'), '[^0]'), amount = oil.amount, position = oil.position}
				oil.destroy()
			elseif gas ~= nil then
				game.surfaces['nauvis'].create_entity{name = 'oil-mk' .. mk, amount = gas.amount, position = gas.position}
				gas.destroy()
			end
		end
	end
end

script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)
	local E = event.created_entity
	oil_gas_select(E)
end)

script.on_event("recipe-selector", function(event)
--log("working")
--log(global.oil_to_gas)
	local player = game.players[event.player_index]
	local selected = player.selected
	if selected == nil or string.match(selected.name, 'oil%-derrick') == nil then
		if global.oil_to_gas == false then
			--log('hit')
			global.oil_to_gas = true
		else
			--log('hit')
			global.oil_to_gas = false
		end
	elseif selected and string.match(selected.name, 'oil%-derrick') ~= nil then
		local gas = true
		oil_gas_select(selected, gas)
	end
end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
	--log('hit')
	if string.match(event.entity.name , "oil%-derrick") then
		--log('hit')
		local oil = game.surfaces['nauvis'].find_entities( { {event.entity.position.x-1,event.entity.position.y-1} , {event.entity.position.x+1,event.entity.position.y+1} } )
		--log('hit')
		--log(serpent.block(oil))
			for _, ent in pairs(oil) do
				--log('hit')
				if ent.name == "natural-gas-1" then
					--log('hit')
					game.surfaces['nauvis'].create_entity{name = 'oil-mk01', amount = ent.amount, position = ent.position}
					ent.destroy()
				elseif ent.name == "natural-gas-2" then
					--log('hit')
					game.surfaces['nauvis'].create_entity{name = 'oil-mk02', amount = ent.amount, position = ent.position}
					ent.destroy()
				elseif ent.name == "natural-gas-3" then
					--log('hit')
					game.surfaces['nauvis'].create_entity{name = 'oil-mk03', amount = ent.amount, position = ent.position}
					ent.destroy()
				elseif ent.name == "natural-gas-4" then
					--log('hit')
					game.surfaces['nauvis'].create_entity{name = 'oil-mk04', amount = ent.amount, position = ent.position}
					ent.destroy()
				end
			end
	end
end)

script.on_event(defines.events.on_rocket_launch_ordered, function()

	local map_settings =
	{
		autoplace_settings =
			{
				["decorative"]={
				treat_missing_as_default=false,
				settings = {}
				},
				["entity"]={
				treat_missing_as_default=false,
				settings = {}
				},
				["tile"]={
				treat_missing_as_default=false,
				settings = {
					['space-plate'] = {}
				}
				},
			},
		default_enable_all_autoplace_controls = false,
		cliff_settings =
			{
				
			}
	}

	if game.surfaces['test'] == nil then
		game.create_surface('test', map_settings)
		game.surfaces['test'].request_to_generate_chunks({0,0},1)
	end
end)

script.on_event(defines.events.on_rocket_launched, function(event)
	if global.first_chunk == false then
		local tiles = {}
		local x = -3
		local y = -3
		for i = 1,36 do
			local tile = {name = 'space-plate', position = {x, y}}
			table.insert(tiles, tile)
			x = x + 1
			if x == 3 then
				x = -3
				y = y + 1
			end
		end
		--log(serpent.block(tiles))
		game.surfaces['test'].set_tiles(tiles)

		--game.players[1].teleport({0,0}, 'test')
		global.first_chunk = true
	end

	if event.player_index ~= nil then
		if game.players[event.player_index].surface.name == 'nauvis' then
			game.players[event.player_index].teleport({0,0}, 'test')
		elseif game.players[event.player_index].surface.name == 'test' then
			game.players[event.player_index].teleport({0,0}, 'nauvis')
		end
	end

end)

script.on_event(defines.events.on_chunk_generated, function(event)
	--log('should only see this once per chunk gen call')
	--log('hit all other chunks')
	if game.surfaces['test'] ~= nil then
		local entities = game.surfaces['test'].find_entities(event.area)
		local old_tiles = game.surfaces['test'].find_tiles_filtered{area = event.area}
		local tiles = {}
		for e, ent in pairs(entities) do
			--log('hit')
			--log(ent.name)
			--log(ent.type)
			if ent.type == 'cliff' then
				ent.destroy()
			end
		end
		for t, til in pairs(old_tiles) do
			log(til.position)
			local tile = {name = 'space', position = til.position}
			table.insert(tiles, tile)
		end
		game.surfaces['test'].set_tiles(tiles)
	end
end)

script.on_event(defines.events.on_tick, function(event)

	local entity = game.surfaces['nauvis'].find_entities_filtered{name = 'antenna'}
	local antenna = {}
	for _,ent in pairs(entity) do
		if ent.name == 'antenna' then
			antenna = ent
		end
	end

	log(serpent.block(antenna.get_merged_signals()))

end)