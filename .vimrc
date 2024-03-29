"Vim-Plug Plugin Manager
call plug#begin('~/.vim/plugged')     
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

" VIM 9 SETTINGS
set wildoptions=pum "Command completion in a popup menu, only for Vim 9+

" PERSONAL SETTINGS
"
filetype plugin indent on

"Use Unix file format
"set fileformat=unix 

"Use 256 color terminal
set t_Co=256 

"dark background
set background=dark 

"Color Scheme
colorscheme bluedrake 

"Clipboard options
set clipboard+=unnamed,unnamedplus  

"Enable hidden buffers
set hidden 

"Ignore case when searching
set ignorecase 

"Incremental searching on
set incsearch 

"Set Line Breaks
set linebreak 

"Enable modeline
set modeline 

"No Backup files
set nobackup 

"No highlighting on searches
set nohlsearch 

"Make backup before overwriting file  
set writebackup 

"No Undo File
"set noundofile 

"Show line numbers
set number 

"Add subdirectories of current directory to path
set path+=** 

"Set Print Options
"set printoptions=header:0 

"Session Options
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,unix,winsize 

"Show the mode
set showmode 

"Override ignore case when upper case letter is explicitly used
set smartcase 

"splits open below current buffer
set splitbelow 

"splits open to right of current buffer
set splitright 

"Terminal GUI colors
set termguicolors

"Enhanced command line completion
set wildmenu 

"Set line wrapping
set wrap 

" TABS AND INDENTING
set autoindent "Auto Indenting in Code
set tabstop=8 "Tab Stop
set softtabstop=4 "Soft Tab Stop
set shiftwidth=4 "Shift Width
set expandtab "Expand Tab

"------------------------------------------
"--------MAPPINGS AND ABBREVIATIONS--------
"------------------------------------------

"-----------------------------
"----MAPPINGS FOR SETTINGS----
"-----------------------------

"Change Leader to , instead of \
let mapleader = ","
 
"Writing the document
nnoremap <ENTER> :w! <CR>

"Pasting from Clipboard
nnoremap <F2> "*p

"jj instead of Esc in Insert Mode
inoremap jj <Esc>

"Inserting URL tag in Insert mode
inoremap <a <a href=""></a><ESC>2F"

"Leader-b instead of ^ for beginning of line
nnoremap <leader>b ^

"Switching buffers quickly
nnoremap <leader>bf :ls<CR>:b<SPACE>

"Toggle line and column highlighting at cursor position
nnoremap <leader>cl :setlocal cursorline! <CR>
nnoremap <leader>cc :setlocal cursorcolumn! <cr>
nnoremap <leader>clc :setlocal cursorline! cursorcolumn! <CR>

"Leader-e instead of $ for end of line
nnoremap <leader>e $

"Inserting URL tag in Normal Mode
nnoremap <leader>ht i<a href=""></a><ESC>2F"

"Inserting blank space below:
nnoremap <leader>p o<ESC>k
 
"Inserting blank space above:
nnoremap <leader>P O<ESC>j
 
"Toggling relative numbers
nnoremap <leader>rn :setlocal relativenumber! <CR>

"Leader-w instead of Ctrl-w for Window actions
nnoremap <leader>w <C-W>
 
"Turn off Backspace in insert mode
inoremap <BS> <ESC>


"-------------------------
"----CUSTOM MAPPINGS------
"-------------------------

"Inserting divider:
nnoremap <leader>d :put='----------------------------------' <CR> o

"View my vim mappings in a split
nnoremap <leader>mm :split<CR>:view ~/Documents/my-vim-mappings.txt<CR>

"Source myvimrc
nnoremap <leader>sm :source $MYVIMRC<CR>

"Returning to Normal mode in Nvim Terminal
tnoremap <Esc> <C-\><C-n>


"-------------------------
"----PLUGIN MAPPINGS------
"-------------------------

"Entering Goyo mode
nnoremap <leader>gy :Goyo 40%x50% <CR>

"Remaps for Vifm file explorer integration
nnoremap <leader>vf :Vifm<CR> 
nnoremap <leader>vv :VsplitVifm<CR>
nnoremap <leader>sv :SplitVifm<CR>


"------------------------
"------MY DOCUMENTS------
"------------------------
"
"Remap for Navigating to Notes Folder
cnoremap <leader>rfn /mnt/d/GDrive/Documents/Notes/

"Remap for Navigating to Russ Documents
cnoremap <leader>rfd /mnt/d/GDrive/Documents/

"Remap for Navigating to Russ Files
cnoremap <leader>rff /mnt/d/GDrive/Documents/Files/

"Remap for Navigating to Temporary folder
cnoremap <leader>tm  /mnt/d/GDrive/Temporary
"D:\GDrive\Temporary\

"------------------------
"-----ABBREVIATIONS:-----
"------------------------
"Capitalize OK
:ab ok OK
:ab Ok OK
:ab Ok, OK,
:ab ok, OK,
:ab Ok. OK.
:ab ok. OK.
"-------------------------------------------
"--------SUMMARY OF LEADER MAPPINGS:--------
"-------------------------------------------
" Leader key: ,
" <ENTER>: :w
"F2: Paste from clipboard
"jj: Esc
"Leader <a: Insert URL tag in Insert mode 
"Leader b: Beginning of line
"Leader bf: Switch buffers
"Leader cl: Toggle cursorline highlighting
"Leader cc: Toggle cursorcolumn highlighting
"Leader clc: Toggle both cursorline and cursorcolumn highlighting
"Leader d: Insert divider
"Leader e: End of line
"Leader gy: Enter Goyo mode
"Leader hf: Fuzzy find my Home files 
"Leader ht: Insert HTML tag
"Leader mf: FuzzyFind my D drive documents
"Leader mm: Load my vim mappings in split
"Leader n: Navigate to Notes Folder
"Leader p: Put blank line below
"Leader P: Put blank line above
"Leader rd: Navigate to Russ Documents
"Leader rn: Toggle relative line numbers
"Leader sm: Source myvimrc 
"Leader sv: Vifm and open in split
"Leader tm: Navigate to Tempoary directory
"Leader vf: Vifm and edit file
"Leader vv: Vifm and open in vertical split
"Leader w: Ctrl-w

"--------------------------------
"-----PLUGIN SETTINGS------------
"--------------------------------

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
