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
	local E = event.created_entity
	if string.match(E.name, 'oil%-derrick') ~= nil then
		if global.oil_to_gas == true then
			local mk = string.match(E.name, '%d+')
			log(mk)
			local oil = game.surfaces['nauvis'].find_entity('oil-mk' .. mk, E.position)
			if oil ~= nil then
				game.surfaces['nauvis'].create_entity{name = 'natural-gas-' .. string.match(string.match(E.name, '%d+'), '[^0]'), amount = oil.amount, position = oil.position}
				oil.destroy()
			end
		end
	end
end)

script.on_event("recipe-selector", function(event)
log("working")
log(global.oil_to_gas)
	--local player = game.players[event.player_index]
	if global.oil_to_gas == false then
		log('hit')
		global.oil_to_gas = true
	else
		log('hit')
		global.oil_to_gas = false
	end
end)

script.on_event({defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity}, function(event)
	log('hit')
	if string.match(event.entity.name , "oil%-derrick") then
		log('hit')
		local oil = game.surfaces['nauvis'].find_entities( { {event.entity.position.x-1,event.entity.position.y-1} , {event.entity.position.x+1,event.entity.position.y+1} } )
		log('hit')
		log(serpent.block(oil))
			for _, ent in pairs(oil) do
				log('hit')
				if ent.name == "natural-gas-1" then
					log('hit')
					game.surfaces['nauvis'].create_entity{name = 'oil-mk01', amount = ent.amount, position = ent.position}
					ent.destroy()
				elseif ent.name == "natural-gas-2" then
					log('hit')
					game.surfaces['nauvis'].create_entity{name = 'oil-mk02', amount = ent.amount, position = ent.position}
					ent.destroy()
				elseif ent.name == "natural-gas-3" then
					log('hit')
					game.surfaces['nauvis'].create_entity{name = 'oil-mk03', amount = ent.amount, position = ent.position}
					ent.destroy()
				elseif ent.name == "natural-gas-4" then
					log('hit')
					game.surfaces['nauvis'].create_entity{name = 'oil-mk04', amount = ent.amount, position = ent.position}
					ent.destroy()
				end
			end
	end
end)