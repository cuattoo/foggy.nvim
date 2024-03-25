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

    gray = {
        -- #region Dark Theme Colors

        -- Improved Dull Grays
        -- Increased contrast and uniqueness between each step to provide a more sophisticated look without overwhelming the user interface
        dull0 = "#5A5F6E", -- Original starting point for all dull grays; slightly dimmed compared to previous version
        dull1 = "#646977", -- Slight increase in value for the next dull gray; creates a natural gradient
        dull2 = "#6E7281", -- Another small adjustment to follow our new gradient trend
        dull3 = "#787D8B", -- The final entry before making another major change; serves as an anchor point for future adjustments

        -- Enhanced version of g0 (formerly known as bg) with a minor tweak to align it with the updated dull gray scheme
        g0 = "#2E3340", -- Previously named 'bg', redefined here after updating its relation to dull0

        -- Polar Night - Enhanced grey spectrum for improved depth and contrast
        g1 = "#414553", -- Most profound and intense shade; establishes the bottom boundary of the Polar Night section
        g2 = "#3A4155", -- Gradual darkening creates a sense of distance between layers
        g3 = "#48536F", -- Continuation of the darkening trend, widening the overall range
        g4 = "#566180", -- Broaded range to offer maximum intensity before transitioning into Lavender Snow
        gd0 = "#2c2f3b",
        gd1 = "#383e4d",

        -- Light Gray Variants for improving visibility
        -- Adjustment of existing color codes for light grayscale, adding an extra layer of perceived brightness
        lgray0 = "#868B99", -- First addition to the light gray series; provides good balance between midrange whites and darker grays
        lgray1 = "#8E94A4", -- Small increment to match our desired brightness standardization pattern
        lgray2 = "#969DAC", -- Last entry within this group before venturing into greys reserved for specific purposes

        -- Highlight Shades for drawing attention
        -- Reduces opacity to 60% while maintaining sufficient contrast to stand out from regular content
        hl0 = "#A0A5B7",
        hl1 = "#AEB3CD",
        hl2 = "#BEC1DB",

        -- Grey Scales Specifically Designed for use in Light Interfaces
        -- Smooth transitions from one color to another across multiple entries, targeting areas like status bars or panels
        gy0 = "#B5B9CB",
        gy1 = "#C8CADA",
        gy2 = "#DDDDED",
        gy3 = "#EEEFFF",
        gy4 = "#FEFFFF", -- Represents pure white space, allowing us to customize panel appearance further if needed

        -- Yellow Green Accent - Modified Gradients for Blue and Green
        -- Adaptation of existing gradients to better fit within our updated color scheme, focusing particularly on blues and greens
        gyn0 = "#748BA8",
        gyn1 = "#859CB7",
        gyn2 = "#94ADC5",

        gyg0 = "#ADBACD",
        gyg1 = "#BDCEDE",
        gyg2 = "#CEDFEF",
        gyg3 = "#DEFEF1",

        -- Lower Contrast Yellow-Green Shades for Text and Comments
        -- Toned down versions intended for use primarily within text elements such as comments and variable names
        ligy0 = "#586780",
        ligy1 = "#616F86",
        ligy2 = "#697991",
        ligy3 = "#71849D",

        -- Brighter Yellow-Greens for Identifiers and Functions
        -- Higher saturation options that will be especially visible when highlighting key programming constructs
        ygg0 = "#8EA3B3",
        ygg1 = "#A0B8C8",
        ygg2 = "#B4CEDC",
        ygg3 = "#C8E3EB",

        -- Additional Yellow-Greens for High Visibility Situations
        -- More pronounced highlights that can catch users' eyes during navigation or critical operations
        hygg0 = "#95ABC1",
        hygg1 = "#A6BCD2",
        hygg2 = "#B9D1E1",
        hygg3 = "#CDF6F3",
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
    }, -- Additional colors for enhanced harmony
    -- Feel free to adjust or remove as needed
    purple = {
        base = "#9d7cd8",
        bright = "#b59be5",
        soft = "#d2c1ed",
        dim = "#8363a2",
    },

    teal = {
        base = "#4fd1c5",
        bright = "#75e0d9",
        soft = "#a9f1e3",
        dim = "#3aa292",
    },
    brown = {
        base = "#ab7967",
        bright = "#c8937b",
        soft = "#dcbca5",
        dim = "#7e5747",
    },
}
-- `white0` is used as the default fg, and has a blue tint.
-- Reduce that amount of tint.
if O.reduced_blue then palette.white0 = '#C0C8D8' end

return colors
