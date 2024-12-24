require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "ts_ls", "astro", "html", "cssls", "tailwindcss", "denols" },
	automatic_installation = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
	capabilities = capabilities,
})
lspconfig.denols.setup({
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
	init_options = {
		config = "./deno.jsonc",
		lint = true,
	},
})
lspconfig.ts_ls.setup({
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern("package.json"),
	single_file_support = false,
})
lspconfig["astro"].setup({
	capabilities = capabilities,
	filetypes = { "astro" },
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
