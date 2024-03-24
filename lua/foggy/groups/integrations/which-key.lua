local C = require 'foggy.colors'

return {

    WhichKey = { fg = C.yellow.base },
    WhichKeyFloat = { bg = C.none },
    WhichKeyDesc = { fg = C.white.base },
    WhichKeyGroup = { fg = C.orange.bright, bold = true },
    WhichKeyBorder = { fg = C.white.bright, bg = C.none },

    -- TODO: Unsure.
    WhichKeySeperator = {},
    WhichKeyValue = {},
}
