-- options.lua configurations
local opt = vim.opt -- global variables

-- Set the $XDG_DATA_HOME environment variable
vim.env.XDG_DATA_HOME = vim.fn.expand("$HOME") .. "/.config/nvim"

-- line numbers config
opt.relativenumber = true -- relativenumbers
opt.number = true -- absolute numbers

-- tab		-- spaces for tabs (prettier default)
opt.shiftwidth = 2 -- spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping config
opt.wrap = true -- enabled line wrapping

-- search config
opt.ignorecase = true -- ignore character casing when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- apperance config
-- i prefer transparent

-- backspace config
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard config
opt.clipboard:append("unnamedplus") -- use default system clipboard

-- spliting windows config
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- extras for typings
opt.iskeyword:append("-") -- append the overall string to whole word
