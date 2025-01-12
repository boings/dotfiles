-- Plugins: Colorschemes
-- https://github.com/rafi/vim-config

return {

	-- Use last-used colorscheme
	{
		'rafi/theme-loader.nvim',
		lazy = false,
		priority = 99,
		opts = { initial_colorscheme = 'neohybrid' },
	},

	{ 'rafi/neo-hybrid.vim', priority = 100, lazy = false },
	{ 'rafi/awesome-vim-colorschemes', lazy = false },
	{
		'maxmx03/fluoromachine.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			local fm = require('fluoromachine')

			fm.setup({
				glow = true,
				theme = 'fluoromachine',
				transparent = true,
			})

			vim.cmd.colorscheme('fluoromachine')
		end,
	},
}
