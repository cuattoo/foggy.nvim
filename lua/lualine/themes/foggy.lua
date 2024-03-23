local C = require 'foggy.colors'

local foggy = {}

foggy.normal = {
    a = { bg = C.xterm.white, fg = C.xterm.grey, gui = 'bold' },
    b = { bg = C.bg, fg = C.xterm.grey },
    c = { bg = C.bg_statusline, fg = C.white.default },
}

foggy.insert = {
    a = { bg = C.green.bright, fg = C.black.b0, gui = 'bold' },
    b = { bg = C.bg, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white.default },
}

foggy.command = {
    a = { bg = C.cyan.bright, fg = C.black.b0, gui = 'bold' },
    b = { bg = C.bg, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white.default },
}

foggy.visual = {
    a = { bg = C.red.bright, fg = C.black.b0, gui = 'bold' },
    b = { bg = C.bg, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white.default },
}

foggy.replace = {
    a = { bg = C.magenta.bright, fg = C.black.b0, gui = 'bold' },
    b = { bg = C.bg, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white.default },
}

foggy.terminal = {
    a = { bg = C.blue.b2, fg = C.black.b0, gui = 'bold' },
    b = { bg = C.bg, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white.default },
}

foggy.inactive = {
    a = { bg = C.bg_t, fg = C.black.b0, gui = 'bold' },
    b = { bg = C.bg, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white.default },
}

return foggy
