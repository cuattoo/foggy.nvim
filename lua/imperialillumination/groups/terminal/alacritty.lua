local C = require("imperialIllumination.config")

local M = {}

function M.set_highlighting()
    local fg_rgb = C.options.colors.fg

    -- Convert RGB values to HEX format
    local hex_code = string.format("#%02x%02x%02x", math.floor(fg_rgb[1]),
        math.floor(fg_rgb[2]), math.floor(fg_rgb[3]))

    -- Set the Alacritty's dynamic_background config option
    vim.opt.g.alacritty_dynamic_background = true
    vim.opt.g["alacritty_foreground"] = hex_code
end

return M
