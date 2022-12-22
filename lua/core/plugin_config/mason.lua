-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"emmet_ls",
		"tailwindcss",
		"ruby_ls"
	}
})

mason_null_ls.setup({
  -- list of formatters & linters for mason to install
  ensure_installed = {
    "prettier", -- ts/js formatter
    "stylua", -- lua formatter
    "eslint_d", -- ts/js linter
  },
  -- auto-install configured formatters & linters (with null-ls)
  automatic_installation = true,
})