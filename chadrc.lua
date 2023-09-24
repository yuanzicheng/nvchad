---@type ChadrcConfig
local M = {}

M.ui = {
    theme = "onedark",
    tabufline = {
        show_numbers = true,
        enabled = true,
        lazyload = true,
    },
    nvdash = {
        load_on_startup = true,
    },
    telescope = { style = "bordered" }, -- borderless / bordered
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
