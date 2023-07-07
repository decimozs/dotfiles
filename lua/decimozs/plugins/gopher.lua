-- safety install
local gopher_setup, gopher = pcall(require, "gopher")

if not gopher_setup then
	return
end

gopher.setup()
