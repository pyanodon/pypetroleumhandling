for _, derrick in pairs(storage.oil_derricks) do
    derrick.drilling_fluid_amount = 1
    if derrick.drilling_fluid ~= "" then
        ---@type LuaEntity
        local entity = derrick.entity
        ---@type LuaEntity
        local resource = entity.surface.find_entities_filtered{
            position = entity.position,
            type = "resource"
        }[1]
        local amt_drained = 2500 - resource.amount
        derrick.drilling_fluid_amount = amt_drained * (derrick.drilling_fluid:match("%d$") + 1) ^ 2
    end
    derrick.drilling_fluid = nil
end