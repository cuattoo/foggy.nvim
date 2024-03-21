local C = require 'foggy.colors'
local O = require('foggy.config').options

local groups = {

    LeapLabelPrimary = { bg = C.yellow.dim, fg = C.black.b0, bold = true },
}

if O.leap.dim_backdrop then groups.LeapBackdrop = { fg = C.gray.g4 } end

return groups
