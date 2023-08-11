return {
    {
        "kaarmu/typst.vim",
        ft = "typst",
        lazy = false,
    },
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, { "typst_lsp" })
        end,
    },
    {
        "mhartington/formatter.nvim",
        opts = {
            filetype = {
                typ = {
                    function()
                        return {
                            exe = "typstfmt",
                            args = {},
                            stdin = true,
                        }
                    end,
                },
            },
        },
    },
}
