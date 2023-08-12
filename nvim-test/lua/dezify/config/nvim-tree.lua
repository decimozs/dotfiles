-- safety check
local install, nvimtree = pcall(require, "nvim-tree")
if not install then
	return
end

-- setup the plugin
nvimtree.setup({
	sort_by = "case_sensitive",
	actions = {
		open_file = { quit_on_open = true },
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	filters = {
		custom = { "^.git$", "^node_modules$" },
	},
	git = {
		enable = false,
	},
	log = {
		enable = true,
		types = {
			diagnostics = true,
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		debounce_delay = 50,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
})
