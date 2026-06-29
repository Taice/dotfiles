-- Global variables to hold session-specific commands
local run_cmd = ""
local compile_cmd = ""

-- Set up keymaps to use the configured commands
vim.keymap.set("n", "<leader>cr", function()
    if run_cmd ~= "" then
        vim.cmd(":Floaterminal")
        vim.cmd("norm " .. run_cmd .. "<CR>")
    else
        print("Run command not set. Use :ConfRun to configure.")
    end
end, { desc = "Run configured command" })

vim.keymap.set("n", "<leader>cc", function()
    if compile_cmd ~= "" then
        vim.cmd(":Floaterminal")
        vim.cmd(compile_cmd .. "<CR>")
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
