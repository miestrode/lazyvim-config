local MAX_LINE_LENGTH = 120

return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pylsp = {
                    settings = {
                        pylsp = {
                            plugins = {
                                pycodestyle = { maxLineLength = MAX_LINE_LENGTH },
                                black = { line_length = MAX_LINE_LENGTH },
                            },
                        },
                    },
                },
            },
        },
    },
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, { "debugpy", "pyflakes" })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function(_, opts)
            require("mason-lspconfig").setup(opts)

            vim.cmd("PylspInstall python-lsp-black pyls-isort pylsp-rope")
        end,
    },
    {
        "mfussenegger/nvim-dap",
        optional = true,
        dependencies = {
            "mfussenegger/nvim-dap-python",
            keys = {
                {
                    "<leader>dPt",
                    function()
                        require("dap-python").test_method()
                    end,
                    desc = "Debug Method",
                },
                {
                    "<leader>dPc",
                    function()
                        require("dap-python").test_class()
                    end,
                    desc = "Debug Class",
                },
            },
            config = function()
                local path = require("mason-registry").get_package("debugpy"):get_install_path()
                require("dap-python").setup(path .. "/venv/bin/python")
            end,
        },
    },
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
        config = true,
        opts = {
            anaconda_path = "$MAMBA_ROOT_PREFIX/envs",
        },
        -- This can be used to access the VenvSelect command, without a keybinding, however I currently need not do that
        -- event = "VeryLazy",
        keys = {
            {
                "<leader>cv",
                "<cmd>:VenvSelect<cr>",
                desc = "Select VirtualEnv",
            },
        },
    },
}
