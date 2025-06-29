return {
    {
        "savq/melange-nvim",
        priority = 1000,
        lazy = false,
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require('gruvbox').setup()
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        config = function()
            require('catppuccin').setup()
        end
    },

    {
        "shaunsingh/nord.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require('nord').set()
        end
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 100,
        lazy = false,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {}
    },
    {
        "blazkowolf/gruber-darker.nvim",
        lazy = false,
        priority = 1000,
        opts = {}
    },
    {
        "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('onedark').setup {
                style = 'darker'
            }
        end
    },
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
        {
            "baliestri/aura-theme",
            lazy = false,
            priority = 1000,
            config = function(plugin)
                vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
                vim.cmd([[colorscheme aura-dark]])
            end
        }
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        lazy = false,
        priority = 1000,
    }
}
