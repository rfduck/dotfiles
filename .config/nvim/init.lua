--NEOVIM MAIN CONFIG
--lives at .config/nvim/

--Use the 'settings' and 'keymaps' modules
require('settings')
require('keymaps')

-------
-------Lazy.nvim plugin manager
-------
-- Setup:
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

--require
require("lazy").setup("plugins")

-- Color Scheme
vim.cmd([[colorscheme bluedrake]])
