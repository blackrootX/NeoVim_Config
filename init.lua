-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- ~/.config/nvim/init.lua

 
if vim.g.neovide then
  vim.o.guifont = "MonoLisa:h15"
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_refresh_rate_idle = 30
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_lifetime = 1
  vim.g.neovide_remember_window_size = true
  
end
vim.opt.number = true
vim.opt.relativenumber = true

-- 监听模式切换事件
vim.api.nvim_create_augroup("dynamic_line_numbers", { clear = true })

-- 进入插入模式时禁用相对行号
vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*:i",
  callback = function()
    vim.opt.relativenumber = false
  end,
  group = "dynamic_line_numbers",
})

-- 退出插入模式时启用相对行号（兼容 Esc 和 Ctrl+C）
vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "i:*",
  callback = function()
    -- 仅当进入普通模式时触发
    if vim.api.nvim_get_mode().mode == "n" then
      vim.opt.relativenumber = true
    end
  end,
  group = "dynamic_line_numbers",
})


