-- Setup Configs
require("nihilc.configs.options")
require("nihilc.configs.keymaps")
require("nihilc.configs.autocmd")

-- Setup Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = "nihilc.plugins",
  install = {
    colorscheme = { "onedark", "habamax" },
  },
  ui = {
    border = "single"
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = { notify = false },
})

vim.cmd("colorscheme onedark")
