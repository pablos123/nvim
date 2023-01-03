-----------------------
-- LSP and completions
-----------------------

-- The order of these two plugins is important due to
-- doing particular setups in nvim_lsp, nvim_cmp is always
-- calling the server setup with all capabilities
require "plugins_conf/nvim_cmp"

require "plugins_conf/nvim_lsp"

require "plugins_conf/null_ls"

-----------------------
-- Searching
-----------------------
require "plugins_conf/telescope"

-----------------------
-- Diagnostics
-----------------------
require "plugins_conf/trouble"

-----------------------
-- Git
-----------------------
require "plugins_conf/vim_fugitive"
require "plugins_conf/gitsigns"

-----------------------
-- Comments
-----------------------
require "plugins_conf/comment"

-----------------------
-- File manager
-----------------------
require "plugins_conf/nnn_nvim"

-----------------------
-- Visuals
-----------------------

-- Theme
require "plugins_conf/gruvbox_material"

-- Status bar
require "plugins_conf/lualine"

-- Syntax Highlighting
require "plugins_conf/tree_sitter"

-- Code context
require "plugins_conf/tree_sitter_context"

-- Greeter
require "plugins_conf/alpha_nvim"
