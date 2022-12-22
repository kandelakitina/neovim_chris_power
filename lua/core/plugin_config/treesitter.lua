-- import plugin safely
local setup, nvim_treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not setup then
  return
end

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "ruby", "vim", "javascript", "html", "css" },

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}