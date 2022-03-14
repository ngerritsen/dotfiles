local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Automatically reload neovim when saving plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Get packer if it exists
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Use packer popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Packer plugin manager
	use("nvim-lua/plenary.nvim") -- Utility belt for neovim plugins

	-- General
	use("numToStr/Comment.nvim") -- Easy comments
	use("windwp/nvim-autopairs") -- Auto insert bracket pairs
	use("JoosepAlviste/nvim-ts-context-commentstring") -- Make comment strings work with JSX
	use("editorconfig/editorconfig-vim") -- Use editorconfig
	use("tpope/vim-surround") -- Surround words with symbols
	use("tpope/vim-fugitive") -- Git helpers
	use("tpope/vim-eunuch") -- Unix helpers
	use("mg979/vim-visual-multi") -- Multi cursor
	use("sheerun/vim-polyglot") -- Basic syntax highlighting for popular file types
	use("kburdett/vim-nuuid") -- Generate UUID's
	use("vim-test/vim-test") -- Run unit tests
	use("mattn/emmet-vim") -- Run unit tests
	use("folke/which-key.nvim") -- Shows keyboard shortcuts
	use("nvim-lua/popup.nvim") -- Popups in nvim
	use("moll/vim-bbye") -- Close buffers without closing vim
	use("norcalli/nvim-colorizer.lua") -- Highlight colors codes
	use("akinsho/toggleterm.nvim") -- Integrated terminal

	-- Colorschemes
	use("ellisonleao/gruvbox.nvim") -- Best colorscheme ever
	use("joshdick/onedark.vim") -- Atom One Dark theme
	use("arcticicestudio/nord-vim") -- Nord theme
	use("folke/tokyonight.nvim") -- Tokyo Night theme
	use("shaunsingh/moonlight.nvim") -- Moonlight theme
	use("ayu-theme/ayu-vim") -- Ayu theme

	-- Completion
	use("hrsh7th/nvim-cmp") -- Core cmp completion plugin
	use("hrsh7th/cmp-buffer") -- Buffer completions
	use("hrsh7th/cmp-path") -- Path completions
	use("hrsh7th/cmp-cmdline") -- Command line completions
	use("hrsh7th/cmp-nvim-lsp") -- LSP completions
	use("saadparwaiz1/cmp_luasnip") -- Luasnip snippet completions
	use("lukas-reineke/indent-blankline.nvim") -- Show whitespace indicators
	use("lewis6991/impatient.nvim") -- Improves lua performance

	-- Snippets
	use("L3MON4D3/LuaSnip") -- Luasnip snippets plugin
	use("rafamadriz/friendly-snippets") -- Snippet library

	-- LSP
	use("neovim/nvim-lspconfig") -- Enables LSP
	use("williamboman/nvim-lsp-installer") -- Manage language servers
	use("jose-elias-alvarez/null-ls.nvim") -- Inject stuff like linters into the Neovim LSP

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim", -- Fuzzy finder
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("junegunn/fzf")
	use("junegunn/fzf.vim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter", -- Smart syntax analysis and highlighting
		run = ":TSUpdate",
	})

	-- Git Signs
	use({
		"lewis6991/gitsigns.nvim", -- Git indicators in the editor gutter
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- NvimTree
	use({
		"kyazdani42/nvim-tree.lua", -- File explorer
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	-- Alpha
	use({
		"goolord/alpha-nvim", -- Startpage
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	if PACKER_BOOSTRAP then
		require("packer").sync()
	end
end)
