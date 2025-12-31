require('core.plugins')
require('core.options')
require('core.mappings')
require('core.commands')

-- Plugin configs
require('mason').setup()
require('core.configs.nvim-cmp')
require('core.configs.iron')
require('core.configs.toggle-term')
require('core.configs.dressing')
require('core.configs.notify')
require('core.configs.evil_lualine')
require('core.configs.bufferline')
require('core.configs.devicons')
require('core.configs.treesitter')
require('core.configs.whichkey')
require('core.configs.telescope')
require('core.configs.autopairs')
require('core.configs.alpha')
require("autoclose").setup()
require("ibl").setup()


vim.o.background = "dark"
vim.cmd('colorscheme catppuccin')

vim.loader.enable()

vim.lsp.enable('luals')
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.lsp.enable('ruff')

