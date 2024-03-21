local C = require 'foggy.colors'

return {
    NeoTreeCursorLine = { link = 'NvimTreeCursorLine' },
    NeoTreeDirectoryIcon = { link = 'NeoTreeDirectoryName' },
    NeoTreeDirectoryName = { fg = C.fg },
    NeoTreeDirectoryNameOpened = { fg = C.orange.bright },
    NeoTreeRootName = { link = 'NvimTreeRootFolder' },
    --NeoTreeFileName = { link = 'NvimTreeNormal' },
    NeoTreeFileName = { fg = C.white.snow1 },
    NeoTreeFileIcon = { fg = C.fg },
    NeoTreeFileNameOpened = { fg = C.orange.bright },
    NeoTreeGitAdded = { link = 'NvimTreeGitNew' },
    NeoTreeGitConflict = { fg = C.yellow.enigma },
    NeoTreeGitModified = { link = 'NvimTreeGitDirty' },
    NeoTreeGitUntracked = { link = "NvimTreeGitStaged" },
    NeoTreeNormal = { link = 'NvimTreeNormal' },
    NeoTreeNormalNC = { link = 'NvimTreeNormalNC' },
    NeoTreeSymbolicLinkTarget = { link = 'NvimTreeSymlink' },
    NeoTreeHiddenByName = { fg = C.green.dim },
    NeoTreeIndentMarker = { link = 'NvimTreeIndentMarker' },
    NeoTreeExpander = { link = 'NeoTreeCursorLine' },
}
