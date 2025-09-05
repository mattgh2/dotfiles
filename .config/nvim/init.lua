require('core.plugins')
require('core.options')
require('core.mappings')
require('core.commands')


-- Plugin configs
require('core.configs.nvim-cmp')
require('core.configs.iron')
require('core.configs.toggle-term')
require('core.configs.dressing')
require('core.configs.notify')
require('core.configs.null-ls')
require('core.configs.lualine')
require('core.configs.evil_lualine')
require('core.configs.bufferline')
require('core.configs.devicons')
require('core.configs.cmdline')
require('core.configs.astrotheme')
--require('core.configs.auto-tag')

require('mason').setup()

vim.o.background = "dark"
-- vim.cmd('colorscheme evergarden-winter')
vim.cmd('colorscheme catppuccin')


vim.loader.enable()



vim.lsp.enable('luals')
vim.lsp.enable('pylsp')
vim.lsp.enable('clangd')




