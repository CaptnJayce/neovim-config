vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.wo.relativenumber = true
vim.g.mapleader = " "

-- lsp
vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', "<leader>gf", vim.lsp.buf.format, {})

--vim.opt.colorcolumn = "100"
