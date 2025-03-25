-- bootstrap lazy.nvim, LazyVim and your plugins


require("config.lazy")

if vim.g.neovide then
  vim.o.guifont = "MonoLisa:h15"
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_refresh_rate_idle = 30
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_vfx_particle_lifetime = 1
  vim.g.neovide_remember_window_size = true
end

vim.opt.winblend = 0
