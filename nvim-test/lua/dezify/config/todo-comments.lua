-- safety check
local install, todocomments = pcall(require, "todo-comments")
if not install then
	return
end

todocomments.setup()
