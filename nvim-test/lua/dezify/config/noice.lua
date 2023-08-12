-- safety check
local install, noice = pcall(require, "noice")
if not install then
	return
end

noice.setup()
