-- The Nord palette: https://www.nordtheme.com/.
-- This file has a bunch of added colors.

local O = require('foggy.config').options
local root = {
    glowfruit = '#fabd2f', -- Similar to #ffeb3b (yellow), but looks like glow fruit juice
    lavender = '#d3869b',  -- Strong pinky red, evoking a sense of elegance and sophistication
    maroon = '#ba2f59',    -- Deep wine red, expressive yet restrained

    peach = '#fe8019',     -- More vivid orangey yellow
    chili = '#fb4934',     -- Fierce red, perfect for warning messages

    forest = '#98971a',    -- Bright green, suitable for success messages
    ocean = '#458588',     -- Cyan blue, calming and refreshing
    turquoise = '#7daea3', -- Seafoam green, relaxing and comfortable

    raven = '#665c54',     -- Warm gray, a nice balance against light backgrounds
    mountain = '#83a598',  -- Cooler cyan blue, complementary to 'ocean'
    fire = '#cc241d',      -- Vibrant red, great for error notifications

    rosewater = '#d799ae', -- Pale pinky red, used for comments and statusline
    telescope = '#8ec07c', -- Grass green, used for Telescope UI elements
}
local palette = {
    none = 'NONE',
    black = {
        -- Blacks. Not in base Nord.
        b0 = '#191D24',
        b1 = '#1E222A',
        -- Slightly darker than bg.  Very useful for certain popups
        b2 = '#222630',
    },
    root,

    -- Grays
    -- This color is used on their website's dark theme
    gray = {
        g0 = '#242933', -- kitty bg
        -- Polar Night
        g1 = '#2E3440', -- nvim bg
        g2 = '#3B4252',
        g3 = '#434C5E',
        g4 = '#4C566A',
        -- A light blue/gray.
        -- From @nightfox.nvim.
        g5 = '#60728A',
        gy1 = '#444B56', -- Brightened g1 slightly.
        gy2 = '#4E5869', -- Darkened version of g2.
        gy3 = '#576173', -- Even darker version of g3.
        gy4 = '#616B7C', -- Darkest among these new ones, close to g4.

        -- Lilac-Yellow Gray
        ligy0 = '#455367', -- Desaturation of gy1, adding a hint of yellow.
        ligy1 = '#505D71', -- Blended version of g2 & gy2.
        ligy2 = '#59687B', -- Similar blend of g3 & gy3.
        ligy3 = '#637083', -- Closest match to gy4.

        -- Pure Yellow-Green Gray Mixtures
        ygg0 = '#829DA8', -- Blend of y2 & gy2.
        ygg1 = '#9BBDC8', -- Blend of y1 & gy1, softer transition.
        ygg2 = '#ADDCE5', -- Blend of y0 & gy1, very pale green.

        -- light versions of grey.
        foggy = '#898989',
        taupe = '#7F7F7F',
        fawn = '#A3A3A3',
        mocha = '#B5B5B5',
        latte = '#C7C7C7',
    },
    -- Dim white
    white = {
        default = '#BBC3D4',
        antique = '#fbf1ed',
        -- snow storm
        snow1 = '#D8DEE9',
        snow2 = '#E5E9F0',
        snow3 = '#ECEFF4',
    },
    blue = {
        base = '#30b0fe',
        -- Frost
        b0 = '#5E81AC',
        b1 = '#81A1C1',
        b2 = '#88C0D0',
        b4 = '#d1f2f7',
    },
    cyan = {
        base = '#8FBCBB',
        bright = '#9FC6C5',
        dim = '#80B3B2',
    },
    -- Aurora
    -- These colors are used a lot, so we need variations for them
    -- Base colors are from original Nord palette
    red = {
        base = '#BF616A',
        bright = '#C5727A',
        soft = '#eebebe', -- added
        dim = '#B74E58',
    },
    orange = {
        base = '#D08770',
        bright = '#D79784',
        soft = '#edc0ae', -- added
        dim = '#CB775D',
    },
    yellow = {
        base = '#EBCB8B',
        bright = '#EFD49F',
        enigma = '#D1be9E', -- added
        dim = '#E7C173',
        y0 = '#DCAF43',     -- Same as g5, but slightly brightened and turned into yellow.
        y1 = '#ECC067',     -- Little bit darker, still closer to yellow.
        y2 = '#FFDE95',     -- Lighter yet, keeping yellowy tint.
        y3 = '#FFFACB',     -- Very pale yellow.
        dy0 = '#CBAA58',    -- Slightly less yellow than y0, also slightly dimmed.
        dy1 = '#BE963C',    -- Darker, almost orange-yellow now.
        dy2 = '#AE8326',    -- More intense, turns into golden yellow.
        dark = '#23231F',   -- added
    },
    green = {
        base = '#A3BE8C',
        bright = '#B1C89D',
        dim = '#97B67C',
    },
    magenta = {
        base = '#B48EAD',
        bright = '#BE9DB8',
        dim = '#A97EA1',
    },
    xterm = {
        white = '#eeeeee',
        grey = '#808080',
    },
}
colors = {
    black = {
        darkest = "#0f111b",
        darker = "#141620",
        dark = "#191b25",
        medium = "#202330",
        normal = "#262834",
    },

    grey = {
        dull0 = "#494d5b",
        dull1 = "#535766",
        dull2 = "#5d606e",
        dull3 = "#676977",

        lgray0 = "#7e808b",
        lgray1 = "#858793",
        lgray2 = "#8c8e99",

        hl0 = "#9496a2",
        hl1 = "#a09fac",
        hl2 = "#ababbc",

        gy0 = "#abb2bf",
        gy1 = "#bcc0ca",
        gy2 = "#ccd0db",
        gy3 = "#dde1ec",
        gy4 = "#eaedef",

        gyn0 = "#708391", -- New gray for better contrast against the bg
        gyn1 = "#8096a6",
        gyn2 = "#90adb7",

        gyg0 = "#acc0cd", -- Green-inspired grays
        gyg1 = "#bec7cf",
        gyg2 = "#cdd8df",
        gyg3 = "#dae3e9",

        ligy0 = "#526072", -- Blended g2 & gy2
        ligy1 = "#5a6675", -- Slightly brigther than above
        ligy2 = "#59687b", -- Similar blend of g3 & gy3
        ligy3 = "#637083", -- Closest match to gy4

        -- New pure yellow-green gray blends
        ygg0 = "#829da8", -- Blend of y2 & gy2
        ygg1 = "#9bbdc8", -- Blend of y1 & gy1, softer transition
        ygg2 = "#addce5", -- Blend of y0 & gy1, very pale green
    },

    white = {
        base = "#FFFFFF",   -- Standard RGB representation

        dim = "#F7F7F7",    -- Diminished brightness but retained sufficient contrast for reading comfortably
        bright = "#F2F8FC", -- Brightens the standard white for optimal visibility against dark themes
        soft = "#F5F5F5",   -- Further reduction in contrast compared to 'base' (still legible against most backgrounds)o

    },

    blue = {
        base = "#30b0fe",
        b0 = "#5e81ac", -- Modified name to 'b0' from 'blue1'
        b1 = "#81a1c1", -- Modified name to 'b1' from 'blue2'
        b2 = "#88c0d0", -- Modified name to 'b2' from 'blue3'
        b4 = "#d1f2f7", -- Added
    },

    cyan = {
        base = "#8fbcbb",
        bright = "#9fc6c5",
        dim = "#80b3b2",
    },

    -- Using abbreviations like 'r'/'o'/'y'/'g'/'m' followed by number for readability
    red = {
        base = "#bf616a",
        bright = "#c5727a",
        soft = "#eebebe",
        dim = "#b74e58",
    },

    orange = {
        base = "#d08770",
        bright = "#d79784",
        soft = "#edc0ae",
        dim = "#cb775d",
    },

    yellow = {
        base = "#ebcb8b",
        bright = "#efd49f",
        enchanted = "#d7bd72",
        soft = "#f4eed8",
        dim = "#ddb36a",
    },

    green = {
        base = "#a3be8c",
        bright = "#aecaa3",
        soft = "#cfeab7",
        dim = "#9ba77c",
    },

    magenta = {
        base = "#b48ead",
        bright = "#bfaabd",
        soft = "#dcc5dd",
        dim = "#af8ea4",
    }
}
-- `white0` is used as the default fg, and has a blue tint.
-- Reduce that amount of tint.
if O.reduced_blue then palette.white0 = '#C0C8D8' end

return colors
