require "cmp".setup({})
require "oil".setup()
require "mini.surround".setup()
require "mini.pairs".setup()
require "colorizer".setup()
require "lazydev".setup()
require "Comment".setup()
require("gomove").setup {
    -- whether or not to map default key bindings, (true/false)
    map_defaults = false,
    -- whether or not to reindent lines moved vertically (true/false)
    reindent = true,
    -- whether or not to undojoin same direction moves (true/false)
    undojoin = true,
    -- whether to not to move past end column when moving blocks horizontally, (true/false)
    move_past_end_col = false,
}
-- require("nvim-treesitter.configs").setup({
--     ensure_installed = { "rust", "lua", "c", "cpp", "zig" },
--     highlight = { enable = true },
--     indent = { enable = true },
-- })

vim.lsp.enable('lua_ls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('zls')
vim.lsp.enable('clangd')
vim.lsp.enable('somesass_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('gopls')
vim.lsp.enable('ols')
vim.lsp.enable('glsl_analyzer')
vim.lsp.config('qmlls', {
    cmd = { "qmlls", "-E" }
})

require 'telescope'.setup({
    pickers = {
        find_files = {
            theme = "ivy",
            hidden = true
        }
    },
})
require 'telescope'.load_extension('fzy_native')

require 'treesitter-context'.setup()

require("flash").setup()
require("flash").toggle()
