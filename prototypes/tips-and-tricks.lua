Event.register(Event.core_events.init_and_config, function()
    remote.call("pywiki", "add_section", "petroleumhandling")

    remote.call("pywiki", "add_page", {
        name = "bitumen-seep",
        section = "petroleumhandling",
        text_only = true
    })

    remote.call("pywiki", "add_page", {
        name = "tholin",
        section = "petroleumhandling",
        text_only = true
    })
end)
