-- import nvim-terminal safely
local terminal_setup, terminal = pcall(require, "toggleterm")
if not terminal_setup then
	return
end

terminal.setup({
	size = 20,
	open_mapping = [[<esc>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	direction = "float",
	close_on_exit = true,
	shell = "%SystemRoot%/System32/WindowsPowerShell/v1.0/powershell.exe",
	float_opts = {
		border = "curved",
		windblend = 0,
	},
})
