-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 确保所有缓冲区默认可修改
vim.api.nvim_create_autocmd({ "BufAdd", "BufEnter" }, {
	pattern = "*",
	callback = function(args)
		vim.bo[args.buf].modifiable = true
		vim.bo[args.buf].readonly = false  -- 可选：强制关闭只读
	end,
})