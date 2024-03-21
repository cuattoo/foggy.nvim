# arcdic.nvim

A Neovim colorscheme based on [Nord](https://www.nordtheme.com/), but in lighter colors. The idea behind this colorscheme is to use Nord, but add some lighter colors and use Aurora more prominently than Nord themes usually do. This ends up creating a colorscheme that is soft on the eyes in the light.

If there is anything that does not seem right, even if it is a very small highlight, please let me know with an issue or PR!

# 📦 Installation

With [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'cuattoo/arcdic.nvim'
```

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    'cuattoo/arcdic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'arcdic' .load()
    end
}
```

With [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'cuattoo/arcdic.nvim', { 'branch': 'main' }
```

# 🚀 Usage

Using vim:

```vim
colorscheme arcdic
```

Using lua:

```lua
vim.cmd.colorscheme 'arcdic'
-- or
require 'arcdic' .load()
```

Using with lualine:

```lua
require 'lualine' .setup {
    options = {
        theme = 'arcdic'
    }
}
```

To get the palette in lua:

```lua
local palette = require 'arcdic.colors'
```

# ⚙️ Configuration

Arcdic will use the default values, unless `setup` is called. Below is the default configuration.

```lua
require 'arcrdic' .setup {
    -- This callback can be used to override the colors used in the palette.
    on_palette = function(palette) return palette end,

    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Enable background highlighting
    bg_highlight = true,
    -- Enable brighter float border.
    bright_border = false,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = true,
    -- Swap the dark background with the normal one.
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
        theme = 'light',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
    },
    ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
    }
}
```

An example of overriding the `TelescopePromptTitle` colors:

```lua
local palette = require 'arcdic.colors'
require 'arcdic' .setup {
    override = {
        TelescopePromptTitle = {
            fg = palette.red.bright,
            bg = palette.green.base,
            italic = true,
            underline = true,
            sp = palette.yellow.dim,
            undercurl = false
        }
    }
}
```
