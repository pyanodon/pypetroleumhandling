
local nat_gas1 = table.deepcopy(data.raw.resource['crude-oil'])
local nat_gas2 = table.deepcopy(data.raw.resource['crude-oil'])
local nat_gas3 = table.deepcopy(data.raw.resource['crude-oil'])
local nat_gas4 = table.deepcopy(data.raw.resource['crude-oil'])

nat_gas1.name = 'natural-gas-mk01'
nat_gas1.minable =
{
  mining_time = 1,
  results =
  {
    {
      type = "fluid",
      name = "natural-gas",
      amount = 100,
    }
  }
}
nat_gas1.infinite = false
nat_gas1.autoplace = nil
nat_gas1.map_color = {r=0.2, g=0.1, b=0.2}
nat_gas1.category = 'natural-gas'

nat_gas2.name = 'natural-gas-mk02'
nat_gas2.minable =
{
  mining_time = 1,
  results =
  {
    {
      type = "fluid",
      name = "natural-gas",
      amount = 100,
    }
  }
}
nat_gas2.infinite = false
nat_gas2.autoplace = nil
nat_gas1.map_color = {r=0.2, g=0.1, b=0.2}
nat_gas2.category = 'natural-gas'

nat_gas3.name = 'natural-gas-mk03'
nat_gas3.minable =
{
  mining_time = 1,
  results =
  {
    {
      type = "fluid",
      name = "natural-gas",
      amount = 100,
    }
  }
}
nat_gas3.infinite = false
nat_gas3.autoplace = nil
nat_gas1.map_color = {r=0.2, g=0.1, b=0.2}
nat_gas3.category = 'natural-gas'

nat_gas4.name = 'natural-gas-mk04'
nat_gas4.minable =
{
  mining_time = 1,
  results =
  {
    {
      type = "fluid",
      name = "natural-gas",
      amount = 100,
    }
  }
}
nat_gas4.infinite = false
nat_gas4.autoplace = nil
nat_gas1.map_color = {r=0.2, g=0.1, b=0.2}
nat_gas4.category = 'natural-gas'

data.raw.resource['natural-gas-mk01'] = nat_gas1
data.raw.resource['natural-gas-mk02'] = nat_gas2
data.raw.resource['natural-gas-mk03'] = nat_gas3
data.raw.resource['natural-gas-mk04'] = nat_gas4
