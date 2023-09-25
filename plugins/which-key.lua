return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        config = function()
            require("which-key").setup {
                icons = {
                    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
                    separator = "➜", -- symbol used between a key and it's label
                    group = "", -- symbol prepended to a group
                },
            }
            -- stylua: ignore
            require("which-key").register {
                ["<leader>b"] = { name = "󰣆 Buffer" },
                ["<leader>bc"] = { function() require("nvchad.tabufline").close_buffer() end, "Close buffer" },
                ["<leader>bx"] = { function() require("nvchad.tabufline").closeAllBufs() end, "Close all buffers" },
                ["<leader>bh"] = { function() require("nvchad.tabufline").move_buf(-1) end, "Move buffer left" },
                ["<leader>bl"] = { function() require("nvchad.tabufline").move_buf(1) end, "Move buffer right" },
                ["<leader>b1"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[1]) end, "Go to Buffer 1" },
                ["<leader>b2"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[2]) end, "Go to Buffer 2" },
                ["<leader>b3"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[3]) end, "Go to Buffer 3" },
                ["<leader>b4"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[4]) end, "Go to Buffer 4" },
                ["<leader>b5"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[5]) end, "Go to Buffer 5" },
                ["<leader>b6"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[6]) end, "Go to Buffer 6" },
                ["<leader>b7"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[7]) end, "Go to Buffer 7" },
                ["<leader>b8"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[8]) end, "Go to Buffer 8" },
                ["<leader>b9"] = { function() vim.api.nvim_set_current_buf(vim.t.bufs[9]) end, "Go to Buffer 9" },

                ["<leader>c"] = { name = " Code" },
                ["<leader>cf"] = { function() vim.lsp.buf.format { async = true } end, "LSP formatting" },
                -- ["<leader>cs"] = { "<cmd>Spectre<cr>", "Spectre" },
                ["<leader>cg"] = { name = " Go" },
                ["<leader>cgr"] = { "<cmd>GoRun<cr>", "GoRun" },
                ["<leader>cr"] = { name = " Rust" },
                ["<leader>crr"] = { "<cmd>RustRun<cr>", "RustRun" },
                -- ["<leader>co"] = { "<cmd>AerialToggle!<CR>", "Symbols Outline" },
                -- ["<leader>cru"] = {
                --     function()
                --         require("crates").upgrade_all_crates()
                --     end,
                --     "Update all crates in the buffer (Rust)",
                -- },

                ["<leader>f"] = { name = " Find" },

                ["<leader>fs"] = {
                    function()
                        local aerial_avail, _ = pcall(require, "aerial")
                        if aerial_avail then
                            require("telescope").extensions.aerial.aerial()
                        else
                            require("telescope.builtin").lsp_document_symbols()
                        end
                    end,
                    "Search symbols",
                },

                ["<leader>g"] = { name = " Git" },
                ["<leader>gg"] = {
                    function ()
                        local term = require("nvterm.terminal")
                        term.send("lazygit", "float")
                        term.toggle("float")
                        term.toggle("float")
                    end,
                    "LazyGit"
                },

                ["<leader>l"] = { name = " LSP" },
                ["<leader>ld"] = { function() require("telescope.builtin").diagnostics() end, "Telescope Search Diagnostics" },

                ["<leader>p"] = { name = " packages" },
                ["<leader>pl"] = { "<cmd>Lazy<cr>", "Lazy" },
                ["<leader>pm"] = { "<cmd>Mason<cr>", "Mason" },

                ["<leader>t"] = { name = " Terminal" },
                ["<leader>tf"] = { function () require("nvterm.terminal").toggle "float" end, "Terminal Float" },
                ["<leader>th"] = { function () require("nvterm.terminal").toggle "horizontal" end, "Terminal Horizontal" },
                ["<leader>tv"] = { function () require("nvterm.terminal").toggle "vertical" end, "Terminal Vertical" },

                ["<leader>u"] = { name = " UI" },
                ["<leader>un"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },
                ["<leader>uh"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },
                ["<leader>ut"] = { function () require("base46").toggle_theme() end, "Toggle themes(light/dark)"},
            }
        end,
    },
}
