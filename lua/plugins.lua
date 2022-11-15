return require('packer').startup(function(use)

-----------------------
-- Searching
-----------------------
use {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
   -- or                         , tag = '0.1.0',
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

use 'jose-elias-alvarez/null-ls.nvim'

use { 'hrsh7th/nvim-cmp',
    requires = {
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-cmdline'},
        {'L3MON4D3/LuaSnip'},
        {'saadparwaiz1/cmp_luasnip'}
    }
}

-----------------------
-- Visuals
-----------------------
use 'sainnhe/gruvbox-material'

-- Syntax highlighting
use { 'pearofducks/ansible-vim', run = './UltiSnips/generate.sh' }
use { 'nvim-treesitter/nvim-treesitter' }

-----------------------
-- Git
-----------------------
use 'tpope/vim-fugitive'
use 'vim-airline/vim-airline'

-----------------------
-- Diagnostics
-----------------------
use { 'folke/trouble.nvim', requires = { {'folke/lsp-colors.nvim'} } }

-----------------------
-- File manager
-----------------------
use 'luukvbaal/nnn.nvim'

-----------------------
-- Comments
-----------------------
use 'numToStr/Comment.nvim'

end)
