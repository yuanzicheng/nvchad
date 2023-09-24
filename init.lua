vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = false

local hls = {
    FlashBackdrop = { fg = "#545c7e" },
    FlashCurrent = { bg = "#ff966c", fg = "#1b1d2b" },
    FlashLabel = { bg = "#ff007c", bold = true, fg = "#c8d3f5" },
    FlashMatch = { bg = "#3e68d7", fg = "#c8d3f5" },
}
for hl_group, hl in pairs(hls) do
    hl.default = true
    vim.api.nvim_set_hl(0, hl_group, hl)
end
