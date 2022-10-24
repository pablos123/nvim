require("nnn").setup()

local opts = { silent = true, noremap = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>t", " <cmd>NnnPicker<cr>", opts)
keymap("t", "<leader>t", " <cmd>NnnPicker<cr>", opts)
