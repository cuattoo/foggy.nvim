local C = require 'foggy.colors'
local O = require('foggy.config').options

return {

    NvimTreeNormal = { fg = C.fg, bg = C.bg },
    NvimTreeNormalNC = { fg = C.fg, bg = C.bg },

    NvimTreeFolderName = { fg = C.fg_highlight },
    NvimTreeOpenedFolderName = { link = 'NvimTreeFolderName' },
    NvimTreeEmptyFolderName = { link = 'NvimTreeFolderName' },
    NvimTreeFolderIcon = { link = 'NvimTreeFolderName' },

    NvimTreeSpecialFile = { link = 'NvimTreeFolderName' },

    NvimTreeRootFolder = { fg = C.gray.g4 },
    NvimTreeGitDirty = { fg = C.white.default },
    NvimTreeGitNew = { fg = C.gray.g4 },
    NvimTreeGitDeleted = { fg = C.gray.g4 },
    NvimTreeGitStaged = { fg = C.gray.g4 },
    NvimTreeIndentMarker = { fg = C.bg_highlight, bg = C.bg },


    NvimTreeWinSeparator = { fg = C.bg_dark, bg = C.bg },

    NvimTreeCursorLine = { bg = C.bg_highlight },
    NvimTreeCursor = { bg = C.none, fg = C.none },

    NvimTreeSymlink = { fg = C.fg_bright },
}
