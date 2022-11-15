return require('packer').startup(function(use)

-----------------------
-- Searching
-----------------------
use {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
-- or                            , tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'}, 
               {'kyazdani42/nvim-web-devicons'},
               --C compiled fzf for faster telescope searching
               { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  }
}

-----------------------
-- LSP and completions
-----------------------
use 'neovim/nvim-lspconfig'

use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'

use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'

use 'jose-elias-alvarez/null-ls.nvim'

-----------------------
-- Visuals
-----------------------
use 'sainnhe/gruvbox-material'

--Better syntax highlight
use { 'pearofducks/ansible-vim', run = './UltiSnips/generate.sh' }
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

use 'vim-airline/vim-airline'
use 'tpope/vim-fugitive'

-----------------------
--Diagnostics
-----------------------
use 'folke/lsp-colors.nvim'
use 'folke/trouble.nvim'

-----------------------
--File viewing
-----------------------
use 'luukvbaal/nnn.nvim'

-----------------------
-- Comments
-----------------------
use 'numToStr/Comment.nvim'

end)
