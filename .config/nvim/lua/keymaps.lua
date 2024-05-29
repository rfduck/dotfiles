--KEYMAP CONFIG
--keymappings for neovim
--lives at .config/nvim/lua/keymaps.lua


local keymap = vim.keymap.set -- Variable for keymap setting

vim.g.mapleader = ',' -- Set leader key

-- MAPPINGS FOR SETTINGS
--
keymap('n', '<ENTER>', '<cmd>w!<CR>', {desc = 'Write the document'}) -- Writing the document

keymap('n', '<F2>', '"+p', {desc = 'Paste from clipboard'}) -- Pasting from clipboard

keymap('i', 'jj', '<ESC>', {desc = 'Escape from insert mode'}) -- jj instead of Esc in Insert mode  

keymap('i', '<a', '<a href=""></a><ESC>2F', {desc='URL tag in insert mode'}) -- Inserting URL tag in Insert mode

keymap('n', '<leader>b', '^', {desc = 'Beginning of line'}) -- Leader-b instead of ^ for beginning of line

keymap('n', '<leader>bf', '<cmd>ls<CR>:b<SPACE>', {desc = 'Switch buffers'}) -- Switching buffers quickly

-- Toggle line and column highlighting at cursor position
keymap('n', '<leader>cl', '<cmd>setlocal cursorline!<CR>', {desc = 'Cursor line'})
keymap('n', '<leader>cc', '<cmd>setlocal cursorcolumn!<CR>', {desc = 'Cursor column'})
keymap('n', '<leader>clc', '<cmd>setlocal cursorline! cursorcolumn!<CR>', {desc = 'Cursor line and column'})

keymap('n', '<leader>e', '$', {desc = 'End of line'}) -- Leader-e instead of $ for end of line

keymap('n', '<leader>ht', 'i<a href=""></a><ESC>2F', {desc = 'URL tag in normal mode'}) -- Inserting URL tag in Normal mode

keymap('n', '<leader>p', 'o<ESC>k', {desc = 'Blank space below'}) -- Inserting a blank space below

keymap('n', '<leader>P', 'O<ESC>j', {desc = 'Blank space above'}) -- Inserting a blank space above:

keymap('n', '<leader>rn', '<cmd>setlocal relativenumber!<CR>', {desc = 'Relative numbers'}) -- Toggling relative numbers

keymap('n', '<leader>w', '<C-W>', {desc = 'Window actions'}) -- Leader-w instead of Ctrl-w for Window actions

keymap('i', '<BS>', '<ESC>', {desc = 'Turn off backspace in insert mode'}) -- Turn off backspace in insert mode

keymap('n', '<BS>', '<NOP>', {desc = 'Turn off backspace in normal mode'}) -- Turn off backspace in normal mode

--
------CUSTOM MAPPINGS-----
--
keymap('n', '<leader>d', '----------------------------------<CR>o', {desc = 'Divider'}) --Inserting divider

keymap('n', '<leader>mm', '<cmd>split<CR><cmd>view ~/Documents/my-vim-mappings.txt<CR>', {desc = 'View my vim mappings in a split'}) -- View my vim mappings in a split

keymap('n', '<leader>sm', '<cmd>source ~/.config/nvim/init.lua', {desc = 'Source init.lua'}) -- Source my init.lua

-- Return to normal mode in Nvim terminal
--keymap('t', '<ESC>', '<C-\><C-n>', {desc = 'Return to normal mode in neovim terminal'})

-------
-------Plugin Mappings
-------
-----TELESCOPE-----
-- Telescope Pickers
keymap('n', '<leader>tfb', '<cmd>Telescope buffers<CR>', {desc = 'Telescope buffers'}) --buffers
keymap('n', '<leader>tfc', '<cmd>Telescope colorscheme<CR>', {desc = 'Telescope color schemes'}) --color schemes
keymap('n', '<leader>tff', '<cmd>lua require("telescopefunctions").filedir()<CR>', {desc = 'Telescope in files dir'}) --Files directory
keymap('n', '<leader>tfh', '<cmd>Telescope help_tags<CR>', {desc = 'Telescope help tags'}) --Help tags
keymap('n', '<leader>tfk', '<cmd>Telescope keymaps<CR>', {desc = 'Telescope key mappings'}) --key mappings
keymap('n', '<leader>tfnv', '<cmd>lua require("telescopefunctions").nvimconfig()<CR>', {desc = 'Telescope neovim config files'}) --Files in Nvim config
keymap('n', '<leader>thd', '<cmd>lua require("telescopefunctions").homedocs()<CR>', {desc = 'Telescope home docs'}) --Docs in Home
keymap('n', '<leader>thf', '<cmd>lua require("telescopefunctions").homefiles()<CR>', {desc = 'Telescope home files'}) --Files in Home directory
keymap('n', '<leader>tmf', '<cmd>lua require("telescopefunctions").myfiles()<CR>', {desc = 'Telescope Gdrive files'}) --Files in GDrive
keymap('n', '<leader>tuk', '<cmd>lua require("telescopefunctions").ukulele()<CR>', {desc = 'Telescope ukulele files'}) --Ukulele Songs

-----FZF-LUA-----
keymap('n', '<leader>fb', '<cmd>lua require("fzf-lua").buffers()<CR>', {desc = 'FZF buffers'})
keymap('n', '<leader>fc', '<cmd>lua require("fzf-lua").colorschemes()<CR>', {desc = 'FZF colorschemes'})
keymap('n', '<leader>ff', '<cmd>lua require("fzf-lua").files({cwd ="/mnt/d/GDrive/Documents/Files"})<CR>', {desc = 'FZF my files'})
keymap('n', '<leader>fh', '<cmd>lua require("fzf-lua").helptags()<CR>', {desc = 'FZF helptags'})
keymap('n', '<leader>fk', '<cmd>lua require("fzf-lua").keymaps()<CR>', {desc = 'FZF keymaps'})
keymap('n', '<leader>fnv', '<cmd>lua require("fzf-lua").files({cwd ="~/dotfiles/.config/nvim"})<CR>', {desc = 'FZF Neovim config files'})
keymap('n', '<leader>hd', '<cmd>lua require("fzf-lua").files({cwd ="~/Documents"})<CR>', {desc = 'FZF Home Documents'})
keymap('n', '<leader>hf', '<cmd>lua require("fzf-lua").files({cwd ="~"})<CR>', {desc = 'FZF All Home files'})
keymap('n', '<leader>mf', '<cmd>lua require("fzf-lua").files({cwd ="/mnt/d/GDrive/Documents"})<CR>', {desc = 'FZF GDrive docs'})
keymap('n', '<leader>uk', '<cmd>lua require("fzf-lua").files({cwd ="/mnt/d/GDrive/Documents/Ukulele/Songs"})<CR>', {desc = 'FZF Ukulele Songs'})
keymap('n', '<leader>df', '<cmd>lua require("fzf-lua").files({cwd ="~/dotfiles"})<CR>', {desc = 'FZF dotfiles'})

-----VIFM-----
keymap('n', '<leader>vf', '<cmd>Vifm<CR>', {desc = 'Open and edit file in vifm'}) --Open and edit file
keymap('n', '<leader>vv', '<cmd>VsplitVifm<CR>', {desc = 'Open and edit file in vifm, vert split'}) --Open and edit file in vertical split
keymap('n', '<leader>sv', '<cmd>SplitVifm<CR>', {desc = 'Open and edit file in vifm, horiz split'}) --Open and edit file in horizontal split

----------
----------MY DOCUMENTS
----------
keymap('c', '<leader>rfn', '/mnt/d/GDrive/Documents/Notes/', {desc = 'My notes folder'}) -- Remap for navigating to Notes folder

keymap('c', '<leader>rfd', '/mnt/d/GDrive/Documents/', {desc = 'My Documents'}) -- Remap for navigating to Russ Documents

keymap('c', '<leader>rff', '/mnt/d/GDrive/Documents/Files/', {desc = 'My Files'}) -- Remap for navigating to Russ Files

keymap('c', '<leader>tm', '/mnt/d/GDrive/Temporary/', {desc = 'Temporary files'}) -- Remap for navigating to Temporary folder

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
--Leader uk: Fuzzy find Ukulele songs
--Leader vf: Vifm and edit file
--Leader vv: Vifm and open in vertical split
--Leader w: Ctrl-w

