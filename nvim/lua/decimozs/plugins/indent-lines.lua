-- safety install
local indent_setup, indent = pcall(require, "indent_blankline")

if not indent_setup then
	return
end

indent.setup({
	show_end_of_line = true,
	space_char_blankline = " ",
})
