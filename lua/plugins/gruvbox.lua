return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "hard",
				palette_overrides = {
					dark0_hard = "#1d2021",
					dark0 = "#282828",
					dark0_soft = "#32302f",
				},
				dim_inactive_windows = true,
				transparent_mode = true,
			})
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
}
