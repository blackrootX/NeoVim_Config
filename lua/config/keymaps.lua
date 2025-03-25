-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 在插入模式下将 Ctrl+C 映射为 Esc
vim.keymap.set("i", "<C-c>", "<Esc>", { noremap = true })
-- lua/keybindings.lua
