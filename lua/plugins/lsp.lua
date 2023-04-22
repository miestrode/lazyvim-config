return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "pyright",
                "black",
                "blackd-client",
            },
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "plugins.extras.lang.java" },
    { import = "plugins.extras.lang.rust" },
}
