-- safety check
local install, indentlines = pcall(require, "indet_blankline")
if not install then
	return
end

vim.opt.list = true
vim.opt.listchars:append("eol:↴")

indentlines.setup({
	show_end_of_line = true,
})
