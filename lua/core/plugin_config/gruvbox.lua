-- import plugin safely
local setup, gruvbox = pcall(require, "gruvbox")
if not setup then
  return
end

require("gruvbox").setup()

-- Vim command (i.e. ":colorscheme")
vim.cmd("colorscheme gruvbox")