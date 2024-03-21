local C = require 'foggy.colors'

return {

    WhichKey = { fg = C.yellow.base },
    WhichKeyFloat = { bg = C.none },
    WhichKeyDesc = { fg = C.white0 },
    WhichKeyGroup = { fg = C.orange.bright, bold = true },
    WhichKeyBorder = { fg = C.white.default, bg = C.none },

    -- TODO: Unsure.
    WhichKeySeperator = {},
    WhichKeyValue = {},
}
