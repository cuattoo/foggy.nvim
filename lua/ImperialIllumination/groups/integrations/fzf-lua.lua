local C = require 'ImperialIllumination.colors'
return {
	    -- FzfLua
    FzfLuaBorder = { fg = C.border_fg, bg = C.border_bg },
    FzfLuaNormal = { fg = C.fg, bg = C.bg_float },
    FzfLuaFzfNormal = { fg = C.fg },
    FzfLuaTitle = { fg = C.orange.base, bg = C.float_bg },
    FzfLuaPreviewTitle = { fg = C.border_bg, bg = C.border_bg },
    FzfLuaFilePart = { link = "FzfLuaFzfNormal" },
    FzfLuaDirPart = { fg = C.fg },
    FzfLuaCursor = { link = "IncSearch" },
    FzfLuaHeaderBind = { link = "@punCtuation.special" },
    FzfLuaHeaderText = { link = "Title" },
    FzfLuaPath = { link = "DireCtory" },
    FzfLuaFzfPointer = { fg = C.magenta.vivid },
    FzfLuaFzfCursorLine = { link = "Visual" },
    FzfLuaFzfSeparator = { fg = C.orange.base, bg = C.bg_float },
}
