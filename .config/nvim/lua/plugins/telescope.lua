--Telescope plugin
--
return {
    --Telescope
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        enabled = true,
        dependencies = { 'nvim-lua/plenary.nvim', 
        'nvim-treesitter/nvim-treesitter',
        { 'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
        }
 },
        config = 
        --CONFIG
        function ()
            local ts = require('telescope')
            ts.load_extension('fzf')
            ts.setup({
    defaults = {
         path_display = {
        "truncate",
        "truncate = 3",
         },
        layout_strategy = "vertical",
        layout_config = {
        preview_cutoff = 1,
        preview_height = 0.3,
    }
},
extensions = {
    fzf = {
        fuzzy = true,  --false will do only exact matching
        override_generic_sorter = true,  --override the generic sorter
        override_file_sorter = true,  --override the file sorter
        case_mode = "smart_case",  --or "ignore_case" or "respect_case", smart is default  
    }
 }
            })
        end

      
    }
}
