return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "typst" })
            end
        end,
    },
    {
        "mason.nvim",
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            vim.list_extend(opts.ensure_installed, { "tinymist" })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                tinymist = {
                    single_file_support = true,
                    root_dir = function()
                        return vim.fn.getcwd()
                    end,
                    settings = { exportPdf = "never" },
                },
            },
        },
    },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = { typst = { "typstyle" } },
        },
    },
}
