-- Taken from: https://lazy.folke.io/installation
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath, })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup('user.plugins', {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
  install = {
    colorscheme = { 'folke/tokyonight', 'catppuccin/nvim' },
  },
})
