local opt = vim.opt
local o = vim.o

-- fix later:
-- filetype plugin indent on

-- Use 256 color terminal
o.t_Co = 256

-- Dark background
o.background = "dark"

-- Clipboard options
opt.clipboard:append { "unnamed", "unnamedplus" }

-- Enable hidden buffers
o.hidden = true 

-- Ignore case when searching
o.ignorecase = true

-- Incremental searching on
o.incsearch = true

-- Set line breaks
o.linebreak = true

-- Enable modeline
o.modeline = true

-- No backup files
o.backup = false

-- No highlighting on searches
o.hlsearch = false

-- Make backup before overwriting file
o.writebackup = true

-- Show line numbers
o.number = true

-- Add subdirectories of current directory to pasth
opt.path:append { "**" }

-- Session options
o.sessionoptions = 'blank,buffers,curdir,folds,help,resize,tabpages,unix,winsize'  

-- Show the mode
o.showmode = true

-- Override ignore case when upper case letter is explicitly used
o.smartcase = true

-- Splits open below current buffer
o.splitbelow = true

-- Splits open to right of current buffer
o.splitright = true

-- Terminal GUI colors
o.termguicolors = true

-- Enhanced command line completion
o.wildmenu = true

-- Set line wrapping
o.wrap = true

-- TABS AND INDENTING
--
-- Auto indenting in code
o.autoindent = true

-- Tab stop
o.tabstop = 8

-- Soft tab stop
o.softtabstop = 4

-- Shift width
o.shiftwidth = 4

-- Expand tab
o.expandtab = true

