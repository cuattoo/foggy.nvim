local M = {}

local defaults = {
    -- This callback can be used to override the colors used in the palette.
    on_palette = function(palette)
        return palette
    end,

    background = nil,

    -- Override terminal bg
    terminal = {
        terminal = "kitty",
        bg = false,
    },

    -- Available styles dark, lighter, ImperialIllumination
    theme = "", -- radiance, TODO

    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,

    -- Enable general editor background transparency.
    transparent_bg = false,
    bg_hightlight = true,
    -- Enable brighter float border.
    bright_border = false,
    -- Adjusts some colors to make the theme a bit nicer (imo).
    reduced_blue = true,
    -- Swop the dark background with the normal one.
    swap_backgrounds = false,
    -- Override the styling of any highlight group.
    override = {},
    -- Cursorline options.  Also includes visual/selection.
    cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Avialable styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.6,
	visual_blend 0.8,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
    },
    ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
    },
}

M.options = defaults

function M.setup(options)
    M.options = vim.tbl_deep_extend('force', M.options or defaults, options or {})
end

return M
