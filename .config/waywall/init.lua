local waywall = require("waywall")
local helpers = require("waywall.helpers")

local resolutions = {
    thin = helpers.toggle_res(320, 900),
    eye  = helpers.toggle_res(320, 16384, 0.1),
    tall = helpers.toggle_res(320, 16384),
    wide = helpers.toggle_res(1920, 320),
    zero = helpers.toggle_res(1920, 1080),
}

-- Eye magnifier
helpers.res_mirror(
    {
        src = { x = 130, y = 7902, w = 60, h = 580 },
        dst = { x = 0, y = 315, w = 800, h = 450 },
    },
    320, 16384
)
helpers.res_image(
    "/home/tai/.config/waywall/overlay.png",
    {
        dst = { x = 0, y = 315, w = 800, h = 450 },
    },
    320, 16384
)

-- Tall pie
helpers.res_mirror(
    {
        src = { x = 0, y = 15980, w = 320, h = 260 },
        dst = { x = 800, y = 586, w = 320, h = 260 },
    },
    320, 16384
)

-- F3 Entity Count
helpers.res_mirror(
    {
        src       = { x = 0, y = 36, w = 49, h = 9 },
        dst       = { x = 880, y = 520, w = 196, h = 36 },
        color_key = {
            input  = "#dddddd",
            output = "#00ff00",
        },
    },
    320, 900
)

-- Tall pie numbers
helpers.res_mirror(
    {
        src = { x = 227, y = 16163, w = 84, h = 42 },
        dst = { x = 1120, y = 650, w = 504, h = 252 },
        shader = "pie_chart",
    },
    320, 16384
)

-- Thin pie numbers
helpers.res_mirror(
    {
        src = { x = 227, y = 679, w = 84, h = 42 },
        dst = { x = 1120, y = 650, w = 504, h = 252 },
        shader = "pie_chart",
    },
    320, 900
)

local read_file = function(name)
    local file = io.open("/home/tai/.config/waywall/" .. name, "r")
    local data = file:read("*a")
    file:close()
end

local config = {
    actions = {
        ["*-alt_l"] = helpers.ingame_only(resolutions.thin),
        ["*-z"] = helpers.ingame_only(resolutions.wide),
        ["shift-mmb"] = helpers.ingame_only(resolutions.tall),
        ["mmb"] = helpers.ingame_only(resolutions.eye),

        ["Ctrl-shift-return"] = function()
            waywall.set_keymap({ layout = "us", variant = "colemak_dh" })
        end,
        ["Ctrl-return"] = function()
            waywall.set_keymap({ layout = "mcsr", variant = "curr" })
        end,

        ["Shift-j"] = function()
            waywall.exec("java -jar /home/tai/Downloads/Ninjabrain-Bot-1.5.1.jar")
            waywall.show_floating(true)
        end,
        ["j"] = function() helpers.toggle_floating() end,
    },
    input = {
        layout = "mcsr",
        variant = "curr",

        repeat_rate = 100,
        repeat_delay = 150,

        remaps = {
            ["t"] = "0",
            -- normal layouts
            -- ["a"] = "backspace",
            ["d"] = "backslash",
            -- space backspace
            ["a"] = "apostrophe",
            ["space"] = "home",
            ["tab"] = "semicolon",
            ["leftctrl"] = "tab",
            -- ["space"] = "backspace",
            -- ["leftalt"] = "rightalt",

            -- ["d"] = "space",
            -- ["e"] = "space",
            ["x"] = "b",
            ["b"] = "rightalt",
            -- ["m5"] = "comma",
            ["m5"] = "f3",
            ["m4"] = "comma",
            ["backspace"] = "v",
            ["down"] = "leftctrl",
            -- ["leftalt"] = "equal",
            -- ["leftalt"] = "f3"
            --
            ["leftalt"] = "backspace",
            -- ["f"] = "space",
            -- ["r"] = "f",
            --
            ["x"] = "b",
            ["b"] = "x",
            -- ["x"] = "space",
            -- ["v"] = "space",
            -- ["v"] = "space",
            -- ["a"] = "backspace",
            -- ["q"] = "home",
            -- ["space"] = "space",
            ["leftalt"] = "space",
            ["space"] = "backspace",
            ["tab"] = "home",
        },

        sensitivity = 5.7,
        confine_pointer = false,
    },
    theme = {
        background_png = "/home/tai/wallpapers/chinese.png",
        -- background = "#000000ff",
        -- cursor_theme = "OsuCur",
        -- -- cursor_icon = "duolingo_cur",
        -- cursor_icon = "cursor_blue",
        -- -- cursor_theme = "cross",
        -- -- cursor_icon = "cross",
        ninb_opacity = 0.4,
    },
    shaders = {
        ["pie_chart"] = {
            vertex = read_file("pie_chart.vert"),
            fragment = read_file("pie_chart.frag"),
        },
    },
    experimental = {
        tearing = false,
    },
}

return config
