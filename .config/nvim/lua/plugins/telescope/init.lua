-- TELESCOPE SETUP CONFIG
-- Defaults and fzf loading
-- lives at .config/nvim/lua/plugins/telescope/init.lua

require('telescope').setup{
defaults = {
    path_display = {
        "truncate",
        "truncate = 3",
    },
    layout_strategy = "vertical",
    layout_config = {
    preview_cutoff = 1,
    preview_height = 0.3,
    },
},

extensions = {
    fzf = {
        fuzzy = true,  --false will do only exact matching
        override_generic_sorter = true,  --override the generic sorter
        override_file_sorter = true,  --override the file sorter
        case_mode = "smart_case",  --or "ignore_case" or "respect_case", smart is default  
    },
 },

}

-- Load fzf extension
require('telescope').load_extension('fzf')

return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' }
    }
}

