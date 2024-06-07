local merge = require('ImperialIllumination.utils').merge
local C = require 'ImperialIllumination.config'

local M = {}

M.integrations = {
    'nvim-dap-ui',
    'nvim-dap',
    'nvim-notify',
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
        groups = merge(groups, require('ImperialIllumination.groups.native.' .. native))
    end
    for _, integration in ipairs(M.integrations) do
        groups = merge(groups, require('ImperialIllumination.groups.integrations.' .. integration))
    end
    return merge(groups, C.options.override)
end

--function M.set_term_colors()
--    local colors = require 'ImperialIllumination.groups.native.terminal'
--    for term, col in pairs(colors) do
--        vim.g[term] = col
--    end
--end


function M.get_styles()
    local groups = {}
    for _, style in ipairs(M.styles) do
        groups = merge(groups, require('ImperialIllumination.groups.styles.' .. style))
    end
    return groups
end


return M
