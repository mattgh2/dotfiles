require('core.options')
require('core.plugins')
require('core.mappings')
require('core.commands')
-- Plugin configs
require('core.configs.lsp')
require('core.configs.nvim-cmp')
require('core.configs.toggle-term')
require('core.configs.dressing')
require('core.configs.notify')
require('core.configs.noice')
require("mason").setup()

-- Color Scheme
vim.cmd('colorscheme gruvbox8')

-- Airline Theme
vim.g.airline_theme = 'base16_gruvbox_dark_hard'
vim.g.airline_powerline_fonts = 1



-- Optimize loading lua modules and startup time
vim.loader.enable()

-- Fixes signcolumn color mismatch
vim.cmd([[highlight SignColumn guibg=Normal]])

