local C = require 'ImperialIllumination.config'
local G = require 'ImperialIllumination.groups'
local U = require 'ImperialIllumination.utils'

local M = {}

function M.load(opts)
    if not U.loaded() then
        vim.api.nvim_command 'hi clear'
        vim.o.termguicolors = true
        vim.g.colors_name = U.NAME
    end

    C.setup(opts)

    -- Apply theme
    require('ImperialIllumination.colors').extend_palette(C.options.theme)
    U.highlight(G.get_groups())
    --G.set_term_colors()
end

-- Add command to nvim
vim.api.nvim_create_user_command('ImperialIllumination', function(_)
    vim.api.nvim_command 'colorscheme ImperialIlumination'
end, {
    nargs = 1,
})

M.setup = C.setup

return M
