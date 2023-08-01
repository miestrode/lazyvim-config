return {
    { "BeneCollyridam/futhark-vim" },
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                futhark_lsp = { settings = {} },
            },
        },
    },
}
