return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "black",
                "blackd-client",
            },
        },
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        opts = function(_, opts)
            opts.sources = vim.list_extend(opts.sources, {
                require("null-ls").builtins.formatting.isort,
                {
                    name = "blackd",
                    method = require("null-ls").methods.FORMATTING,
                    filetypes = { "python" },
                    generator = require("null-ls.helpers").formatter_factory({
                        command = "blackd-client",
                        to_stdin = true,
                    }),
                },
            })

            return opts
        end,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pylsp = {
                    plugins = {
                        rope_autoimport = { enabled = true },
                        pycodestyle = { maxLineLength = 100 },
                    },
                },
            },
        },
    },
    {
        "mfussenegger/nvim-dap",
        config = function(_, opts)
            local dap = require("dap")

            dap.adapters.python = function(cb, config)
                if config.request == "attach" then
                    ---@diagnostic disable-next-line: undefined-field
                    local port = (config.connect or config).port
                    ---@diagnostic disable-next-line: undefined-field
                    local host = (config.connect or config).host or "127.0.0.1"
                    cb({
                        type = "server",
                        port = assert(port, "`connect.port` is required for a python `attach` configuration"),
                        host = host,
                        options = {
                            source_filetype = "python",
                        },
                    })
                else
                    cb({
                        type = "executable",
                        command = "path/to/virtualenvs/debugpy/bin/python",
                        args = { "-m", "debugpy.adapter" },
                        options = {
                            source_filetype = "python",
                        },
                    })
                end
            end
        end,
    },
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
        config = true,
        -- This can be used to access the VenvSelect command, without a keybinding, however I currently need not do that
        -- event = "VeryLazy",
        keys = {
            {
                "<leader>cv",
                "<cmd>:VenvSelect<cr>",
                desc = "Select venv",
            },
        },
    },
}
