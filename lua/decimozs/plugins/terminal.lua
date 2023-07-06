-- import nvim-terminal safely
local terminal_setup, terminal = pcall(require, "toggleterm")
if not terminal_setup then
	return
end

terminal.setup({
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	direction = "float",
	close_on_exit = true,
	float_opts = {
		border = "curved",
		windblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})
