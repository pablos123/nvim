local opts = { silent = true, noremap = true }
local keymap = vim.api.nvim_set_keymap

-- File picker: leader + o (open)
keymap("n", "<leader>gl", "<cmd>G blame<cr>", opts)

