local C = require 'imperialIllumination.colors'
local O = require('imperialIllumination.config').options

local groups = {

    LeapLabelPrimary = { bg = C.yellow.dim, fg = C.black.dark, bold = true },
}

if O.leap.dim_backdrop then groups.LeapBackdrop = { fg = C.gray.dull3 } end

return groups
