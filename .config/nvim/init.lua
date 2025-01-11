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
require('core.configs.clangd')

require('core.configs.deepwhite')
require('core.configs.lualine')
require('core.configs.evil_lualine')
require('core.configs.bufferline')
require('core.configs.devicons')
require('core.configs.cmdline')
require('core.configs.astrotheme')
-- require('core.configs.better_vimui')
require("mason").setup()

-- vim.cmd('colorscheme monokai-nightasty')
-- vim.o.background = 'light'
vim.cmd('colorscheme cs')


vim.o.guifont = "Ubuntu Mono derivative Powerline"

-- Optimize loading lua modules and startup time
vim.loader.enable()

-- Fixes signcolumn color mismatch
vim.cmd([[highlight SignColumn guibg=Normal]])

