local C = require 'foggy.colors'
local O = require('foggy.config').options

local bg
local fg
if O.ts_context.dark_background then
    bg = C.black.b0
    fg = C.gray.b0
else
    bg = C.gray.g2
    fg = C.gray.g4
end

return {
    TreesitterContext = { bg = bg },
    TreesitterContextLineNumber = { fg = fg, bg = bg },
}
