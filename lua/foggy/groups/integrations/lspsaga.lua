local C = require 'foggy.colors'

return {
    SagaBorder = { bg = C.black.b2, fg = C.fg_float_border },
    SagaNormal = { bg = C.black.b2 },

    HoverBorder = { link = 'FloatBorder' },
    HoverNormal = { link = 'NormalFloat' },

    RenameNormal = { bg = C.bg_float, fg = C.yellow.bright },
    RenameBorder = { link = 'FloatBorder' },

    DiagnosticPos = { fg = C.fg },
    DiagnosticWord = { fg = C.fg },
    DiagnosticSource = { fg = C.gray.g4 },
    DiagnosticNormal = { link = 'NormalFloat' },
    DiagnosticShowNormal = { link = 'NormalFloat' },
    DiagnosticShowBorder = { link = 'FloatBorder' },
    DiagnosticBorder = { link = 'FloatBorder' },
}
