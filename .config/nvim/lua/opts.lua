-- Hell Bigma opts
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.cmd(":set expandtab")
vim.o.clipboard = "unnamedplus"
vim.cmd(":set termguicolors")
vim.swapfile = false
vim.g.mapleader = " "
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.updatetime = 250 -- default is 4000ms
vim.o.scrolloff = 1000
vim.cmd("colorscheme boat")
vim.cmd(":hi normalfloat guibg=NONE")
vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
