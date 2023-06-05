local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- Bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
    spec = {
        -- Add LazyVim and import its plugins
        { "LazyVim/LazyVim", import = "lazyvim.plugins" },
<<<<<<< HEAD
=======
        { import = "lazyvim.plugins.extras.util.project" },
>>>>>>> 34ff364 (Addded support for Python, Typst and others and did other things)
        { import = "plugins" },
    },
    defaults = {
        -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
        -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
        lazy = false,
        -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
        -- have outdated releases, which may break your Neovim install.
        version = false, -- always use the latest git commit
    },
<<<<<<< HEAD
    install = { colorscheme = { "tokyonight", "habamax" } },
=======
    install = { colorscheme = { "tokyonight" } },
>>>>>>> 34ff364 (Addded support for Python, Typst and others and did other things)
    checker = { enabled = true }, -- Automatically check for plugin updates
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
<<<<<<< HEAD
=======
                "catpuccin",
>>>>>>> 34ff364 (Addded support for Python, Typst and others and did other things)
            },
        },
    },
})
