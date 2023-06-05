return 
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
                "typst-lsp",
            },
            automatic_installation = true,
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "plugins.extras.lang.java" },
    { import = "plugins.extras.lang.rust" },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
        },
        opts = {
            ensure_installed = { "stylua", "black" },
            automatic_installation = true,
            automatic_setup = true,
            handlers = {},
        },
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            ensure_installed = { "python" },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                lua_ls = {
                    settings = {
                        Lua = {
                            runtime = {
                                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                                version = "LuaJIT",
                            },
                            diagnostics = {
                                -- Get the language server to recognize the `vim` global
                                globals = { "vim" },
                            },
                            workspace = {
                                -- Make the server aware of Neovim runtime files
                                library = vim.api.nvim_get_runtime_file("", true),
                            },
                            -- Do not send telemetry data containing a randomized but unique identifier
                            telemetry = {
                                enable = false,
                            },
                        },
                    },
                },
            },
        },
    },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.dap.core" },
    { import = "plugins.extras.lang.java" },
    { import = "plugins.extras.lang.rust" },
    { import = "plugins.extras.lang.python" },
}
