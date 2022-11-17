return require('packer').startup(function(use)

-----------------------
-- LSP and completions
-----------------------

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

use 'neovim/nvim-lspconfig'

use 'jose-elias-alvarez/null-ls.nvim'

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
-- Diagnostics
-----------------------
use { 'folke/trouble.nvim', requires = { {'folke/lsp-colors.nvim'} } }

-----------------------
-- Git
-----------------------
use 'tpope/vim-fugitive'

-----------------------
-- Comments
-----------------------
use 'numToStr/Comment.nvim'

-----------------------
-- File manager
-----------------------
use 'luukvbaal/nnn.nvim'

-----------------------
-- Visuals
-----------------------

-- Theme
use 'sainnhe/gruvbox-material'

-- Status bar
use 'vim-airline/vim-airline'

-- Syntax highlighting
use { 'pearofducks/ansible-vim', run = './UltiSnips/generate.sh' }
use 'nvim-treesitter/nvim-treesitter'

-- Code context
use 'nvim-treesitter/nvim-treesitter-context'


end)
