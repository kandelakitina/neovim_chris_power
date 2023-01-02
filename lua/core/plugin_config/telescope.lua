-- import plugin safely
local setup, telescope = pcall(require, "telescope.builtin")
if not setup then
  return
end

local builtin = require('telescope.builtin')
local keyset = vim.keymap.set

keyset('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
keyset('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind [G]rep' })
keyset('n', '<leader>fs', builtin.git_status, { desc = '[F]ind git [S]tatus' })
keyset('n', '<leader>fo', builtin.oldfiles, { desc = '[F]ind [O]pened' })
keyset('n', '<leader>fb', builtin.buffers, { desc = '[F]ind [B]uffers' })
keyset('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind [W]ord' })
keyset('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
keyset('n', '<leader>fc', builtin.commands, { desc = '[F]ind [C]ommands' })
keyset('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
keyset('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })