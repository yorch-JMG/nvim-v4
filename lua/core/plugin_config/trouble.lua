-- add a trouble.nvim configurations for packer.nvim
local trouble = require("trouble")

trouble.setup({
	signs = {
		error = "E",
		warning = "W",
		hint = "H",
		information = "I",
	},
})

-- set keymaps
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-e>", "<cmd>Trouble diagnostics toggle<cr>", opts)
