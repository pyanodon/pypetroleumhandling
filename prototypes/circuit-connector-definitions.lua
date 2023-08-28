-- Holds circuit connection definitions for PyPH entities.
-- variation counts from 0 (Python-like).

circuit_connector_definitions["oil-sand-extractor-mkxx"] = circuit_connector_definitions.create
(
  universal_connector_template,
  {--Directions are up, right, down, left.
    { variation = 10, main_offset = util.by_pixel(105, -150), shadow_offset = util.by_pixel(99, -138), show_shadow = false },
    { variation = 10, main_offset = util.by_pixel(105, -150), shadow_offset = util.by_pixel(99, -138), show_shadow = false },
    { variation = 10, main_offset = util.by_pixel(105, -150), shadow_offset = util.by_pixel(99, -138), show_shadow = false },
    { variation = 10, main_offset = util.by_pixel(105, -150), shadow_offset = util.by_pixel(99, -138), show_shadow = false }
  }
)
