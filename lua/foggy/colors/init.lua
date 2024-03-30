local U = require 'foggy.utils'
local O = require('foggy.config').options
local C = require 'foggy.colors.foggy'

C.extended = false

function C.extend_palette(style)
    C.extended = true

    -- Modify the palette before generating colors.
    C = O.on_palette(C)

    local diff_blend = 0.2

    -- Swap background
    if O.swap_backgrounds then
        C.gray.dull0 = C.black.dark
        C.black.dark = C.gray.dull0
    end


    -- Define some use cases.
    -- Some of the format is from @folke/tokyonight.nvim.

    -- Backgrounds
    C.bg = C.gray.g0
    C.bg_dark = C.black.medium
    C.bg_inactive = C.black.medium
    C.bg_highlight = C.gray.g1
    C.bg_visual = C.bg_highlight
    C.bg_sidebar = C.bg
    C.bg_popup = C.gray.dust0
    C.bg_statusline = C.bg_dark
    C.bg_selected = U.blend(C.gray.dull1, C.black.dark, 0.4)
    C.bg_fold = C.gray.dull2

    -- Borders
    C.border_fg = C.bg_highlight
    C.border_bg = C.bg_pupup

    -- Foregrounds
    C.fg = C.gray.gyn0
    C.fg_inactive = C.gray.dull1
    C.fg_hightlight = C.gray.gy2
    C.fg_bright = C.gray.hl2
    C.fg_dark = C.black.normal
    C.fg_sidebar = C.bg_highlight
    C.fg_fold = C.fg
    C.fg_selected = C.fg_bright

    -- Popups
    C.bg_popup = C.bg
    C.fg_popup = C.fg
    C.bg_popup_border = C.bg
    C.fg_popup_border = C.border_fg

    -- Floating windows
    C.bg_float = C.bg_popup
    C.fg_float = C.fg
    C.bg_float_border = C.bg_popup_border
    C.fg_float_border = C.border_fg


    -- Diffs
    C.diff = {
        change0 = U.blend(C.white.dim, C.bg, 0.05),
        change1 = U.blend(C.white.dim, C.bg, diff_blend),
        add = U.blend(C.green.base, C.bg, diff_blend),
        delete = U.blend(C.red.soft, C.bg, diff_blend),
    }

    -- Git
    C.git = {
        add = C.green.base,
        delete = C.red.soft,
        change = C.yellow.base,
    }

    -- Diagnostics
    C.error = C.red.soft
    C.warn = C.yellow.base
    C.warning = C.warn
    C.hint = C.green.bright
    C.info = C.blue.base

    if O.transparent_bg then
        C.bg = C.none
        C.bg_dark = C.none
        C.bg_sidebar = C.none
        C.bg_popup = C.none
        C.bg_statusline = C.none
        C.bg_selected = U.blend(C.gray.dull1, C.black.dark, 0.4)
    end


    -- TODO
    -- if style == "foggy" then
    --     C.bg = (O.transparent_bg and C.none) or C.gray.hl2
    --     C.bg_dark = (O.transparent_bg and C.none) or C.hl0
    --     C.bg_highlight = (O.transparent_bg and C.xterm.grey) or C.white.dim
    --         U.blend(C.magenta.bright, C.xterm.grey, O.cursorline.blend)
    --     C.bg_visual = C.bg_highlight
    --     C.bg_sidebar = (O.transparent_bg and C.none) or C.bg
    --     C.bg_popup = (O.transparent_bg and C.none) or C.bg
    --     C.bg_statusline = C.bg_dark
    --     C.bg_selected = U.blend(C.gray.g2, C.black.b0, 0.4)
    --     C.bg_fold = C.gray.g2
    --     C.fg = C.white.snow1
    --     C.fg_inactive = (O.transparent_bg and C.gray.foggy) or C.white.default
    --     C.fg_hightlight = (O.transparent_bg and O.bg_highlight and C.white.snow1) or C.white.default
    --     C.fg_bright = C.white.snow2
    --     C.fg_dark = C.white.default
    --     C.fg_sidebar = C.white.default
    --     C.fg_fold = C.fg
    --     C.fg_selected = C.fg_bright
    --     C.bg_popup = C.bg
    --     C.fg_popup = C.fg
    --     C.bg_popup_border = C.bg
    --     C.fg_popup_border = C.border_fg
    --     C.bg_float = (C.bg and C.gray.foggy) or C.white.default
    --     C.fg_float = C.fg
    --     C.bg_float_border = C.bg_float
    --     C.fg_float_border = C.border_fg
    -- end

    -- Cursorline
    if O.cursorline.theme == 'light' then
        C.bg_highlight = U.blend(C.gray.dull2, C.bg, O.cursorline.blend)
        C.bg_visual = C.bg_highlight
    end
end

-- Sometimes the palette is required before the theme has been loaded,
-- so we need to extend the palette in those cases. if not C.extended then C.extend_palette() end

return C
