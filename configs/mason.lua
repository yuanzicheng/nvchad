local options = {
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

        "prettier",
        "typescript-language-server",
        "stylelint",
        "css-lsp",

        "json-lsp",
        "yaml-language-server",
        "taplo",
        "docker-langserver",
    }, -- not an option from mason.nvim
}

return options
