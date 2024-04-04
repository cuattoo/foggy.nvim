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
colors = {
    black = {
        darkest = "#050505",  -- Darkest shade, almost pure black
        darker = "#0a0a0a",   -- Slightly lighter than the darkest shade
        dark = "#111111",     -- Dark shade with a hint of warmth
        medium = "#1c1c1c",   -- Medium shade, balanced between darkness and visibility
        normal = "#262626",   -- Standard black, slightly lighter for readability
        light = "#303231",    -- Lighter shade, providing contrast to medium black
        lighter = "#404041",  -- Even lighter shade, aligning with the normal shade
        lightest = "#505051", -- Lightest shade, adding brightness to the design
    },

    white = {
        lightest = "#FFFFFF", -- Lightest shade, pure white
        lighter = "#F5F5F5",  -- Slightly lighter shade
        light = "#F0F0F0",    -- Light shade
        normal = "#E0E0E0",   -- Standard white shade
        dark = "#D5D5D5",     -- Slightly lighter dark white shade
        darker = "#CCCCCC",   -- Even lighter dark white shade
        darkest = "#BFBFBF",  -- Darkest white shade
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
        gd0 = "#2c2f3b",
        gd1 = "#383e4d",
        -- Polar Night - Enhanced grey spectrum for improved depth and contrast
        g1 = "#414553", -- Most profound and intense shade; establishes the bottom boundary of the Polar Night section
        g2 = "#3A4155", -- Gradual darkening creates a sense of distance between layers
        g3 = "#48536F", -- Continuation of the darkening trend, widening the overall range
        g4 = "#566180", -- Broaded range to offer maximum intensity before transitioning into Lavender Snow

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

    blue = {
        base = "#4da9ff",
        bright = "#5ec7ff", -- Brighter shade of blue
        soft = "#7fbfe7",   -- Softer shade of blue
        dim = "#1d87c2",    -- Dimmer shade of blue
        b0 = "#4a8cc0",     -- Adjusted lighter shade of blue
        b1 = "#68a6cc",     -- Adjusted intermediate shade of blue
        b2 = "#86c0d9",     -- Adjusted brighter shade of blue
        b4 = "#b8e6f3",     -- Adjusted brightest shade of blue
    },

    cyan = {
        base = "#8fbcbb",
        bright = "#9fc6c5",
        soft = "#b4cdd0",
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
