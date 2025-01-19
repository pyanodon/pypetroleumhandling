-- Holds circuit connection definitions for PyPH entities.
-- variation counts from 0 (Python-like).

circuit_connector_definitions["natural-gas-derrick-mkxx"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 17, main_offset = util.by_pixel(-70, -20), shadow_offset = util.by_pixel(-76, -8), show_shadow = false},
            {variation = 17, main_offset = util.by_pixel(-70, -20), shadow_offset = util.by_pixel(-76, -8), show_shadow = false},
            {variation = 17, main_offset = util.by_pixel(-70, -20), shadow_offset = util.by_pixel(-76, -8), show_shadow = false},
            {variation = 17, main_offset = util.by_pixel(-70, -20), shadow_offset = util.by_pixel(-76, -8), show_shadow = false}
        }
    )

circuit_connector_definitions["oil-derrick-mk01"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 11, main_offset = util.by_pixel(44, 20), shadow_offset = util.by_pixel(38, 32), show_shadow = false},
            {variation = 11, main_offset = util.by_pixel(44, 20), shadow_offset = util.by_pixel(38, 32), show_shadow = false},
            {variation = 11, main_offset = util.by_pixel(44, 20), shadow_offset = util.by_pixel(38, 32), show_shadow = false},
            {variation = 11, main_offset = util.by_pixel(44, 20), shadow_offset = util.by_pixel(38, 32), show_shadow = false}
        }
    )

circuit_connector_definitions["oil-derrick-mk02"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 2, main_offset = util.by_pixel(0, 75), shadow_offset = util.by_pixel(-6, 87), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(0, 75), shadow_offset = util.by_pixel(-6, 87), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(0, 75), shadow_offset = util.by_pixel(-6, 87), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(0, 75), shadow_offset = util.by_pixel(-6, 87), show_shadow = false}
        }
    )

circuit_connector_definitions["oil-derrick-mk03"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 26, main_offset = util.by_pixel(-90, -65), shadow_offset = util.by_pixel(-96, -53), show_shadow = false},
            {variation = 26, main_offset = util.by_pixel(-90, -65), shadow_offset = util.by_pixel(-96, -53), show_shadow = false},
            {variation = 26, main_offset = util.by_pixel(-90, -65), shadow_offset = util.by_pixel(-96, -53), show_shadow = false},
            {variation = 26, main_offset = util.by_pixel(-90, -65), shadow_offset = util.by_pixel(-96, -53), show_shadow = false}
        }
    )

circuit_connector_definitions["oil-derrick-mk04"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 27, main_offset = util.by_pixel(118, -95), shadow_offset = util.by_pixel(112, -83), show_shadow = false},
            {variation = 27, main_offset = util.by_pixel(118, -95), shadow_offset = util.by_pixel(112, -83), show_shadow = false},
            {variation = 27, main_offset = util.by_pixel(118, -95), shadow_offset = util.by_pixel(112, -83), show_shadow = false},
            {variation = 27, main_offset = util.by_pixel(118, -95), shadow_offset = util.by_pixel(112, -83), show_shadow = false}
        }
    )

circuit_connector_definitions["oil-sand-extractor-mkxx"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 10, main_offset = util.by_pixel(105, -150), shadow_offset = util.by_pixel(99, -138), show_shadow = false},
            {variation = 10, main_offset = util.by_pixel(105, -150), shadow_offset = util.by_pixel(99, -138), show_shadow = false},
            {variation = 10, main_offset = util.by_pixel(105, -150), shadow_offset = util.by_pixel(99, -138), show_shadow = false},
            {variation = 10, main_offset = util.by_pixel(105, -150), shadow_offset = util.by_pixel(99, -138), show_shadow = false}
        }
    )

circuit_connector_definitions["sulfur-mine"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 2, main_offset = util.by_pixel(90, 72), shadow_offset = util.by_pixel(84, 60), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(90, 72), shadow_offset = util.by_pixel(84, 60), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(90, 72), shadow_offset = util.by_pixel(84, 60), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(90, 72), shadow_offset = util.by_pixel(84, 60), show_shadow = false}
        }
    )

circuit_connector_definitions["tar-extractor-mkxx"] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            {variation = 2, main_offset = util.by_pixel(28, 20), shadow_offset = util.by_pixel(22, 32), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(28, 20), shadow_offset = util.by_pixel(22, 32), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(28, 20), shadow_offset = util.by_pixel(22, 32), show_shadow = false},
            {variation = 2, main_offset = util.by_pixel(28, 20), shadow_offset = util.by_pixel(22, 32), show_shadow = false}
        }
    )
