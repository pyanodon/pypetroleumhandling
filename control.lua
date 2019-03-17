
script.on_event({defines.events.on_built_entity, defines.events.on_robot_built_entity}, function(event)

local E = event.created_entity
	
	if E.name == "py-sinkhole" or E.name == "py-gas-vent" then
	
		E.insert({name = "coal", count = 1})
	
	end

end)

--game.surfaces["nauvis"].create_entity{name=Rocks[SelectedRock],position={Randx,Randy},amount=math.random(1000000,15000000)}
