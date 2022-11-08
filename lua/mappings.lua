local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- leader
keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- for better comunication at viewing code with someone
keymap("n", "<f5>", ":set relativenumber!<cr>", opts)
keymap("v", "<f5>", "<esc>:set relativenumber!<cr>v", opts)
keymap("i", "<f5>", "<esc>:set relativenumber!<cr>a", opts)

-- to hold 'tab' mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move block of lines
keymap("v", "<c-j>", ":m '>+1<cr>gv=gv", opts)
keymap("v", "<c-k>", ":m '<-2<cr>gv=gv", opts)

keymap("n", "<c-j>", ":m .+1<cr>==", opts)
keymap("n", "<c-k>", ":m .-2<cr>==", opts)

-- completeness
keymap("n", "Y", "y$", opts)

-- centered search
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- delete line break but maintain cursor position
keymap("n", "J", "mzJ`z", opts)

-- more break points in insert mode
keymap("i", ",", ",<c-g>u", opts)
keymap("i", ".", ".<c-g>u", opts)
keymap("i", "!", "!<c-g>u", opts)
keymap("i", "?", "?<c-g>u", opts)

-- windows managment

-- create a vertical split window and move the cursor
keymap("n", "<leader>v", "<c-w>v<c-w>l", opts)

-- increase/decrease size (vertically) of current window
keymap("n", "+", ":5winc ><cr>", opts)
keymap("n", "-", ":5winc <<cr>", opts)

-- windows movement
keymap("n", "<leader>h", "<c-w>h", opts)
keymap("n", "<leader>j", "<c-w>j", opts)
keymap("n", "<leader>k", "<c-w>k", opts)
keymap("n", "<leader>l", "<c-w>l", opts)

-- search for visually highlighted
keymap("v", "//", "y/\\V<c-r>=escape(@\",'/\\')<cr><cr>", opts)

-- formatting
keymap("n", "<leader>fo", ":lua vim.lsp.buf.format({ bufnr = bufnr })<cr>", opts)

-- inline diagnostics
keymap("n", "<leader>dl", ":lua vim.diagnostic.open_float()<cr>", opts)
