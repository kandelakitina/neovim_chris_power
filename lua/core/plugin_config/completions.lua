-- import plugin safely
local setup, cmp = pcall(require, "cmp")
if not setup then
  return
end


local cmp = require("cmp")

-- Add VS code like snippets
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-o>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),

	-- Adding LuaSnip as a snippet plugin for completion engine
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },

		-- Adding LuaSnip
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
})
