-- force .h to be c
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.h",
	callback = function()
		vim.bo.filetype = "c"
	end,
})
-- force .hpp to be cpp
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.hpp",
	callback = function()
		vim.bo.filetype = "cpp"
	end,
})

