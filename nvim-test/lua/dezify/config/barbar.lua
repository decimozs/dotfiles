-- safety check
local install, barbar = pcall(require, "barbar")
if not install then
	return
end

barbar.setup({
	animation = false,
	separator = { left = "▎", right = "▎" },
	auto_hide = true,
})
