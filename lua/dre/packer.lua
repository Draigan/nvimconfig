-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- Treesitter
use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

-- LSP ZERO
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

-- Themes
use ('folke/tokyonight.nvim')

--Telescope
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- Harpoon
use ('theprimeagen/harpoon')

-- webdev icons
use 'nvim-tree/nvim-web-devicons'

-- Tabs
use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

-- Comments
use ('tpope/vim-commentary')

-- NVIM tree
use 'nvim-tree/nvim-tree.lua'

-- Undo tree
use ('mbbill/undotree')

--Terminal
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
end}







end)
