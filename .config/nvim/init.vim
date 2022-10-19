"Vim-Plug Plugin Manager
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
Plug 'vim-scripts/oceandeep'
call plug#end()

" PERSONAL SETTINGS
filetype plugin indent on
"set fileformat=unix "Use Unix file format
set t_Co=256 "Use 256 color terminal
set background=dark "dark background
"colorscheme elflord "Color Scheme
colorscheme habamax
set clipboard+=unnamed,unnamedplus 
set hidden "Enable hidden buffers
set ignorecase "Ignore case when searching
set incsearch "Incremental searching on
set linebreak "Set Line Breaks
set nobackup "No Backup files
set nohlsearch "No highlighting on searches
set nowritebackup "No Backup files
"set noundofile "No Undo File
set number "Show line numbers
set printoptions=header:0 "Set Print Options
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,unix,winsize "Session Options
set showmode "Show the mode
set smartcase "Override ignore case when upper case letter is explicitly used
set wildmenu "Enhanced command line completion
set wrap "Set line wrapping

" TABS AND INDENTING
set smartindent "Smart Indenting in Code
set autoindent "Auto Indenting in Code
set tabstop=8 "Tab Stop
set softtabstop=4 "Soft Tab Stop
set shiftwidth=4 "Shift Width
set expandtab "Expand Tab
 
"MAPPINGS AND ABBREVIATIONS

"Change Leader to , instead of \
let mapleader = ","
 
"Turn off Backspace in insert mode
inoremap <BS> <ESC>

"Remap for Inserting blank space above:
nnoremap <leader>P O<ESC>j
 
"Remap for Inserting blank space below:
nnoremap <leader>p o<ESC>k
 
"Remap for Inserting divider:
nnoremap <leader>d :put='----------------------------------' <CR> o
 
"Remap for Inserting URL tag in Insert mode
inoremap <a <a href=""></a><ESC>2F"
 
"Remap for Inserting URL tag in Normal Mode
nnoremap <leader>ht i<a href=""></a><ESC>2F"
 
"Remap for jj instead of Esc in Insert Mode
inoremap jj <Esc>

"Remap for Leader-b instead of ^ for beginning of line
nnoremap <leader>b ^
 
"Remap for Leader-e instead of $ for end of line
nnoremap <leader>e $

"Remap for Leader-w instead of Ctrl-w for Window actions
nnoremap <leader>w <C-W>
 
"Remap for Pasting from Clipboard
nnoremap <F2> "*p

"Remap for returning to Normal mode in Nvim Terminal
tnoremap <Esc> <C-\><C-n>

"Remap to source myvimrc
nnoremap <leader>sm :source $MYVIMRC<CR>

"Remap for switching buffers quickly
nnoremap <leader>bf :ls<CR>:b<SPACE>

"Remap for Writing the document
nnoremap <ENTER> :w! <CR>

 
"SUMMARY OF LEADER MAPPINGS:
" <ENTER>: :w
"F2: Paste from clipboard
"jj: Esc
"Leader <a: Insert URL tag in Insert mode 
"Leader b: Beginning of line
"Leader bf: Switch buffers
"Leader d: Insert divider
"Leader e: End of line
"Leader hf: Fuzzy find my Home files 
"Leader ht: Insert HTML tag
"Leader mf: FuzzyFind my D drive
"Leader n: Navigate to Notes Folder
"Leader p: Put blank line below
"Leader P: Put blank line above
"Leader rd: Navigate to Russ Documents
"Leader sm: Source myvimrc 
"Leader tm: Navigate to Tempoary directory
"Leader w: Ctrl-w


"MY DOCUMENTS
"
"Remap for Navigating to Notes Folder
cnoremap <leader>n /mnt/d/GDrive/Documents/Notes/

"Remap for Navigating to Russ Documents
cnoremap <leader>rd /mnt/d/GDrive/Documents/

"Remap for Navigating to Temporary folder
cnoremap <leader>tm  /mnt/d/GDrive/Temporary
"D:\GDrive\Temporary\

"Abbreviate My Documents
:ab ,r /mnt/d/GDrive/Documents/
"D:\GDrive\Documents\
 
"Abbreviate Notes
:ab ,n /mnt/d/GDrive/Documents/Notes/
"D:\GDrive\Documents\Notes\
"
"Capitalize OK
:ab ok OK
:ab Ok OK
:ab Ok, OK,
:ab ok, OK,
:ab Ok. OK.
:ab ok. OK.
"""""""""""""""""""""""
"PLUGIN SETTINGS

"LIMELIGHT

"START LIMELIGHT WITH GOYO
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"MAKE DEFAULT SETTING 0.5
let g:limelight_default_coefficient = 0.5

"SET FOREGROUND COLOR FOR INCOMPATIBLE SCHEMES
"let g:limelight_conceal_ctermfg = 'black'

""""""""""""""""""
"FZF

"FZF FUNCTIONS

"Fuzzyfind my D drive 
command! -bang MyFiles call fzf#vim#files('/mnt/d', {'options': ['--preview', 'cat {}']},<bang>0) 
"shortcut for MyFiles:
nnoremap <leader>mf :MyFiles!<CR> 

"Fuzzyfind my Home files
command! -bang HomeFiles call fzf#vim#files('~', {'options': ['--preview', 'cat {}']}, <bang>0) 
"Shortcut for HomeFiles:
nnoremap <leader>hf :HomeFiles!<CR>
