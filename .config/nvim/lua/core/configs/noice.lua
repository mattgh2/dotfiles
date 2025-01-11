require('noice').setup({
    cmdline = {
        format = {
            cmdline = { icon = "" },
            search_down = { icon = "󰍉󰅀" },
            search_up = { icon = "󰍉󰅃" },
            filter = { icon = "$" },
            lua = { icon = "☾" },
            help = { icon = "?" },
        },
    },
    lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
    },
    presets = {
        -- you can enable a preset by setting it to true, or a table that will override the preset config
        -- you can also add custom presets that you can enable/disable with enabled=true
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = false, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
    },
    views = {
        cmdline_popup = {
            position = { row = vim.o.lines * 0.32, col = "50%" },
            size = { width = 60, height = "auto" },
        },
        popupmenu = {
            position = { row = vim.o.lines * 0.32 + 3, col = "50%" },
            size = { width = 60, height = 10 },
            border = { style = "rounded", padding = { 0, 1 } },
            win_options = {
                winhighlight = {
                    Normal = "Normal",
                    FloatBorder = "DiagnosticInfo",
                },
            },
        },
    },
})
