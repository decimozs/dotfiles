-- safety checker
local install, nvimtree = pcall(require, "nvim-tree")
if not install then
	return
end

-- else set the configurations & run the plugins
vim.g.loaded = 1
vim.g.loaded_newtrewPlugin = 1

-- run the plugin
nvimtree.setup({
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
