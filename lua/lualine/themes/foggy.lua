local C = require 'foggy.colors'

local foggy = {}

foggy.normal = {
    a = { bg = C.orange.base, fg = C.black.dark, gui = 'bold' },
    b = { bg = C.bg, fg = C.gray.dull3 },
    c = { bg = C.bg_statusline, fg = C.white.normal },
}

foggy.insert = {
    a = { bg = C.green.bright, fg = C.black.dark, gui = 'bold' },
    b = { bg = C.bg, fg = C.white.bright },
    c = { bg = C.bg_statusline, fg = C.white.normal },
}

foggy.command = {
    a = { bg = C.cyan.bright, fg = C.black.dark, gui = 'bold' },
    b = { bg = C.bg, fg = C.white.bright },
    c = { bg = C.bg_statusline, fg = C.white.normal },
}

foggy.visual = {
    a = { bg = C.red.bright, fg = C.black.dark, gui = 'bold' },
    b = { bg = C.bg, fg = C.white.bright },
    c = { bg = C.bg_statusline, fg = C.white.normal },
}

foggy.replace = {
    a = { bg = C.magenta.bright, fg = C.black.dark, gui = 'bold' },
    b = { bg = C.bg, fg = C.white.bright },
    c = { bg = C.bg_statusline, fg = C.white.normal },
}

foggy.terminal = {
    a = { bg = C.blue.b2, fg = C.black.dark, gui = 'bold' },
    b = { bg = C.bg, fg = C.white.bright },
    c = { bg = C.bg_statusline, fg = C.white.normal },
}

foggy.inactive = {
    a = { bg = C.bg_inactive, fg = C.black.dark, gui = 'bold' },
    b = { bg = C.bg, fg = C.white.bright },
    c = { bg = C.bg_statusline, fg = C.white.normal },
}

return foggy
