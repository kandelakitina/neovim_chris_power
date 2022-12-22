vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- import plugin safely
local setup, nvim_tree = pcall(require, "nvim-tree")
if not setup then
  return
end

require("nvim-tree").setup()

-- Keymap to Toggle NTree
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')