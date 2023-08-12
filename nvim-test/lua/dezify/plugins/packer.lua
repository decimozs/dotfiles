vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("mhartington/oceanic-next")
	use("nvim-lualine/lualine.nvim")
	use("williamboman/mason.nvim")
	use("tribela/vim-transparent")
	use("folke/trouble.nvim")
	use("folke/lsp-colors.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
	use("nvim-lua/plenary.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- [plugin] - gopher a go plugin
	use("olexsmir/gopher.nvim")
	use({ "bluz71/vim-nightfly-colors", as = "nightfly" })
	use("xiyaowong/transparent.nvim")
	use("andweeb/presence.nvim")
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.2" })
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("akinsho/toggleterm.nvim")
	use("folke/todo-comments.nvim")
	use("folke/noice.nvim")
	use("MunifTanjim/nui.nvim")
	use("rcarriga/nvim-notify")
	use("romgrk/barbar.nvim")
	use("lukas-reineke/indent-blankline.nvim")
end)
