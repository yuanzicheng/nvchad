return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                -- web dev
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "json",

                "go",
                "gomod",
                "gosum",
                "gowork",
                "godot_resource",

                "python",

                "rust",

                "yaml",
                "toml",
            },
        },
    },
}
