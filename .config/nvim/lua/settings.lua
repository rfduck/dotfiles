--NEOVIM SETTINGS
--All the options settings for Neovim
--lives at .config/nvim/lua/settings.lua

--Variables
local opt = vim.opt
local o = vim.o

-- fix later:
-- filetype plugin indent on

--o.t_Co = 256 -- Use 256 color terminal
o.background = "dark" -- Dark background
opt.clipboard:append { "unnamed", "unnamedplus" } -- Clipboard options
o.hidden = true -- Enable hidden buffers
o.ignorecase = true -- Ignore case when searching
o.incsearch = true -- Incremental searching on
o.linebreak = true -- Set line breaks
o.modeline = true -- Enable modeline
o.backup = false -- No backup files
o.hlsearch = false -- No highlighting on searches
o.writebackup = true -- Make backup before overwriting file
o.number = true -- Show line numbers
opt.path:append { "**" } -- Add subdirectories of current directory to pasth
o.sessionoptions = 'blank,buffers,curdir,folds,help,resize,tabpages,unix,winsize'  -- Session options
o.showmode = true -- Show the mode
o.smartcase = true -- Override ignore case when upper case letter is explicitly used
o.splitbelow = true -- Splits open below current buffer
o.splitright = true -- Splits open to right of current buffer
o.wildmenu = true -- Enhanced command line completion
o.wrap = true -- Set line wrapping

-- TABS AND INDENTING
--
o.autoindent = true -- Auto indenting in code
o.tabstop = 8 -- Tab stop
o.softtabstop = 4 -- Soft tab stop
o.shiftwidth = 4 -- Shift width
o.expandtab = true -- Expand tab

