let path = stdpath('data') . '/plugged'
call plug#begin(path)

"---------------------
" Dependencies
"---------------------
Plug 'nvim-lua/plenary.nvim' "telescope dependency

"---------------------
" Visuals
"---------------------
Plug 'sainnhe/gruvbox-material'
"Better syntax highlight
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Icons for nvim-tree and telescope
Plug 'kyazdani42/nvim-web-devicons'

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

"---------------------
" Searching
"---------------------
"C compiled fzf for faster telescope searching
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'

"---------------------
" LSP and completions
"---------------------
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'jose-elias-alvarez/null-ls.nvim'

"---------------------
"File viewing
"---------------------
Plug 'luukvbaal/nnn.nvim'

"---------------------
" Comments
"---------------------
Plug 'numToStr/Comment.nvim'

call plug#end()

lua << EOF
require "base"
require "mappings"
require "plugins"
EOF
