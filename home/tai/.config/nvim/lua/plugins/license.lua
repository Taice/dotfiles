return {
	"KronsyC/nvim-license",
	opts = function()
		return {
			name = "YOUR_USERNAME",
			-- Optional
			-- year = "2023"
		}
	end,

	cmd = {
		"License",
		"LicenseHeader",
		"AutoLicense"
	},
	dependencies = {
		{ "numToStr/Comment.nvim" }
	}

}
