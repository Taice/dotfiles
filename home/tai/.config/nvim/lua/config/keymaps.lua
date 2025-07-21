-- ts-file-browser
vim.keymap.set("n", "<leader>eh", ":Telescope file_browser<CR>", { noremap = true })
vim.keymap.set("n", "<leader>eb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })
vim.keymap.set("n", "<leader>ec", ":Telescope file_browser path=/home/tai/.config/<CR>", { noremap = true })

-- buffers
vim.keymap.set("n", "<leader>th", ":bprev<CR>", { noremap = true })
vim.keymap.set("n", "<leader>tl", ":bnext<CR>", { noremap = true })
vim.keymap.set("n", "<leader>tw", ":bdelete<CR>", { noremap = true })


-- replace ^D with ^J and ^U with ^K
vim.keymap.set("n", "<C-j>", "<C-d>", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-u>", { noremap = true })


-- ai
vim.keymap.set("n", "<leader>ait", ":SupermavenToggle<CR>", { noremap = true })
local builtin = require('telescope.builtin')

-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set("n", "<leader>w", ":w<CR>")

vim.keymap.set("n", "<leader>zb", ":Zig build<CR>")

vim.keymap.set("n", "<leader>n", ":noh<CR>")
