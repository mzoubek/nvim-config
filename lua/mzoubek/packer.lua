-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use { 'hrsh7th/cmp-buffer' } -- Buffer completion
  use { 'hrsh7th/cmp-path' } -- Path completion
  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
  }
  use({
	  'L3MON4D3/LuaSnip',
	  tag = 'v1.*',
	  requires = {
		  'rafamadriz/friendly-snippets',  -- Optional but useful snippet collection
	  }
  })
  use{ 'm4xshen/autoclose.nvim' }
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons',
	  },
  }
  use { 'lewis6991/gitsigns.nvim' }
  use { 
	  'EdenEast/nightfox.nvim',
	  'feline-nvim/feline.nvim',
  }
  use { 'folke/which-key.nvim' }
  use { 'numToStr/Comment.nvim' }
  use {
	  'folke/noice.nvim',
	  'MunifTanjim/nui.nvim',
  }
  use({
	  "kylechui/nvim-surround",
	  config = function()
		  require("nvim-surround").setup({})
	  end
  })

end)
