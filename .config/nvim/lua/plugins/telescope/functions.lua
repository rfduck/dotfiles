--TELESCOPE FUNCTIONS
--Custom functions for telescope pickers
--Lives at .config/nvim/lua/plugins/telescope/functions.lua

local M = {}

--Search my data drive directories
function M.myfiles()
require('telescope.builtin').find_files({
    search_dirs = {'/mnt/d/GDrive/Documents/', '/mnt/d/GDrive/Temporary'},
    prompt_title = "Search my files",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3}
})
end

--Search my neovim config files
function M.nvimconfig()
require('telescope.builtin').find_files({
    search_dirs = {"/home/rfegles/dotfiles/.config/nvim/"},
    prompt_title = "Search nvim config files",
    hidden = "true",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3}
})
end

--Search my files in my Home directory on Linux
function M.homefiles()
require('telescope.builtin').find_files({
    search_dirs = {"/home/rfegles/"},
    prompt_title = "Search Home",
    hidden = "true",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3},
})
end

--Search my documents in my Home directory on Linux
function M.homedocs()
require('telescope.builtin').find_files({
    search_dirs = {"/home/rfegles/Documents"},
    prompt_title = "Search Home Docs",
    hidden = "true",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3},
})
end

--Search my Documents/Files directory
function M.filedir()
require('telescope.builtin').find_files({
    search_dirs = {"/mnt/d/GDrive/Documents/Files/"},
    prompt_title = "Search Files directory",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3}
})
end

--Search my Ukulele songs
function M.ukulele()
require('telescope.builtin').find_files({
    search_dirs = {"/mnt/d/GDrive/Documents/Ukulele/Songs/"},
    prompt_title = "Search Ukulele Songs",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3}
})
end

return M
