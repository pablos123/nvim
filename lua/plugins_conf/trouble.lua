require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
require("trouble").setup{}

local opts = { silent = true, noremap = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>di", ":TroubleToggle<cr>", opts)
