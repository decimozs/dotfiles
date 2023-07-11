-- auto install packer if not installed
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
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- installer for the plugins
return packer.startup(function(use)
	-- add your plugins to install

	-- [plugin] - packer
	use("wbthomason/packer.nvim")

	-- [plugin] - plenary
	use("nvim-lua/plenary.nvim")

	-- [plugin] - vim notify
	use("rcarriga/nvim-notify")

	-- [plugin] - transparent theme
	use("xiyaowong/transparent.nvim")

	-- [plugin] - color scheme
	use("folke/lazy.nvim") -- tokyo night theme
	use("rebelot/kanagawa.nvim") -- kanagawa theme
	use("ellisonleao/gruvbox.nvim") -- gruvbox theme

	-- [plugin] - indent blankline
	use("lukas-reineke/indent-blankline.nvim")

	-- [plugin] - discord rich presence
	use("andweeb/presence.nvim")

	-- [plugin] - maximizes and restores current window
	use("szw/vim-maximizer")

	-- [plugin] - comment
	use("numToStr/Comment.nvim")

	-- [plugin] - file explorer
	use("nvim-tree/nvim-tree.lua")

	-- [plugin] - icons
	use("nvim-tree/nvim-web-devicons")

	-- [plugin] - terminal
	use("akinsho/toggleterm.nvim")

	-- [plugin] - status line
	use("nvim-lualine/lualine.nvim")

	-- [plugin] -- telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.1" }) -- fuzzy finder

	-- [plugin] -- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- [plugin] - snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- [plugin] - managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
	use("williamboman/nvim-lsp-installer") -- lsp server

	-- [plugin] - configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	})

	-- [plugin] - enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- [plugin] - formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- [plugin] - treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- [plugin] - auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- [plugin] - git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- [plugin] - gopher a go plugin
	use("olexsmir/gopher.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
