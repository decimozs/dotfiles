-- set colorscheme to your theme
vim.cmd("colorscheme gruvbox")

-- transparency
vim.cmd("hi Normal ctermbg=none")
vim.cmd("hi NonText ctermbg=none")
vim.cmd("hi SignColumn ctermbg=none")
vim.cmd("hi LineNr ctermbg=none")
vim.cmd("hi VertSplit ctermbg=none")
vim.cmd("hi FoldColumn ctermbg=none")
vim.cmd("hi CursorLineNr ctermbg=none")

-- float transparency
if vim.fn.has("nvim-0.5") == 1 then
	vim.cmd("hi! NormalFloat guibg=none")
end
