return {
    {
        "propet/colorscheme-persist.nvim",
        lazy = false,  -- Required: Load on startup to set the colorscheme
        config = true, -- Required: call setup() function
        dependencies = {
            "nvim-telescope/telescope.nvim",

            "Shatur/neovim-ayu",
            "Th3Whit3Wolf/space-nvim",
            "savq/melange-nvim",
            "ellisonleao/gruvbox.nvim",
            "catppuccin/nvim",
            "shaunsingh/nord.nvim",
            "rebelot/kanagawa.nvim",
            "folke/tokyonight.nvim",
            "blazkowolf/gruber-darker.nvim",
            "navarasu/onedark.nvim",
            "Mofiqul/dracula.nvim",
            "baliestri/aura-theme",
            "nyoom-engineering/oxocarbon.nvim",
            "sam4llis/nvim-tundra",
            "EdenEast/nightfox.nvim",
            "rose-pine/neovim",
            "ntk148v/habamax.nvim",
            "rktjmp/lush.nvim",
            "habamax/vim-habamax",
        },
        -- Set a keymap to open the picker
        keys = {
            {
                "<leader>sc", -- Or your preferred keymap
                function()
                    require("colorscheme-persist").picker()
                end,
                mode = "n",
                desc = "Choose colorscheme",
            },
        },
        -- Optional: Configure the plugin (see Configuration section below)
        opts = {
            -- Add custom options here, for example:
            -- fallback = "space-nvim",
            file_path = vim.fn.stdpath("config") .. "/.current_colorscheme.lua",
        },
    },
}
