return {
    -- Enable inlay hints
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = true },
        },
    },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.java" },
    { import = "lazyvim.plugins.extras.lang.python" },
    { import = "lazyvim.plugins.extras.lang.yaml" },
    { import = "lazyvim.plugins.extras.dap.core" },
    { import = "lazyvim.plugins.extras.dap.nlua" },
    { import = "lazyvim.plugins.extras.formatting.black" },
    -- Local language support
    { import = "plugins.extras.lang.rust" },
    { import = "plugins.extras.lang.typst" },
    { import = "plugins.extras.lang.markdown" },
}
