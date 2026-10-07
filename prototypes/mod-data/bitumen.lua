
-- TODO: bitumen mod-data

if helpers.stage == "prototype" then
    py.yafc_integrations.pypetroleumhandling_bitumen = function()
        py.log.debug("Fix bitumen seeps")

        local changed_seeps = {
            "tar-patch",
            "natural-gas-mk01",
            "natural-gas-mk02",
            "natural-gas-mk03",
            "natural-gas-mk04",
            "oil-mk01",
            "oil-mk02",
            "oil-mk03",
            "oil-mk04"
        }

        for _, resource in ipairs(changed_seeps) do
            data.raw["resource"][resource].autoplace = data.raw["resource"]["bitumen-seep"].autoplace
        end
    end
end
