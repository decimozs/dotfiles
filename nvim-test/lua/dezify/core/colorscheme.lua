-- safety check
local install, lspcolors = pcall(require, "lsp-colors")
if not install then
	return
end

vim.cmd("syntax enable")
vim.cmd("colorscheme OceanicNext")

lspcolors.setup({
	Error = "#db4b4b",
	Warning = "#e0af68",
	Information = "#0db9d7",
	Hint = "#10B981",
})
