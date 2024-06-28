local C = require 'ImperialIllumination.colors'
local O = require('ImperialIllumination.config').options

return {

    NvimTreeNormal = { fg = C.fg },
    NvimTreeNormalNC = { fg = C.fg },

    NvimTreeFolderName = { fg = C.fg_highlight },
    NvimTreeOpenedFolderName = { link = 'NvimTreeFolderName' },
    NvimTreeEmptyFolderName = { link = 'NvimTreeFolderName' },
    NvimTreeFolderIcon = { link = 'NvimTreeFolderName' },

    NvimTreeSpecialFile = { link = 'NvimTreeFolderName' },

    NvimTreeRootFolder = { fg = C.fg_highlight },
    NvimTreeGitDirty = { fg = C.git.change },
    NvimTreeGitNew = { fg = C.git.add },
    NvimTreeGitDeleted = { fg = C.git.delete },
    NvimTreeGitStaged = { fg = C.fg.highlight },
    NvimTreeIndentMarker = { fg = C.bg_highlight },


    NvimTreeWinSeparator = { fg = C.bg_dark, bg = C.bg },

    NvimTreeCursorLine = { link = 'CursorColumn' },
    NvimTreeCursor = { link = 'Cursor' },

    NvimTreeSymlink = { fg = C.fg_bright },
}
