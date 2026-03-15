local waywall = require("waywall")
local helpers = require("waywall.helpers")

local config = {
    actions = {
    },
    input = {
        layout = "personal",
        variant = "colemak_sumniki",

        repeat_rate = 60,
        repeat_delay = 200,

        remaps = {
        },

        sensitivity = 1,
        confine_pointer = false,
    },
    theme = {
        background = "#000000ff",
        cursor_theme = "OsuCur",
        cursor_icon = "cursor_blue",
        cursor_size = 1,
        -- cursor_theme = "cross",
        -- cursor_icon = "cross",
        ninb_opacity = 0.4,
    },
    experimental = {
        tearing = false,
    },
}

return config
