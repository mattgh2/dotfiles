local lsp_zero = require('lsp-zero')

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
})
lsp_zero.set_preferences({
    sign_icons = { }
})

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    automatic_installation = true,

    -- If we need to add a custom configuration for a server, you'll need to add a property to handlers.
    -- This new property must have the same name as the language server you want to configure,
    -- and you need to assign a function to it.
    handlers = {
        -- This first function is the default handler
        -- It applies to every langauge server without a custom handler.
        function(server_name)
            local opts = { capabilities = capabilities }

            -- Some extra stuff for the lua LS.
            if server_name == "lua_ls" then
                opts.settings = {
                    Lua = {
                        diagnostics = {
                            -- Tell the language server that `vim` is a global variable
                            globals = {'vim'}
                        },
                        workspace = {
                            -- Assuming your Neovim configuration files are in `~/.config/nvim`
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        -- Do not send telemetry data containing a randomized but unique identifier
                        telemetry = {
                            enable = false,
                        },
                    }
                }

            end
            require('lspconfig')[server_name].setup(opts)
        end,

         ["ruff_lsp"] = function()
            require('lspconfig').ruff_lsp.setup({
                on_attach = function(client, bufnr)
                    print("Ruff attached to buffer " .. bufnr)
                    -- Example: attach virtual-types if needed
                    -- require('virtualtypes').on_attach(client, bufnr)
                    -- You can also set buffer-local keymaps here
                end,
                init_options = {
                    settings = {
                        -- Example: select only certain rules, or ignore some
                        args = { "--select", "F401", "--fix", "E501" }
                    }
                },
            })
        end,

        -- require('lspconfig').pylsp.setup {
        --     on_attach = require('virtualtypes').on_attach,
        -- }
        
}
})

-- Super tab configuration
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})
