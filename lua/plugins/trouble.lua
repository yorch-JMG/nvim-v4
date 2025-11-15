return {
	{
		"folke/trouble.nvim",
		opts = {},
		cmd = "Trouble",
		keys = {
			{ "<leader>xx", "<cmd>Trouble<cr>", desc = "Trouble Toggle" },
			{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
			{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
			{ "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Location List" },
			{ "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List" },
			{ "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "LSP References" },
		},
		config = function()
			require("trouble").setup()
		end,
	},
}
