-- import null-ls plugin safely
local setup, colorizer = pcall(require, "colorizer")
if not setup then
  return
end

require('colorizer').setup()