local opt = vim.opt

-- line numbers options
opt.relativenumber = true
opt.number = true

-- tab options
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping options
opt.wrap = true

-- search options
opt.ignorecase = true
opt.smartcase = true

-- backspace options
opt.backspace = "indent,eol,start"

-- clipboard options
opt.clipboard:append("unnamedplus")

-- window splitting options
opt.splitright = true
opt.splitbelow = true

-- script encoding
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- guicolors
opt.termguicolors = true
