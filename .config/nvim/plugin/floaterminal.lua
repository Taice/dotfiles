local state = {
	floating = {
		buf = -1,
		win = -1,
	}
}

local function open_floating_window(opts)
	opts = opts or {}
	-- Get current Neovim window dimensions
	local ui = vim.api.nvim_list_uis()[1]
	local win_width = ui.width
	local win_height = ui.height

	-- Default to 80% of the window size if width/height not provided
	local width = opts.width or math.floor(win_width * 0.8)
	local height = opts.height or math.floor(win_height * 0.8)

	-- Center the floating window
	local row = math.floor((win_height - height) / 3)
	local col = math.floor((win_width - width) / 2)

	-- Create a new empty buffer
	local buf = nil
	if vim.api.nvim_buf_is_valid(opts.buf) then
		buf = opts.buf
	else
		buf = vim.api.nvim_create_buf(false, true)
	end

	-- Define window options
	local opts = {
		style = "minimal",
		relative = "editor",
		width = width,
		height = height,
		row = row,
		col = col,
		border = "rounded",
	}

	-- Open the floating window
	local win = vim.api.nvim_open_win(buf, true, opts)
	return { buf = buf, win = win }
end

local toggle_term = function()
	if not vim.api.nvim_win_is_valid(state.floating.win) then
		state.floating = open_floating_window { buf = state.floating.buf }
		if vim.bo[state.floating.buf].buftype ~= "terminal" then
			vim.cmd.terminal()
		end
		vim.cmd("normal i")
	else
		vim.api.nvim_win_hide(state.floating.win)
	end
end

vim.api.nvim_create_user_command("Floaterminal", toggle_term, {})
vim.keymap.set({ "n", "t" }, "<space>tt", toggle_term)
