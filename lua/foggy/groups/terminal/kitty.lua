local C = require("foggy.colors")

local fg_color = string.format("%06x", tonumber(vim.opt.fg:hex()))
local cmd = string.format([[kitty @ set-background "#%s"]], fg_color)
vim.fn.jobstart({ "sh", "-c", cmd }, { detach = true })
