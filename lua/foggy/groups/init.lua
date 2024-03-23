local merge = require('foggy.utils').merge
local C = require 'foggy.config'

local M = {}

M.integrations = {
    'nvim-dap-ui',
    'nvim-dap',
    'dashboard',
    'indent-blankline',
    'lspsaga',
    'neo-tree',
    'nvim-tree',
    'treesitter',
    'trouble',
    'which-key',
    'gitsigns',
    'telescope',
    'leap',
    'diffview',
    'nvim-cmp',
    'nvim-notify',
    'vimtex',
    'noice',
    'lazy',
    'lsp_signature',
    'ministatusline',
}

M.native = {
    'editor',
    'syntax',
    'diff',
    'lsp',
}

function M.get_groups()
    local groups = {}
    for _, native in ipairs(M.native) do
        groups = merge(groups, require('foggy.groups.native.' .. native))
    end
    for _, integration in ipairs(M.integrations) do
        groups = merge(groups, require('foggy.groups.integrations.' .. integration))
    end
    return merge(groups, C.options.override)
end

function M.set_term_colors()
    local colors = require 'foggy.groups.native.terminal'
    for term, col in pairs(colors) do
        vim.g[term] = col
    end
end

local TerminalGroup = {
    kitty = require("foggy.groups.terminal.kitty"),
    alacritty = require("foggy.groups.terminal.alacritty")
}
M.term = TerminalGroup
function M.set_terminal_highlighting(terminal)
    if TerminalGroup[terminal] ~= nil then
        TerminalGroup[terminal].set_highlighting()
    else
        print("Invalid terminal: ", terminal)
    end
end

return M
