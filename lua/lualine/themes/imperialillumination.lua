local C = require 'imperialIllumination.colors'

local imperialIllumination = {}

imperialIllumination.normal = {
	a = { bg = C.orange.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

imperialIllumination.insert = {
	a = { bg = C.green.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

imperialIllumination.command = {
	a = { bg = C.cyan.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, g = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

imperialIllumination.visual = {
	a = { bg = C.red.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

imperialIllumination.replace = {
	a = { bg = C.magenta.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

imperialIllumination.terminal = {
	a = { bg = C.blue.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

imperialIllumination.inactive = {
	a = { bg = C.bg_inactive, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

return imperialIllumination
