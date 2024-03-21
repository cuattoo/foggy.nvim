local C = require 'foggy.colors'

return {

    DiffviewNormal = { bg = C.bg_dark, fg = C.fg },
    DiffviewStatusLine = { bg = C.black.b0 },

    DiffviewFilePanelTitle = { fg = C.orange.base, bold = true },
    DiffviewFolderSign = { fg = C.yellow.dim },
    DiffviewFolderName = { bg = C.bg_dark, fg = C.blue.base },
}
