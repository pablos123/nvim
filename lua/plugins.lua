local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

use 'wbthomason/packer.nvim'

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
               {'nvim-tree/nvim-web-devicons'},
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
use {
  'lewis6991/gitsigns.nvim',
  tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
}
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
use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons' } }

-- Syntax highlighting
use { 'pearofducks/ansible-vim', run = './UltiSnips/generate.sh' }
use 'nvim-treesitter/nvim-treesitter'

-- Code context
use 'nvim-treesitter/nvim-treesitter-context'

-- Greeter
use { 'goolord/alpha-nvim', requires = { 'nvim-tree/nvim-web-devicons' } }

if packer_bootstrap then
  require('packer').sync()
end

end)
