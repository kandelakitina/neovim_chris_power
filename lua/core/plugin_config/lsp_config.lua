-- import plugin safely
local setup, cmp_nvim = pcall(require, "cmp_nvim_lsp")
if not setup then
  return
end

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- Adverstising completion capabilities to LSP
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.sumneko_lua.setup{ 
	on_attach = on_attach,
	capabilities = capabilities, 
}

require'lspconfig'.emmet_ls.setup{ 
	on_attach = on_attach,
	capabilities = capabilities, 
}

require'lspconfig'.tailwindcss.setup{ 
	on_attach = on_attach,
	capabilities = capabilities, 
}

require'lspconfig'.ruby_ls.setup{ 
	on_attach = on_attach,
	capabilities = capabilities, 
}

