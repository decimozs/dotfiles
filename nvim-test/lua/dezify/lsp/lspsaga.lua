-- safety check
local install, lspsaga = pcall(require, "lspsaga")
if not install then
	return
end

lspsaga.setup({
	-- keybinds for navigation in lspsaga window
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	-- use enter to open file with definition preview
	definition = {
		edit = "<CR>",
	},
	ui = {
		colors = {
			normal_bg = "#1d3b53",
		},
		border = "rounded",
	},
})
