local M = {}

function M.myfiles()
require('telescope.builtin').find_files({
    search_dirs = {'/mnt/d/GDrive/Documents/', '/mnt/d/GDrive/Temporary'},
    prompt_title = "Search my files",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3}
})
end

function M.nvimconfig()
require('telescope.builtin').find_files({
    search_dirs = {"/home/rfegles/.config/nvim/"},
    prompt_title = "Search nvim config files",
    hidden = "true",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3}
})
end

function M.homefiles()
require('telescope.builtin').find_files({
    search_dirs = {"/home/rfegles/"},
    prompt_title = "Search Home",
    hidden = "true",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3},
})
end

function M.filedir()
require('telescope.builtin').find_files({
    search_dirs = {"/mnt/d/GDrive/Documents/Files/"},
    prompt_title = "Search Files directory",
    layout_strategy = "vertical",
    layout_config = { preview_cutoff = 1, preview_height = 0.3}
})
end

return M