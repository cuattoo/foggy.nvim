local C = require 'foggy.config'
local G = require 'foggy.groups'
local U = require 'foggy.utils'

local M = {}

function M.load(opts)
    if not U.loaded() then
        vim.api.nvim_command 'hi clear'
        vim.o.termguicolors = true
        vim.g.colors_name = U.NAME
    end

    C.setup(opts)

    -- Apply theme
    require('foggy.colors').extend_palette()
    U.highlight(G.get_groups())
    G.set_term_colors()
end

-- Add command to nvim
vim.api.nvim_create_user_command('Foggy', function(_)
    vim.api.nvim_command 'colorscheme Foggy'
end, {
    nargs = 1,
})

M.setup = C.setup

return M
