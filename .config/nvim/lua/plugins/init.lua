return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' }
    },

    { 'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' 
    },

    {'junegunn/goyo.vim', lazy=true},
    {'junegunn/limelight.vim', lazy=true},
    {'vifm/vifm.vim', lazy=false},
    {'reedes/vim-pencil', lazy=true},
    --Make all colorschemes work in terminal:
    {'vim-scripts/CSApprox'}, 
    {'flazz/vim-colorschemes'},
    --Ocean Deep color scheme
    {'vim-scripts/oceandeep', lazy=false},
}
