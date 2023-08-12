--LAZY.NVIM PLUGIN CONFIG
--Configuration for the Lazy.nvim plugin manager
--lives at .config/nvim/lua/plugins/init.lua

return {
    --Telescope
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' }
    },

    --Telescope fzf integration
    { 'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
    },

    --Goyo
    {'junegunn/goyo.vim', lazy=true},

    --Limelight
    {'junegunn/limelight.vim', lazy=true},

    --Vifm
    {'vifm/vifm.vim', lazy=false},

    --Vim-pencil
    {'reedes/vim-pencil', lazy=true},

    --Make all colorschemes work in terminal:
    {'vim-scripts/CSApprox'}, 

    --Vim Colorschemes
    {'flazz/vim-colorschemes'},

    --Ocean Deep color scheme
    {'vim-scripts/oceandeep', lazy=false},
}

--Found in sub-directories:
--Zen-mode
--Twilight
