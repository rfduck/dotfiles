"Vim-Plug Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'reedes/vim-pencil'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-plug'
call plug#end()

" PERSONAL SETTINGS
filetype plugin indent on
set fileformat=unix "Use Unix file format
colorscheme elflord "Color Scheme
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

"Remap for jj instead of Esc in Insert Mode
inoremap jj <Esc>

"Remap for CtrlP (currently off)
"nnoremap <leader>cp :CtrlP D:\GDrive\Documents <CR> 
 
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
 
"Remap for Leader-b instead of ^ for beginning of line
nnoremap <leader>b ^
 
"Remap for Leader-e instead of $ for end of line
nnoremap <leader>e $

"Remap for Leader-w instead of Ctrl-w for Window actions
nnoremap <leader>w <C-W>
 
"Remap for Pasting from Clipboard
nnoremap <F2> "*p

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
"Leader cp: Ctrlp in Documents
"Leader d: Insert divider
"Leader e: End of line
"Leader ht: Insert HTML tag
"Leader n: Navigate to Notes Folder
"Leader p: Put blank line below
"Leader P: Put blank line above
"Leader rd: Navigate to Russ Documents
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
:ab ,r /mnt/d/GDrive/Docuemnts/
"D:\GDrive\Documents\
 
"Abbreviate Notes
:ab ,n /mnt/d/GDrive/Docuemnts/Notes/
"D:\GDrive\Documents\Notes\

"PLUGIN SETTINGS 
"
"CtrlP Settings
"let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_extensions = ['dir']
"let g:ctrlp_by_filename = 1


"Vim-Session Settings
"let g:session_directory = 'D:\GDrive\Documents\Vim Session"s'
"let g:session_autosave = 'no'
