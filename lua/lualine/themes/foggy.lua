local C = require 'foggy.colors'

local foggy = {}

foggy.normal = {
	a = { bg = C.orange.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

foggy.insert = {
	a = { bg = C.green.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

foggy.command = {
	a = { bg = C.cyan.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, g = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

foggy.visual = {
	a = { bg = C.red.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

foggy.replace = {
	a = { bg = C.magenta.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

foggy.terminal = {
	a = { bg = C.blue.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

foggy.inactive = {
	a = { bg = C.bg_inactive, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

return foggy
