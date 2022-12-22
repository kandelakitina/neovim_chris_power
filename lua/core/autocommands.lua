local A = vim.api


A.nvim_create_autocmd({ 'TextYankPost' }, {
    callback = function()
        vim.highlight.on_yank()
    end,
})