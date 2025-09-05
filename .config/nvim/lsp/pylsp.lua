local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

return {
    cmd = {'pylsp'},
    filetypes = {'python'},
    settings = {
        pylsp = {
            plugins = {
                pyflakes = { enabled = true },
                ruff = { enabled = true },  -- optional
                -- pycodestyle = { enabled = true },
                -- mccabe = { enabled = true },
                -- yapf = { enabled = false },
            },
        },
    },
    capabilities = capabilities



}
