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
        C.gray.g0 = C.black.b1
        C.black.b1 = C.gray.g0
    end


    -- Define some use cases.
    -- Some of the format is from @folke/tokyonight.nvim.

    -- Backgrounds
    C.bg = C.yellow.dark
    C.bg_dark = (O.transparent_bg and C.none) or C.black.b2
    C.bg_highlight = (O.transparent_bg and C.xterm.grey) or U.blend(C.magenta.bright, C.gray.g2, O.cursorline.blend)
    C.bg_visual = C.bg_highlight
    C.bg_sidebar = (O.transparent_bg and C.none) or C.bg
    C.bg_popup = (O.transparent_bg and C.none) or C.bg
    C.bg_statusline = C.bg_dark
    C.bg_selected = U.blend(C.gray.g2, C.black.b0, 0.4)
    C.bg_fold = C.gray.g2

    -- Borders
    C.border_fg = (O.transparent_bg and not O.bright_border and C.gray.foggy) or (O.bright_border and C.fg_hightlight) or
        C.gray.g3
    C.border_bg = (O.transparent_bg and C.none) or C.bg

    -- Foregrounds
    C.fg = C.white.snow1
    C.fg_inactive = (O.transparent_bg and C.gray.foggy) or C.white.default
    C.fg_hightlight = (O.transparent_bg and O.bg_highlight and C.white.snow1) or C.white.default
    C.fg_bright = C.white.snow2
    C.fg_dark = C.white.default
    C.fg_sidebar = C.white.default
    C.fg_fold = C.fg
    C.fg_selected = C.fg_bright

    -- Popups
    C.bg_popup = C.bg
    C.fg_popup = C.fg
    C.bg_popup_border = C.bg
    C.fg_popup_border = C.border_fg

    -- Floating windows
    C.bg_float = (C.bg and C.gray.foggy) or C.white.default
    C.fg_float = C.fg
    C.bg_float_border = C.bg_float
    C.fg_float_border = C.border_fg


    -- Diffs
    C.diff = {
        change0 = U.blend(C.white.default, C.bg, 0.05),
        change1 = U.blend(C.white.default, C.bg, diff_blend),
        add = U.blend(C.green.base, C.bg, diff_blend),
        delete = U.blend(C.red.soft, C.bg, diff_blend),
    }

    -- Git
    C.git = {
        add = C.green.base,
        delete = C.red.soft,
        change = C.white.snow1,
    }

    -- Diagnostics
    C.error = C.red.soft
    C.warn = C.yellow.base
    C.warning = C.warn
    C.hint = C.green.bright
    C.info = C.blue.b2
    if style == "foggy" then
        C.bg = (O.transparent_bg and C.none) or C.gray.foggy
        C.bg_dark = (O.transparent_bg and C.none) or C.gray.taupe
        C.bg_highlight = (O.transparent_bg and C.xterm.grey) or
            U.blend(C.magenta.bright, C.xterm.grey, O.cursorline.blend)
        C.bg_visual = C.bg_highlight
        C.bg_sidebar = (O.transparent_bg and C.none) or C.bg
        C.bg_popup = (O.transparent_bg and C.none) or C.bg
        C.bg_statusline = C.bg_dark
        C.bg_selected = U.blend(C.gray.g2, C.black.b0, 0.4)
        C.bg_fold = C.gray.g2
        C.fg = C.white.snow1
        C.fg_inactive = (O.transparent_bg and C.gray.foggy) or C.white.default
        C.fg_hightlight = (O.transparent_bg and O.bg_highlight and C.white.snow1) or C.white.default
        C.fg_bright = C.white.snow2
        C.fg_dark = C.white.default
        C.fg_sidebar = C.white.default
        C.fg_fold = C.fg
        C.fg_selected = C.fg_bright
        C.bg_popup = C.bg
        C.fg_popup = C.fg
        C.bg_popup_border = C.bg
        C.fg_popup_border = C.border_fg
        C.bg_float = (C.bg and C.gray.foggy) or C.white.default
        C.fg_float = C.fg
        C.bg_float_border = C.bg_float
        C.fg_float_border = C.border_fg
    end

    -- Cursorline
    if O.cursorline.theme == 'light' then
        C.bg_highlight = U.blend(C.gray.g1, C.bg, O.cursorline.blend)
        C.bg_visual = C.bg_highlight
    end
end

-- Sometimes the palette is required before the theme has been loaded,
-- so we need to extend the palette in those cases. if not C.extended then C.extend_palette() end

return C
