--[[ local colorscheme = "catppuccin" ]]
--[[ local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme) ]]
--[[ if not status_ok then ]]
--[[ 	vim.notify("colorscheme " .. colorscheme .. " not found!") ]]
--[[ 	return ]]
--[[ end ]]
-- lua
require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "night", -- the theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- the theme is used when the background is set to light
	transparent = true, -- enable this to disable setting the background color
	terminal_colors = true, -- configure the colors used when opening a `:terminal` in neovim
	styles = {
		-- style to be applied to different syntax groups
		-- value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- background styles. can be "dark", "transparent" or "normal"
		sidebars = "transparent", -- style for sidebars, see below
		floats = "transparent", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- set a darker background on sidebar-like windows. for example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- adjusts the brightness of the colors of the **day** style. number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- enabling this option, will hide inactive statuslines and replace them with a thin border instead. should work with the standard **statusline** and **lualine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- when `true`, section headers in the lualine theme will be bold

	on_colors = function(colors) end,

	on_highlights = function(highlights, colors) end,
})
require("lualine").setup({
	options = {
		-- ... your lualine config
		theme = "tokyonight-strom",
		-- ... your lualine config
	},
})
require("tokyonight").load()

