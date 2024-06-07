-- The Nord palette: https://www.nordtheme.com/.
-- This file has a bunch of added colors.

local O = require('imperialIllumination.config').options
local colors = {
    fruit = {
        elvenberry = "#7A3A58",
        crystalmelon = "#65C3C5",
        stardustapple = "#B14FB6",
        phantomgrape = "#542A6B",
        luminousplum = "#8E3C7F",
        mysticmango = "#FFAD6B",
        galaxykiwi = "#4E9166",
        nebularaspberry = "#8B0038",
        etherealpeach = "#FFC299",
        spectraberry = "#554788",
        celestialbanana = "#FFEB7C",
        dreamfruit = "#6D3F8A",
        astralmelon = "#2E8568",
        mythicalcantaloupe = "#FFB084",
        frostfruit = "#5F87C7",
        quasarberry = "#4837A3",
        lunarlemon = "#FFE08A",
        cosmicfig = "#9464FF",
        enchantedberry = "#7C3E94",
        veildragonfruit = "#A14268"
    },
    light = {
        base = "#F5F5DC",
        bright = "#FFFFF0",
        soft = "#FAF0E6",
        dim = "#EEE8AA"
    },
    dark = {
        base = "#000000",
        bright = "#1C1C1C",
        soft = "#363636",
        dim = "#4F4F4F"
    },
    black = {
        darkest = "#18191b",
        darker = "#1c1d1f",
        dark = "#212326",
        medium = "#28292c",
        normal = "#303136",
        light = "#37383b",
        lighter = "#3f4043",
        lightest = "#46474a"
    },
    white = {
        lightest = "#ffffff",
        lighter = "#f0f0f0",
        light = "#e0e0e0",
        normal = "#d0d0d0",
        medium = "#c0c0c0",
        dark = "#b0b0b0",
        darker = "#a0a0a0",
        darkest = "#909090"
    },
    gray = {
        dull0 = "#5A5F6E",
        dull1 = "#646977",
        dull2 = "#6E7281",
        dull3 = "#787D8B",
        g0 = "#2E3340",
        gd0 = "#2c2f3b",
        gd1 = "#383e4d",
        g1 = "#414553",
        g2 = "#3A4155",
        g3 = "#48536F",
        g4 = "#566180",
        lgray0 = "#868B99",
        lgray1 = "#8E94A4",
        lgray2 = "#969DAC",
        hl0 = "#A0A5B7",
        hl1 = "#AEB3CD",
        hl2 = "#BEC1DB",
        gy0 = "#B5B9CB",
        gy1 = "#C8CADA",
        gy2 = "#DDDDED",
        gy3 = "#EEEFFF",
        gy4 = "#FEFFFF",
        gyn0 = "#748BA8",
        gyn1 = "#859CB7",
        gyn2 = "#94ADC5",
        gyg0 = "#ADBACD",
        gyg1 = "#BDCEDE",
        gyg2 = "#CEDFEF",
        gyg3 = "#DEFEF1",
        ligy0 = "#586780",
        ligy1 = "#616F86",
        ligy2 = "#697991",
        ligy3 = "#71849D",
        ygg0 = "#8EA3B3",
        ygg1 = "#A0B8C8",
        ygg2 = "#B4CEDC",
        ygg3 = "#C8E3EB",
        hygg0 = "#95ABC1",
        hygg1 = "#A6BCD2",
        hygg2 = "#B9D1E1",
        hygg3 = "#CDF6F3"
    },
    blue = {
        base = "#3b5d7d",
        bright = "#5282a6",
        soft = "#6ba6cf",
        dim = "#2f4e6a",
        luminous = "#003a85",
        phantom = "#364e7b",
        abyss = "#00216d"
    },
cyan = {
    base = "#5A8D8C",
    bright = "#7BBEBD",
    soft = "#A2E1E0",
    dim = "#468483",
    glacier = "#008775",
    oceanic = "#007067",
    celestial = "#006056"
},
    red = {
    base = "#D86F7A",
    bright = "#F08C95",
    soft = "#FFA8B1",
    dim = "#B85C68",
    volcano = "#FF6666",
    dragonfruit = "#FF8080",
    mars = "#B24C55"
},
orange = {
    base = "#E79E70",
    bright = "#FFBEA6",
    soft = "#FFDABF",
    dim = "#D8A27A",
    emberglow = "#E3866F",
    pumpkin = "#FFA672",
    tawny = "#C78556"
},
yellow = {
    base = "#C4A06B",
    bright = "#E8BF8A",
    enchanted = "#F4D8A2",
    soft = "#F1CFA5",
    honey = "#D6A763",
    goldenrod = "#F0C378",
    daffodil = "#E0B755"
},
green = {
    base = "#6BA46B",
    bright = "#8BBC8B",
    soft = "#A8D5A8",
    dim = "#567A56",
    emerald = "#00A550",
    moss = "#3B7A3B",
    sage = "#689E68"
},
    magenta = {
        base = "#855b85",
        bright = "#a278a2",
        soft = "#d3a5d3",
        dim = "#825182",
        dragonfruit = "#ee0064",
        cosmos = "#a8003e",
        fairyfloss = "#c960a6"
    },
    purple = {
        base = "#674f6d",
        bright = "#87699b",
        soft = "#b898cf",
        dim = "#6f5875",
        mystic = "#5f2d7f",
        nightshade = "#6c5d77",
        royalty = "#8e7b93"
    },
    teal = {
        base = "#385c5e",
        bright = "#508285",
        soft = "#6db1b3",
        dim = "#325a5c",
        lagoon = "#005b51",
        peacock = "#006c60",
        nebula = "#007b78"
    },
    brown = {
        base = "#6a503a",
        bright = "#88694d",
        soft = "#b39e82",
        dim = "#694f37",
        cedar = "#6e412b",
        walnut = "#543d30",
        burntsienna = "#8c6041"
    },
    pink = {
        base = "#8d6075",
        bright = "#ae7b8e",
        soft = "#dfadc5",
        dim = "#8e5971",
        bubblegum = "#e65380",
        wildberry = "#bb0055",
        blossom = "#df98b3"
    }
}
-- `white0` is used as the default fg, and has a blue tint.
-- Reduce that amount of tint.
if O.reduced_blue then colors.blue.base = '#C0C8D8' end

return colors
