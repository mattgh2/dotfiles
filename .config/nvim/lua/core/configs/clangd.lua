require('lspconfig').clangd.setup {
    init_options = {
        fallbackFlags = {'--std=c++23'}
    }

}
