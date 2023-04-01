" Plugins and (for now) settings

"VIM-PLUG PLUGIN MANAGER
call plug#begin('~/.config/nvim/plugged')     
Plug 'junegunn/fzf' "Fuzzy Finder plugin
Plug 'junegunn/fzf.vim' "Fuzzy Finder plugin
Plug 'junegunn/goyo.vim' "Distraction-free writing environment
Plug 'junegunn/limelight.vim' "Highlight only current paragraph
Plug 'vifm/vifm.vim' "Vifm file manager plugin
Plug 'reedes/vim-pencil' "Make Vim better for writing
Plug 'junegunn/vim-plug' "Plugin manager
" COLORSCHEMES
Plug 'vim-scripts/CSApprox' "Make all colorschemes work in terminal
Plug 'flazz/vim-colorschemes' "Github repo with many different color schemes in one place
Plug 'vim-scripts/oceandeep'
call plug#end()


"PLUGIN SETTINGS

"LIMELIGHT

"START LIMELIGHT WITH GOYO
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"MAKE DEFAULT SETTING 0.5
let g:limelight_default_coefficient = 0.5

"SET FOREGROUND COLOR FOR INCOMPATIBLE SCHEMES
let g:limelight_conceal_ctermfg = 'black'
""""""""""""""""""
"FZF

"FZF FUNCTIONS

"Fuzzyfind my D drive Documents
command! -bang MyFiles call fzf#vim#files('/mnt/d/GDrive/Documents', {'options': ['--preview', 'cat {}']},<bang>0) 
"shortcut for MyFiles:
nnoremap <leader>mf :MyFiles!<CR> 

"Fuzzyfind my Home files
command! -bang HomeFiles call fzf#vim#files('~', {'options': ['--preview', 'cat {}']}, <bang>0) 
"Shortcut for HomeFiles:
nnoremap <leader>hf :HomeFiles!<CR>
