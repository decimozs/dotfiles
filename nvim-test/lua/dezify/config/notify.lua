-- safety check
local install, notify = pcall(require, "notify")
if not install then
	return
end

notify.setup({
	render = "minimal",
	background_colour = "#CDD3DE",
})
