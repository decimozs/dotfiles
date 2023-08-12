-- safety check
local install, mason = pcall(require, "mason")
if not install then
  return
end

local install, masonlsp = pcall(require, "mason-lspconfig")
if not install then
  return
end

local install, masonnullls = pcall(require, "mason-null-ls")
if not install then
  return
end

mason.setup()

masonlsp.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "lua_ls",
    "emmet_ls",
  },
  
  automatic_installation = true
})

masonnullls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
