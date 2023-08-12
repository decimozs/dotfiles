-- import gitsigns plugin safely
local install, gitsigns = pcall(require, "gitsigns")
if not install then
	return
end

-- configure/enable gitsigns
gitsigns.setup()
