local C = require("foggy.config")
local T = require("foggy.groups.terminal")
local M = {}

function M.get(terminal)
    C.options.terminal.terminal = terminal
    local T = require("foggy.groups.terminal" .. terminal)
    if not T == "kitty" or "alacritty" then
        vim.api.nvim_err_write("Terminal is invalid: " .. terminal)
    else
        T()
    end
end

return M
