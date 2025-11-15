return {
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			vim.api.nvim_set_hl(0, "iblScope", { fg = "#88C0D0" }) -- Example: set foreground color
			-- or
			require("ibl").setup()
		end,
	},
}
