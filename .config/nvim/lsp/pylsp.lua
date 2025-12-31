local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

return {
    cmd = {'pylsp'},
    filetypes = {'python'},
    settings = {
        pylsp = {
            plugins = {
                -- black = { enabled = true },
                -- pyflakes = { enabled = true },
                -- pycodestyle = {
                --     ignore = { 'E501' },
                -- },

            },
        },
    },
    capabilities = capabilities
}
