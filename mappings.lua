local M = {}
-- local sections = {
--   f = { desc = get_icon("Search", 1, true) .. "Find" },
--   p = { desc = get_icon("Package", 1, true) .. "Packages" },
--   l = { desc = get_icon("ActiveLSP", 1, true) .. "LSP" },
--   u = { desc = get_icon("Window", 1, true) .. "UI/UX" },
--   b = { desc = get_icon("Tab", 1, true) .. "Buffers" },
--   bs = { desc = get_icon("Sort", 1, true) .. "Sort Buffers" },
--   d = { desc = get_icon("Debugger", 1, true) .. "Debugger" },
--   S = { desc = get_icon("Session", 1, true) .. "Session" },
--   t = { desc = get_icon("Terminal", 1, true) .. "Terminal" },
--   g = { desc = get_icon("Git", 1, true) .. "Git" },
-- }

M.disabled = {
    n = {
        ["<leader>b"] = "",
        ["<leader>h"] = "",
        ["<leader>n"] = "",
        ["<leader>v"] = "",
        ["<leader>x"] = "",
        -- ["<leader>c"] = "",
        -- ["<leader>f"] = "",
        -- ["<leader>g"] = "",
        -- ["<leader>p"] = "",
        -- ["<leader>q"] = "",
        ["<leader>ra"] = "",
        ["<leader>rn"] = "",
        ["<leader>pt"] = "",
        -- ["<leader>t"] = "",
        -- ["<leader>x"] = "",
    },
}

M.general = {
    n = {
        ["<A-j>"] = { "<cmd>m .+1<cr>==", "Move down" },
        ["<A-k>"] = { "<cmd>m .-2<cr>==", "Move up" },

        ["<leader>ca"] = {
            function()
                require("nvchad.renamer").open()
            end,
            "LSP rename",
        },
        ["<leader>tp"] = { "<cmd> Telescope terms <CR>", "Pick hidden term" },
    },
    i = {
        ["<A-j>"] = { "<esc>:m .+1<cr>==gi", "Move down" },
        ["<A-k>"] = { "<esc>:m .-2<cr>==gi", "Move up" },
    },
    v = {
        ["<A-j>"] = { ":m '>+1<cr>gv-gv", "Move down" },
        ["<A-k>"] = { ":m '<-2<cr>gv-gv", "Move up" },
    },
}

M.abc = {
    n = {
        -- ["<leader>b"] = { desc = "+Buffers" },
        --
        -- ["<leader>c"] = { desc = "+Code" },

        -- ["<leader>d"] = { desc = "+Debugger" },
        -- ["<leader>f"] = { desc = "+Find" },
        -- ["<leader>g"] = { desc = "+Git" },
        -- ["<leader>s"] = { desc = "+Session" },
        -- ["<leader>t"] = { desc = "+Terminal" },
        -- ["<leader>u"] = { desc = "+UI" },
        -- ["<leader>w"] = { desc = "+Windows" },

        ["<leader>q"] = { "<cmd>qa<cr>", "Quit" },
        ["<C-s>"] = { "<cmd>wa<cr>", "Save" },
    },
    i = {
        ["<C-s>"] = { "<esc><cmd>wa<cr>==gi", "Save" },
    },
    v = {
        ["<leader>q"] = { "<esc><cmd>qa<cr>", "Quit" },
        ["<C-s>"] = { "<esc><cmd>wa<cr>gv-gv", "Save" },
    },
}

M.crates = {
    n = {
        -- stylua: ignore
        ["<leader>cru"] = { function() require("crates").upgrade_all_crates() end, "Update all crates in the buffer" },
    },
}

M.aerial = {
    n = {
        -- ["<leader>co"] = { "<cmd>AerialToggle!<CR>", "Symbols Outline" },
        ["<leader>co"] = { "<cmd>AerialToggle<CR>", "Symbols Outline" },
    },
}

return M
