require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "javascript", "html", "angular", "astro", "typescript", "css" },
	sync_install = false,
	auto_install = true,
    highlight = {
        enable = true,
        disable = { "markdown" },
        additional_vim_regex_highlighting = false,
    },
})
