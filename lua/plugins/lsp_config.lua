return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},

		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"astro",
					"html",
					"cssls",
					"tailwindcss",
					"terraformls",
					"angularls",
				},
				automatic_installation = true,
			})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			vim.lsp.config("astro", {
				filetypes = { "astro" },
				capabilities = capabilities,
			})

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
					},
				},
				capabilities = capabilities,
			})

			vim.lsp.config("ts_ls", {
				root_dir = lspconfig.util.root_pattern("package.json"),
				single_file_support = false,
				capabilities = capabilities,
			})

			vim.lsp.config("terraformls", {
				filetypes = { "terraform", "hcl" },
				capabilities = capabilities,
			})

			vim.lsp.config("ruff", {
				filetypes = { "python" },
				capabilities = capabilities,
			})

			vim.lsp.enable("angularls")
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("astro")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("terraformls")
			vim.lsp.enable("ruff")

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
