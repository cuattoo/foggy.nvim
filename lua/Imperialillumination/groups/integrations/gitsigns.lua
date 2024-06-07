local C = require 'ImperialIllumination.colors'
local O = require('ImperialIllumination.config').options

return {
    GitSignsAdd = { fg = C.git.add, bg = C.bg_sidebar },
    GitSignsChange = { fg = C.git.change, bg = C.bg_sidebar },
    GitSignsDelete = { fg = C.git.delete, bg = C.bg_sidebar },
    GitSignsAddPreview = { link = 'GitSignsAdd' },
    GitSignsDeletePreview = { link = 'GitSignsDelete' },
}
