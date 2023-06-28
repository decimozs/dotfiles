-- safety checkers
local install, comment = pcall(require, "Comment")
if not install then
  return
end

-- else run the plugin
comment.setup()
