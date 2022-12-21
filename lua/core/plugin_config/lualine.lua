require('lualine').setup {
  options = {
		icons_enabled = true,
		theme = 'gruvbox',
	},
	sections = {
		lualine_a = {
			{
				-- Puts a full path of the file
				'filename',
				path = 1,
			}
		}
	}
}