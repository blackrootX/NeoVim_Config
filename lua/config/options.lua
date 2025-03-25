-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 映射 Ctrl+Shift+Tab 到 :bprevious
vim.api.nvim_set_keymap('n', '<C-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.statuscolumn = "%s %l %r "
