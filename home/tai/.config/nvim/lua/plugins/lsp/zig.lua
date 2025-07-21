return { { 'ziglang/zig.vim' },
    {
        dependencies = {
            "nvim-lua/plenary.nvim",
            "akinsho/toggleterm.nvim"
        },
        "NTBBloodbath/zig-tools.nvim",
        config = function()
            -- Initialize with default config
            require("zig-tools").setup()
        end,
    }
}
