require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "ts_ls", "astro", "html", "cssls", "tailwindcss", "terraformls", "angularls" },
	automatic_installation = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.angularls.setup({
	capabilities = capabilities,
})
lspconfig.lua_ls.setup({
	capabilities = capabilities,
})
lspconfig["astro"].setup({
	capabilities = capabilities,
	filetypes = { "astro" },
})
lspconfig.ts_ls.setup({
	capabilities = capabilities,
	root_dir = lspconfig.util.root_pattern("package.json"),
	single_file_support = false,
})
lspconfig["terraformls"].setup({
	capabilities = capabilities,
	filetypes = { "terraform", "hcl" },
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
