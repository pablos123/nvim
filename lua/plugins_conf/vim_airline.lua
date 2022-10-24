-- vim airline already shows the current mode
vim.opt.showmode = false

-- more space for the branch name
vim.g['#airline#extensions#branch#displayed_head_limit'] = 30
vim.g['airline#extensions#branch#sha1_len'] = 20
vim.g['airline#extensions#branch#format'] = 1

vim.g.airline_symbols = { branch = '' }
