require('core.plugins')
require('core.options')
require('core.mappings')
require('core.commands')

-- Plugin configs
require('core.configs.lsp')
require('core.configs.nvim-cmp')

require('core.configs.toggle-term')
require('core.configs.dressing')
require('core.configs.notify')
require('core.configs.clangd')

-- require('core.configs.deepwhite')
require('core.configs.lualine')
require('core.configs.evil_lualine')
require('core.configs.bufferline')
require('core.configs.devicons')
require('core.configs.cmdline')
-- require('core.configs.astrotheme')
require('core.configs.auto-tag')

require('mason').setup()

vim.o.background = "dark"
vim.cmd('colorscheme cascadia')

-- require("neomodern").setup({
--     theme = "iceclimber",
--     plugin = {
--         lualine = {
--
--         },
--     },
-- })

-- require("neomodern").load()

vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#0f111b", bg = "NONE" }) -- Normal text
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#7aa2f7", bold = true }) -- Matched text
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#bb9af7", bold = true }) -- Fuzzy match
vim.api.nvim_set_hl(0, "CmpItemKind", { fg = "#e0af68", bg = "NONE" }) -- Item kind
vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#9aa5ce", bg = "NONE" }) -- Menu text

-- vim.cmd([[highlight Normal guibg=#000087]])
-- vim.cmd([[highlight Normal guibg=#0f111b]])
vim.cmd([[highlight NormalFloat guibg=Normal]])
vim.cmd([[highlight FloatBorder guibg=Normal]])
vim.cmd([[highlight LineNr guibg=Normal]])
-- vim.cmd([[highlight LineNr guibg=Normal, guifg=#5fffff]])
-- vim.cmd([[highlight MatchParen guibg=bold, guifg=#ff0000]])
vim.cmd([[highlight NonText guifg=Normal guibg=NONE]])

vim.loader.enable() 





