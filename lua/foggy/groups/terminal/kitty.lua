local C = require("foggy.colors")

local M = {}

function M.set_highlighting()
    local fg_rgb = C.fg

    -- Convert RGB values to HEX format
    local hex_code = string.format("#%02x%02x%02x", math.floor(fg_rgb[1]),
        math.floor(fg_rgb[2]), math.floor(fg_rgb[3]))

    -- Execute shell command using Vim API to setKitty's dynamic-background property
    vim.fn.system({ "kitty", "@", "set-colors", "--all", "foreground=" .. hex_code })
end

return M
