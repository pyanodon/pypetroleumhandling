
local nat_gas1 = table.deepcopy(data.raw.resource['oil-mk01'])
local nat_gas2 = table.deepcopy(data.raw.resource['oil-mk02'])
local nat_gas3 = table.deepcopy(data.raw.resource['oil-mk03'])
local nat_gas4 = table.deepcopy(data.raw.resource['oil-mk04'])

nat_gas1.name = 'natural-gas-1'
nat_gas1.minable.results[1].name = 'natural-gas'
nat_gas1.autoplace = {}

nat_gas2.name = 'natural-gas-2'
nat_gas2.minable.results[1].name = 'natural-gas'
nat_gas2.autoplace = {}

nat_gas3.name = 'natural-gas-3'
nat_gas3.minable.results[1].name = 'natural-gas'
nat_gas3.autoplace = {}

nat_gas4.name = 'natural-gas-4'
nat_gas4.minable.results[1].name = 'natural-gas'
nat_gas4.autoplace = {}

--log(serpent.block(data.raw.resource['natural-gas-1']))
data.raw.resource['natural-gas-1'] = nat_gas1
data.raw.resource['natural-gas-2'] = nat_gas2
data.raw.resource['natural-gas-3'] = nat_gas3
data.raw.resource['natural-gas-4'] = nat_gas4
--log(serpent.block(data.raw.resource['natural-gas-1']))
