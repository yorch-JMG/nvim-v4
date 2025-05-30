local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'
	use("ellisonleao/gruvbox.nvim")
	use("bluz71/vim-moonfly-colors")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-telescope/telescope-ui-select.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")

	use("stevearc/conform.nvim")
	use("mfussenegger/nvim-lint")

	use({
		"hrsh7th/nvim-cmp",
		requires = { { "hrsh7th/cmp-nvim-lsp" } },
	})

	use({ "L3MON4D3/LuaSnip", requires = { { "saadparwaiz1/cmp_luasnip" }, { "rafamadriz/friendly-snippets" } } })

	use("github/copilot.vim")
	use({
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	use("lewis6991/gitsigns.nvim")
	use("sindrets/diffview.nvim")
	use("tpope/vim-fugitive")

	use("windwp/nvim-ts-autotag")
	use("lukas-reineke/indent-blankline.nvim")

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
