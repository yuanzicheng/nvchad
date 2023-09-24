return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",

                "gopls",
                "gofumpt",
                "goimports-reviser",
                "golangci-lint",
                "golangci-lint-langserver",
                "golines",
                "gomodifytags",
                "goimports",
                "delve",

                "codelldb",
                "rust-analyzer",
                "rustfmt",

                "pyright",
                "black",

                "html-lsp",

                "prettier",
                "typescript-language-server",
                "stylelint",
                "css-lsp",

                "json-lsp",
                "yaml-language-server",
                "taplo",
                "dockerfile-language-server",
            },
        },
    },
}
