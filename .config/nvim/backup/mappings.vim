" MAPPINGS AND KEYBINDINGS FOR NEOVIM

"-------------------------------
"-----MAPPINGS FOR SETTINGS-----
"-------------------------------

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
"-----CUSTOM MAPPINGS-----
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
"-----PLUGIN MAPPINGS-----
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
cnoremap <leader>tm  /mnt/d/GDrive/Temporary/

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

