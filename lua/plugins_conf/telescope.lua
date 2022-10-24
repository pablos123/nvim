require("telescope").setup {
    defaults = {
        -- lua regex indicating what file to ignore
        file_ignore_patterns = {
            "%.git/",
        },
        -- Default values except for --hidden
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--no-binary',
          '--hidden' -- Search also hidden files
        },
        prompt_prefix="🍃 ",
    },
    pickers = {
        find_files = {
          theme = "dropdown",
          previewer = false,
          hidden = true,
        },
        buffers = {
          theme = "dropdown",
          previewer = false,
          -- Ignore the No Name buffer
          -- Ignore the buffer opening nvim with 'nvim .'
          file_ignore_patterns = {
              "^%[No Name%]$",
              "^%.$",
          },
        },
    },
}

-- Load fzf for faster searching
require('telescope').load_extension('fzf')

local opts = { silent = true, noremap = true }
local keymap = vim.api.nvim_set_keymap

-- File picker: leader + o (open)
keymap("n", "<leader>o", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)

-- Buffer picker leader + b (buffers)
keymap("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)

-- f for find

-- String picker: leader + f + s (string)
keymap("n", "<leader>fs", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)

-- String under the cursor picker: leader + f + u (under)
keymap("n", "<leader>fu", "<cmd>lua require('telescope.builtin').grep_string()<cr>", opts)

-- Help picker
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)

-- LSP mapping

-- Definitions
keymap("n", "<leader>d", "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>", opts)
-- References
keymap("n", "<leader>r", "<cmd>lua require('telescope.builtin').lsp_references()<cr>", opts)

-- Symbols in document
keymap("n", "<leader>sd", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", opts)
-- Variables in document
keymap("n", "<leader>sv", "<cmd>lua require('telescope.builtin').lsp_document_symbols( { symbols = 'variable' } )<cr>", opts)

-- Symbols in workspace
keymap("n", "<leader>sw", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>", opts)
-- Functions in workspace
keymap("n", "<leader>sf", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols( { symbols = 'function' } )<cr>", opts)

-- Diagnostics, the bufnr = 0 is for showing diagnostics just in the current document
keymap("n", "<leader>e", "<cmd>lua require('telescope.builtin').diagnostics( { bufnr = 0 } )<cr>", opts)
