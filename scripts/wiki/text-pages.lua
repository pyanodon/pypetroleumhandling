Wiki = {}
Wiki.events = {}

Wiki.events.on_init = function()
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
end
