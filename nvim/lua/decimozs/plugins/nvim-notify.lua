-- safety install
local notify_setup, notify = pcall(require, "notify")
if not notify_setup then
	return
end

-- run the plugins
notify.setup()
