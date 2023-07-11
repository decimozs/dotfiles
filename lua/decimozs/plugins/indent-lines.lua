-- safety install
local indent_setup, indent = pcall(require, "indent_blankline")

if not indent_setup then
	return
end

indent.setup({
	show_current_context = true,
	show_current_context_start = true,
})
