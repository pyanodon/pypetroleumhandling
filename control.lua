
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)

--local E = event.created_entity
	
	--if E.name == "py-sinkhole" or E.name == "py-gas-vent" then
	
		--E.insert({name = "coal", count = 1})
	
	--end

end)

--game.surfaces["nauvis"].create_entity{name=Rocks[SelectedRock],position={Randx,Randy},amount=math.random(1000000,15000000)}

script.on_event("recipe-selector", function(event)
local player = game.players[event.player_index]
local recipe = player.selected.get_recipe()
--log(serpent.block(player.selected.name))
	if string.find(player.selected.name,"advanced-foundry") ~= nil then
	log("is this working")
		if recipe.category == "advanced-foundry" or recipe.category == "smelting" then
		log("how about here")
			player.selected.set_recipe("hotair-" .. recipe.name)
		end
	end
end)