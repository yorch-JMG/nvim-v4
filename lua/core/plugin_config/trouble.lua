-- add a trouble.nvim configurations for packer.nvim
local trouble = require("trouble")

trouble.setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	-- for more options
	auto_open = false,
	auto_close = false,
	auto_preview = true,
	auto_fold = false,
	auto_jump = { "lsp_definitions" },
	signs = {
		error = "E",
		warning = "W",
		hint = "H",
		information = "I",
	},
	modes = {
		preview_float = {
			type = "float",
			relative = "editor",
			title = "Preview",
			border = "rounded",
			position = { 0, -2 },
			size = {
				width = 0.3,
				height = 0.3,
			},
			zindex = 200,
		},
	},
})

-- set keymaps
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-e>", "<cmd>Trouble diagnostics toggle<cr>", opts)
