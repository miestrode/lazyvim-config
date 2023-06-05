return {
    -- Add crates.nvim as a completion source to nvim-cmp
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                "Saecki/crates.nvim",
                event = { "BufRead Cargo.toml" },
                config = true,
            },
        },
        opts = function(_, opts)
            local cmp = require("cmp")
<<<<<<< HEAD
=======

>>>>>>> 34ff364 (Addded support for Python, Typst and others and did other things)
            -- The warnings don't mean much, as the function allows defaults
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
                { name = "crates" },
            }))
        end,
    },
<<<<<<< HEAD
    -- Add some useful Rust-related file formats to be installed by default on TS
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            -- The warnings don't mean much, as the function allows defaults
            vim.list_extend(opts.ensure_installed, { "ron", "rust", "toml" })
        end,
    },
    -- Install the DAP and LSP programs for Rust
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            -- The warnings don't mean much, as the function allows defaults
            vim.list_extend(opts.ensure_installed, { "codelldb", "rust-analyzer", "taplo" })
        end,
=======
    -- Install the DAP and LSP programs for Rust
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = { "codelldb", "rust-analyzer", "taplo" },
        },
>>>>>>> 34ff364 (Addded support for Python, Typst and others and did other things)
    },
    -- Setup rust-tools alongside
    {
        "neovim/nvim-lspconfig",
        dependencies = { "simrat39/rust-tools.nvim" },
        opts = {
            setup = {
                rust_analyzer = function(_, opts)
                    require("lazyvim.util").on_attach(function(client, buffer)
                        if client.name == "rust_analyzer" then
                            vim.keymap.set("n", "K", "<CMD>RustHoverActions<CR>", { buffer = buffer })
                            vim.keymap.set(
                                "n",
                                "<leader>ct",
                                "<CMD>RustDebuggables<CR>",
                                { buffer = buffer, desc = "Run Test" }
                            )
                            vim.keymap.set(
                                "n",
                                "<leader>dr",
                                "<CMD>RustDebuggables<CR>",
                                { buffer = buffer, desc = "Run" }
                            )
                        end
                    end)

                    local mason_registry = require("mason-registry")

                    -- rust-tools debugging support
                    local codelldb = mason_registry.get_package("codelldb")
                    local extension_path = codelldb:get_install_path() .. "/extension/"
                    local codelldb_path = extension_path .. "adapter/codelldb"
                    local liblldb_path = vim.fn.has("mac") == 1 and extension_path .. "lldb/lib/liblldb.dylib"
                        or extension_path .. "lldb/lib/liblldb.so"
                    local rust_tools_opts = vim.tbl_deep_extend("force", opts, {
                        dap = {
                            adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
                        },
                        tools = {
                            hover_actions = {
                                auto_focus = false,
                                border = "none",
                            },
                            inlay_hints = {
<<<<<<< HEAD
                                auto = false,
=======
                                auto = true,
>>>>>>> 34ff364 (Addded support for Python, Typst and others and did other things)
                                show_parameter_hints = true,
                            },
                        },
                        server = {
                            settings = {
                                ["rust-analyzer"] = {
                                    cargo = {
                                        features = "all",
                                    },
                                    -- Add clippy lints for Rust.
                                    checkOnSave = true,
                                    check = {
                                        command = "clippy",
                                        features = "all",
                                    },
                                    procMacro = {
                                        enable = true,
                                    },
                                },
                            },
                        },
                    })

                    require("rust-tools").setup(rust_tools_opts)

                    return true
                end,
                taplo = function(_, _)
                    local function show_documentation()
                        if vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
                            require("crates").show_popup()
                        else
                            vim.lsp.buf.hover()
                        end
                    end

                    require("lazyvim.util").on_attach(function(client, buffer)
                        if client.name == "taplo" then
                            vim.keymap.set("n", "K", show_documentation, { buffer = buffer })
                        end
                    end)
                    return false -- make sure the base implementation calls taplo.setup
                end,
            },
        },
    },
}
