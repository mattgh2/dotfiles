-- 24-bit color
vim.opt.termguicolors = true

-- Some setting changes
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.swapfile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.clipboard = 'unnamedplus'
vim.opt.scrolloff = 8

vim.opt.updatetime = 50

-- Enable persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath('config') .. '/undo//'

-- Transparent bg

vim.g.mapleader = " "

-- Auto save
vim.g.auto_save = 1
-- Line nums
vim.o.number = true
vim.o.relativenumber = true

-- Set Vimtex compiler options
vim.g.vimtex_compiler_latexmk = {
    executable = 'latexmk',
    options = {
        '-pdf',
        '-shell-escape',
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
    },
}
vim.g.vimtex_log_verbosity = 0
vim.g.vimtex_quickfix_mode = 0

vim.g.signcolumn = true
vim.o.winblend = 20
vim.o.pumblend = 20

vim.o.timeoutlen = 50  -- Set timeoutlen to 200ms for faster key mappings
vim.o.ttyfast = true

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    globals = {'vim'},
    update_in_insert = false,
})

