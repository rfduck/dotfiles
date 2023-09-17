--KEYMAP CONFIG
--keymappings for neovim
--lives at .config/nvim/lua/keymaps.lua


local keymap = vim.keymap.set -- Variable for keymap setting

vim.g.mapleader = ',' -- Set leader key

-- MAPPINGS FOR SETTINGS
--
keymap('n', '<ENTER>', '<cmd>w!<CR>') -- Writing the document

keymap('n', '<F2>', '<cmd>"+p<CR>') -- Pasting from clipboard

keymap('i', 'jj', '<ESC>') -- jj instead of Esc in Insert mode  

keymap('i', '<a', '<a href=""></a><ESC>2F') -- Inserting URL tag in Insert mode

keymap('n', '<leader>b', '^') -- Leader-b instead of ^ for beginning of line

keymap('n', '<leader>bf', '<cmd>ls<CR>:b<SPACE>') -- Switching buffers quickly

-- Toggle line and column highlighting at cursor position
keymap('n', '<leader>cl', '<cmd>setlocal cursorline!<CR>')
keymap('n', '<leader>cc', '<cmd>setlocal cursorcolumn!<CR>')
keymap('n', '<leader>clc', '<cmd>setlocal cursorline! cursorcolumn!<CR>')

keymap('n', '<leader>e', '$') -- Leader-e instead of $ for end of line

keymap('n', '<leader>ht', 'i<a href=""></a><ESC>2F') -- Inserting URL tag in Normal mode

keymap('n', '<leader>p', 'o<ESC>k') -- Inserting a blank space below

keymap('n', '<leader>P', 'O<ESC>j') -- Inserting a blank space above:

keymap('n', '<leader>rn', '<cmd>setlocal relativenumber!<CR>') -- Toggling relative numbers

keymap('n', '<leader>w', '<C-W>') -- Leader-w instead of Ctrl-w for Window actions

keymap('i', '<BS>', '<ESC>') -- Turn off backspace in insert mode
--
------CUSTOM MAPPINGS-----
--
keymap('n', '<leader>d', '----------------------------------<CR>o') --Inserting divider

keymap('n', '<leader>mm', '<cmd>split<CR><cmd>view ~/Documents/my-vim-mappings.txt<CR>') -- View my vim mappings in a split

keymap('n', '<leader>sm', '<cmd>source ~/.config/nvim/init.lua') -- Source my init.lua

-- Return to normal mode in Nvim terminal
--keymap('t', '<ESC>', '<C-\><C-n>')

-------
-------Plugin Mappings
-------
-----TELESCOPE-----
-- Telescope Pickers
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>') --buffers
keymap('n', '<leader>fc', '<cmd>Telescope colorscheme<CR>') --color schemes
keymap('n', '<leader>ff', '<cmd>lua require("plugins.telescope.functions").filedir()<CR>') --Files directory
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>') --Help tags
keymap('n', '<leader>fk', '<cmd>Telescope keymaps<CR>') --key mappings
keymap('n', '<leader>fnv', '<cmd>lua require("plugins.telescope.functions").nvimconfig()<CR>') --Files in Nvim config
keymap('n', '<leader>hf', '<cmd>lua require("plugins.telescope.functions").homefiles()<CR>') --Files in Home directory
keymap('n', '<leader>mf', '<cmd>lua require("plugins.telescope.functions").myfiles()<CR>') --Files in GDrive

-----GOYO-----
keymap('n', '<leader>gy', '<cmd>Goyo 40%x50% <CR>') -- Entering Goyo mode

-----VIFM-----
keymap('n', '<leader>vf', '<cmd>Vifm<CR>') --Open and edit file
keymap('n', '<leader>vv', '<cmd>VisplitVifm<CR>') --Open and edit file in vertical split
keymap('n', '<leader>sv', '<cmd>SplitVifm<CR>') --Open and edit file in horizontal split

----------
----------MY DOCUMENTS
----------
keymap('c', '<leader>rfn', '/mnt/d/GDrive/Documents/Notes/') -- Remap for navigating to Notes folder

keymap('c', '<leader>rfd', '/mnt/d/GDrive/Documents/') -- Remap for navigating to Russ Documents

keymap('c', '<leader>rff', '/mnt/d/GDrive/Documents/Files/') -- Remap for navigating to Russ Files

keymap('c', '<leader>tm', '/mnt/d/GDrive/Temporary/') -- Remap for navigating to Temporary folder

--------
--------ABBREVIATIONS
--------
vim.cmd('ab ok OK')
vim.cmd('ab Ok OK')
vim.cmd('ab Ok, OK') 
vim.cmd('ab ok, OK') 
vim.cmd('ab Ok. OK') 
vim.cmd('ab ok. OK') 

vim.cmd('ab teh the')
vim.cmd('ab Teh The')
vim.cmd([[ab dont' don't]])

-------------------------------------------
--------SUMMARY OF LEADER MAPPINGS:--------
-------------------------------------------
-- Leader key: ,
-- <ENTER>: :w
--F2: Paste from clipboard
--jj: Esc
--Leader <a: Insert URL tag in Insert mode 
--Leader b: Beginning of line
--Leader bf: Switch buffers
--Leader cl: Toggle cursorline highlighting
--Leader cc: Toggle cursorcolumn highlighting
--Leader clc: Toggle both cursorline and cursorcolumn highlighting
--Leader d: Insert divider
--Leader e: End of line
--Leader fb: Fuzzy find buffers
--Leader fc: Fuzzy find color schemes
--Leader ff: Fuzzy find my Files directory
--Leader fh: Fuzzy find help tags
--Leader fk: Fuzzy find keybindings
--Leader fnv: Fuzzy find neovim files
--Leader gy: Enter Goyo mode
--Leader hf: Fuzzy find my Home files 
--Leader ht: Insert HTML tag
--Leader mf: FuzzyFind my D drive documents
--Leader mm: Load my vim mappings in split
--Leader n: Navigate to Notes Folder
--Leader p: Put blank line below
--Leader P: Put blank line above
--Leader rd: Navigate to Russ Documents
--Leader rn: Toggle relative line numbers
--Leader sm: Source myvimrc 
--Leader sv: Vifm and open in split
--Leader tm: Navigate to Tempoary directory
--Leader vf: Vifm and edit file
--Leader vv: Vifm and open in vertical split
--Leader w: Ctrl-w

