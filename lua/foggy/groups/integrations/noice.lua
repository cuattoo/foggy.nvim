local C = require 'foggy.colors'
local O = require('foggy.config').options

local groups = {

    NoiceLspProgressTitle = { fg = C.yellow.base, bg = C.bg, bold = true },
    NoiceLspProgressClient = { fg = C.gray.g4, bg = C.bg },
    NoiceLspProgressSpinner = { fg = C.cyan.bright, bg = C.bg },

    NoiceFormatProgressDone = { bg = C.green.bright, fg = C.black.b0 },
    NoiceFormatProgressTodo = { bg = C.gray.b5, fg = C.black.b0 },

    NoiceCmdline = { bg = C.bg_dark, fg = C.fg },
    NoiceCmdlineIcon = { bg = C.bg_float, fg = C.yellow.base },
    NoiceCmdlineIconSearch = { bg = C.bg_dark, fg = C.yellow.base },

    NoicePopupBorder = { fg = C.black.b0, bg = C.black.b1 },
    NoiceCmdlinePopupBorder = { link = 'NoicePopupBorder' },
    NoiceCmdlinePopupBorderSearch = { link = 'NoicePopupBorder' },
    NoiceCmdlinePopup = { bg = C.black.b1 },
}

if O.noice.style == 'classic' then
    groups.NoiceCmdline = { bg = C.bg, fg = C.cyan.base }
    groups.NoiceCmdlinePopup = { bg = C.bg }
    groups.NoicePopupBorder = { bg = C.bg, fg = C.cyan.base }
    groups.NoiceCmdlineIcon = { bg = C.bg, fg = C.yellow.bright }
end

return groups
