require "cmp".setup({})
require "oil".setup()
require "mini.surround".setup()
require "mini.pairs".setup()
require "colorizer".setup()
require "lazydev".setup()
require "flash".setup()
require "flash".toggle()
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
require("nvim-treesitter.configs").setup({
	ensure_installed = { "rust", "lua", "c", "cpp", "zig" },
	highlight = { enable = true },
	indent = { enable = true },
})

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.zls.setup({})
lspconfig.clangd.setup({})
lspconfig.somesass_ls.setup({})
lspconfig.pyright.setup({})


require 'telescope'.setup({
	pickers = {
		find_files = {
			theme = "ivy",
		}
	},
})
require 'telescope'.load_extension('fzy_native')
