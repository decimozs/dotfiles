-- safety check
local install, fidget = pcall(require, "fidget")
if not install then
	return
end

fidget.setup()
