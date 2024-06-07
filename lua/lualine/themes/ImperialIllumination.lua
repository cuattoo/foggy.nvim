local C = require 'ImperialIllumination.colors'

local ImperialIllumination = {}

ImperialIllumination.normal = {
	a = { bg = C.orange.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

ImperialIllumination.insert = {
	a = { bg = C.green.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

ImperialIllumination.command = {
	a = { bg = C.cyan.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, g = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

ImperialIllumination.visual = {
	a = { bg = C.red.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

ImperialIllumination.replace = {
	a = { bg = C.magenta.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

ImperialIllumination.terminal = {
	a = { bg = C.blue.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

ImperialIllumination.inactive = {
	a = { bg = C.bg_inactive, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

return ImperialIllumination
