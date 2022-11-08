-- Visuals
vim.cmd "colorscheme gruvbox-material"

vim.opt.background = "dark"
vim.g.gruvbox_material_background = "medium" -- default value: "medium"

require "plugins_conf/vim_airline"

----------------

-- Commenting
require('Comment').setup()

-- File Manager
require "plugins_conf/nnn_nvim"

-- Gir managment
require "plugins_conf/vim_fugitive"

-- Fuzzy finding
require "plugins_conf/telescope"

-- Syntax Highlighting with playground
require "plugins_conf/tree_sitter"

-- Language servers and completition setups

-- the order of these two plugins is important due to
-- doing particular setups in nvim_lsp, nvim_cmp is always
-- calling the server setup with all capabilities
require "plugins_conf/nvim_cmp"
require "plugins_conf/nvim_lsp"

require "plugins_conf/null_ls"

-- Diagnostics
require "plugins_conf/trouble"

