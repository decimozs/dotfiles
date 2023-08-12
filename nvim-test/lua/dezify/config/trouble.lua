-- safety check
local install, trouble = pcall(require, "trouble")
if not install then
	return
end

trouble.setup()
