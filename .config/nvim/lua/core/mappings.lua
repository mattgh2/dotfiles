-- VimTex
vim.g.UltiSnipsExpandTrigger = '<a-q>'
vim.g.UltiSnipsJumpForwardTrigger = '<a-tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<c-tab>'
vim.g.vimtex_view_method = 'zathura'
vim.g.tex_fast = "bMpr"
vim.g.auto_save = 1
vim.cmd("set conceallevel=1")
-- vim.g.vimtex_quickfix_mode = 0
-- vim.g.tex_conceal = 'abdmg'

-- Which-key stuff
local wk = require("which-key")
wk.add({
    mode = {"n"},
    { "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", desc = "Toggle Comment" },
    { "<leader>7", "<cmd>e ~/latex/template/preamble.tex<cr>", desc = "Edit Preamble" },
    { "<leader>b", group = "buffer" },
    { "<leader>bb", ":Telescope buffers<CR>", desc = "List Buffers" },
    { "<leader>bw", ":bwipeout<CR>", desc = "Wipe Buffer" },
    { "<leader>e", ":Neotree<CR>", desc = "Open NeoTree" },
    { "<leader>tv", ":ToggleTerm size=80 direction=vertical<cr>", desc = "Vertical Terminal" },
    { "<leader>f", group = "files" },
    { "<leader>ff", ":Telescope find_files<CR>", desc = "Find Files" },
    { "<leader>fp", search_files_with_custom_cwd, desc = "Find w/cwd" },
    { "<leader>fg", ":Telescope live_grep<CR>", desc = "Live Grep" },
    { "<leader>fr", ":Telescope oldfiles<CR>", desc = "Recent Files" },
    { "<leader>fc", ":Telescope colorscheme<CR>", desc = "Browse colorscheme" },
    { "<leader>q", ":VimtexCompile<CR>", desc = "Compile LaTeX with Vimtex" },
    { "<leader>r", ":Telescope notify<CR>", desc = "Check error log" },
    { "<leader>t", group = "Terminal" },
    { "<leader>tf", ":ToggleTerm direction=float<cr>", desc = "Floating Terminal" },
    { "<leader>th", ":ToggleTerm size=10 direction=horizontal<cr>", desc = "Horizontal Terminal" },
    { "<leader>yy", "<Esc><cmd>%y+<CR>", desc = "Yank all" },

    wk.add({
        mode = { "v" },
        { "<leader>/", "<Esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", desc = "Toggle Comment" },
        { "<leader>b", group = "buffer" },
        { "<leader>bb", "<Esc><cmd>Telescope buffers<CR>", desc = "List Buffers" },
        { "<leader>bw", "<Esc><cmd>bwipeout<CR>", desc = "Wipe Buffer" },
        { "<leader>f", group = "files" },
        { "<leader>ff", "<Esc><cmd>Telescope find_files<CR>", desc = "Find Files" },
        { "<leader>fg", "<Esc><cmd>Telescope live_grep<CR>", desc = "Live Grep" },
        { "<leader>fr", "<Esc><cmd>Telescope oldfiles<CR>", desc = "Recent Files" },
        { "<leader>q", ":VimtexCompile<CR>", desc = "Compile LaTeX with Vimtex" },
    })
})
-- Smart-splits
-- Create split
vim.api.nvim_set_keymap( 'n', '<Leader>v', '<cmd>vsplit<CR>', { noremap = true, silent = true })
 -- resizing
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>lua require("smart-splits").resize_left()<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>lua require("smart-splits").resize_right()<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<A-k>', '<cmd>lua require("smart-splits").resize_up()<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<A-j>', '<cmd>lua require("smart-splits").resize_down()<cr>', {silent = true})
 -- Moving between splits
vim.api.nvim_set_keymap('n', '<A-f>', '<cmd>lua require("smart-splits").move_cursor_left()<cr>', {silent = true})
vim.api.nvim_set_keymap('n', '<A-g>', '<cmd>lua require("smart-splits").move_cursor_right()<cr>', {silent = true})

-- Building Cpp
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>Build<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bd', '<cmd>DebugBuild<CR>', { noremap = true, silent = true })

-- ThePrimeagen remaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Ruff format mapping (leader `)
vim.keymap.set("n", "<leader>`", function()
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "ruff"
    end,
    timeout_ms = 2000,
  })
end, { desc = "Format Python with Ruff" })

vim.keymap.set("n", "T", function()
  vim.lsp.buf.type_definition()
end, { desc = "Format Python with Ruff" })

vim.api.nvim_set_keymap("n", "<Tab>", "<Plug>(cokeline-focus-next)", { silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<Plug>(cokeline-focus-prev)", { silent = true })
