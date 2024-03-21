-- Notes and format from @folke/tokyonight.nvim.

local C = require 'foggy.colors'
local O = require('foggy.config').options

return {

    -- These groups are not listed as default vim groups, but they
    -- are defacto standard group names for syntax highlighting.  Commented
    -- out groups should chain up to their "preferred" group by default.
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = C.yellow.enigma }, -- (preferred) any constant
    Number = { link = 'Constant' },      --   a number constant: 234, 0xff
    Boolean = { link = 'Number' },       --  a boolean constant: TRUE, false
    Float = { link = 'Number' },         --    a floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },
    String = { fg = C.gray.b5 },         --   a string constant: "this is a string"
    Character = { fg = C.green.base },   --  a character constant: 'c', '\n'
    Variable = { fg = C.fg },
    Namespace = { fg = C.yellow.dim },
    Field = { fg = C.white.snow1 },

    Title = { fg = C.yellow.base },

    Builtin = { fg = C.red.rust },

    Identifier = { fg = C.gray.b5 },                      -- (preferred) any variable name
    Function = { fg = C.magenta.bright },                 -- function name (also: methods for classes)

    Keyword = { fg = C.gray.b5, bold = O.bold_keywords }, --  any other keyword
    Statement = { link = 'Keyword' },                     -- (preferred) any statement
    Conditional = { link = 'Keyword' },                   --  if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' },                        --   for, do, while, etc.
    Label = { link = 'Keyword' },                         --    case, default, etc.
    Operator = { fg = C.fg },                             -- "sizeof", "+", "*", etc.

    Macro = { fg = C.yellow.base },                       -- same as Define
    Exception = { link = 'Macro' },                       --  try, catch, throw
    PreProc = { link = 'Macro' },                         -- (preferred) generic preprocessor
    Include = { fg = C.blue.base },                       --  preprocessor #include
    Define = { fg = C.blue.base },                        --   preprocessor #define
    PreCondit = { link = 'Macro' },                       --  preprocessor #if, #else, #endif, etc.

    Comment = { fg = C.gray.g4, italic = O.italic_comments },

    Type = { fg = C.yellow.base },       -- (preferred) int, long, char, etc.
    StorageClass = { link = 'Keyword' }, -- static, register, volatile, etc.
    Structure = { link = 'Type' },       --  struct, union, enum, etc.
    Typedef = { link = 'Type' },         --  A typedef

    Special = { fg = C.blue.b1 },        -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    -- Debug         = { }, --    debugging statements

    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    Italic = { italic = true },

    -- ("Ignore", below, may be invisible...)
    Ignore = { fg = C.gray.g2 },                   -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = C.error },                      -- (preferred) any erroneous construct
    Todo = { bg = C.yellow.dim, fg = C.black.b0 }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Note = { fg = C.black.b0, bg = C.info },

    -- What are these?
    qfLineNr = { fg = C.gray.g4 },
    qfFileName = { fg = C.blue.b1 },

    htmlH1 = { fg = C.yellow.base, bold = true },
    htmlH2 = { fg = C.orange.base },

    Link = { fg = C.blue.b1, underline = true },
    CodeBlock = { bg = C.black.b1, fg = C.fg },

    mkdHeading = { link = 'htmlH1' },
    mkdCode = { link = 'CodeBlock' },
    mkdCodeDelimiter = { link = 'CodeBlock' },
    mkdCodeStart = { fg = C.cyan.base, bold = true },
    mkdCodeEnd = { fg = C.cyan.base, bold = true },
    mkdLink = { link = 'Link' },

    markdownHeadingDelimiter = { link = 'mkdHeading' },
    markdownCode = { link = 'CodeBlock' },
    markdownCodeBlock = { link = 'CodeBlock' },
    markdownH1 = { link = 'htmlH1' },
    markdownH2 = { link = 'htmlH2' },
    markdownLinkText = { link = 'Link' },

    ['@punctuation.special.markdown'] = { fg = C.orange.base, bold = true },
    ['@text.todo.unchecked'] = { fg = C.blue.b1 },  -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.green.base }, -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = C.black.b0, fg = C.blue.b1 },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = C.black.b0, fg = C.blue.b1 },

    debugPC = { bg = C.bg_sidebar },         -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = C.red.bright }, -- used for breakpoint colors in terminal-debug
}
