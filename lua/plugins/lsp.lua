return {
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            automatic_installation = true,
        },
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
        },
        opts = {
            automatic_installation = true,
        },
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            automatic_installation = true,
        },
    },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.dap.core" },
    { import = "plugins.extras.lang.java" },
    { import = "plugins.extras.lang.rust" },
    { import = "plugins.extras.lang.python" },
    { import = "plugins.extras.lang.lua" },
}
