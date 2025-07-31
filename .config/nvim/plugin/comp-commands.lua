local function open_floating_window(opts)
    local opts = opts or {}
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
	local buf = vim.api.nvim_create_buf(false, true)

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

-- Global variables to hold session-specific commands
local run_cmd = ""
local compile_cmd = ""

-- Set up keymaps to use the configured commands
vim.keymap.set("n", "<leader>cr", function()
  if run_cmd ~= "" then
    open_floating_window()
    vim.cmd(".!" .. run_cmd)
  else
    print("Run command not set. Use :ConfRun to configure.")
  end
end, { desc = "Run configured command" })

vim.keymap.set("n", "<leader>cc", function()
  if compile_cmd ~= "" then
    open_floating_window()
    vim.cmd(".!" .. compile_cmd)
  else
    print("Compile command not set. Use :ConfCompile to configure.")
  end
end, { desc = "Compile with configured command" })

-- Define user commands to configure run and compile commands
vim.api.nvim_create_user_command("ConfRun", function(opts)
  run_cmd = opts.args
  print("Run command set to: " .. run_cmd)
end, { nargs = "+", complete = "shellcmd" })

vim.api.nvim_create_user_command("ConfCompile", function(opts)
  compile_cmd = opts.args
  print("Compile command set to: " .. compile_cmd)
end, { nargs = "+", complete = "shellcmd" })
