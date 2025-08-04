vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>ld', ':Telescope diagnostics<CR>')
vim.keymap.set('n', '<leader>rg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>lg', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>bn', ':bnext<CR>')
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>')
vim.keymap.set('t', '<esc><esc>', '<C-\\><C-n>')
vim.keymap.set("n", "<C-j>", "<Plug>GoNSMDown")
vim.keymap.set("n", "<C-k>", "<Plug>GoNSMUp")
vim.keymap.set("v", "<C-j>", "<Plug>GoVSMDown")
vim.keymap.set("v", "<C-k>", "<Plug>GoVSMUp")

local telescope = require('telescope.builtin')
local home = vim.fn.expand('$HOME')
vim.keymap.set('n', '<leader>fo', ':Oil<CR>')
vim.keymap.set('n', '<leader>ff', function()
	telescope.find_files { cwd =
		vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":h") }
end)
vim.keymap.set('n', '<leader>fc', function()
	telescope.find_files { cwd = vim.fs.joinpath(home, ".config") }
end)
vim.keymap.set('n', '<leader>fh', function()
	telescope.find_files { cwd = home }
end)

vim.keymap.set('n', '<M-m>', ':make run<CR>')

vim.keymap.set('n', '<leader>d', function()
  vim.diagnostic.open_float(nil, { focus = false })
end, { desc = "Show diagnostics under cursor" })
