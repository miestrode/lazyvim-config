return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = { ensure_installed = { "typst" } },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = { ensure_installed = { "tinymist" } },
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
