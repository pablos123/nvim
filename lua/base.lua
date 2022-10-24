local opts = vim.opt

-- enable 24 color support in the terminal
if vim.fn.has('termguicolors') then
    opts.termguicolors = true
end

-- tired of different config for different users i'm the only one in my machines
vim.g.nvim_system_wide = 1

-- visuals
opts.colorcolumn = { 80, 100, 120 }
opts.signcolumn = "yes"
opts.showmatch = true
opts.number = true
opts.relativenumber = true
opts.cursorline = true
opts.scrolloff = 10
opts.sidescroll = 10

-- handy
opts.backup = false
opts.swapfile = false
opts.undodir = "/tmp/.nvim/undodir"
opts.undofile = true
opts.updatetime = 400
opts.mouse = "a"
opts.clipboard ="unnamedplus"
opts.completeopt = { "menuone", "noselect", "preview" }
opts.wildmenu = true
opts.hidden = true
opts.timeoutlen = 850

-- disable netrw
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

-- searching
opts.incsearch = true
opts.hlsearch = true
opts.hlsearch = false
opts.ignorecase = true
opts.smartcase = true

-- text dsplay
opts.tabstop = 4
opts.softtabstop = 4
opts.shiftwidth = 4
opts.expandtab = true
opts.smartindent = true
opts.wrap = false

-- autocomands
local autocmd = vim.api.nvim_create_autocmd
local au = vim.api.nvim_create_augroup

local file_types_au = au("file_types", {})
autocmd("BufEnter", {
    pattern = "*.yml",
    command = "setl ft=yaml.ansible",
    group = file_types_au,
})

autocmd("FileType", {
    pattern = "yaml.ansible",
    command = "setl tabstop=2 shiftwidth=2",
    group = file_types_au
})
