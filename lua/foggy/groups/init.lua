local merge = require('foggy.utils').merge
local C = require 'foggy.config'

local M = {}

M.integrations = {
    'nvim-dap-ui',
    'nvim-dap',
    'nvim-notify',
    'dev-icons',
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

M.styles = {
    'dev-icons'
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

function M.get_styles()
    for _, style in ipairs(M.styles) do
        require('foggy.groups.styles.' .. style)
    end
end

return M
