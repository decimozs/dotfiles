-- safety checker
local install, lualine = pcall(require, "lualine")
if not install then
	return
end

-- else run the plugin
lualine.setup({
	options = {
		theme = "nightfly",
	},
})
