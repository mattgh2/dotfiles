vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    --  --Ultisnips
    use "SirVer/ultisnips" -- -- LaTeX Compiler
    use  "lervag/vimtex"

    --  -- COLOR SCHEMES
    use "flazz/vim-colorschemes"
    use {"mattgithub2/cs.nvim"}
    use "hgoose/goose.vim"
    use {"morhetz/gruvbox"}
    use { "catppuccin/nvim", as = "catppuccin" }
    use "rose-pine/neovim"
    use "olimorris/onedarkpro.nvim"
    use { "comfysage/evergarden"}
    use {"polirritmico/monokai-nightasty.nvim"}
    use "craftzdog/solarized-osaka.nvim"
    use "neanias/everforest-nvim"
    use {"liangxianzhe/floating-input.nvim"}

    -- Mason
    use "williamboman/mason.nvim"

    -- Whichkey
    use "folke/which-key.nvim"

    -- For auto saving in vim
    use "907th/vim-auto-save"

    use 'm4xshen/autoclose.nvim'

    -- status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        branch = 'master',
        run = 'TSUpdate',
    }

    -- FZF
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        requires = {'nvim-lua/plenary.nvim'},
    }

    -- Smarter Splits
    use'mrjones2014/smart-splits.nvim'

    -- Better notifications
    use 'rcarriga/nvim-notify'

    -- Auto Completions
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    -- For commenting lines  
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- Terminal Buffers
    use {
        "akinsho/toggleterm.nvim",
        tag = '*',
    }
    use 'stevearc/dressing.nvim'

    use {
        'windwp/nvim-autopairs',
        config = function()
        end
    }
    -- Nerd tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }
    use "nvim-tree/nvim-web-devicons"
    use "echasnovski/mini.icons"

    -- Bufferline
    use {
        "willothy/nvim-cokeline",
        dependencies = {
            "nvim-lua/plenary.nvim",        -- Required for v0.4.0+
            "nvim-tree/nvim-web-devicons",
            "stevearc/resession.nvim"       -- For persistent history
        },
    }

    -- Startup screen
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
    }

    use "airblade/vim-gitgutter"

    -- Color Previews
    use "uga-rosa/ccc.nvim"

    use {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
            {'MunifTanjim/nui.nvim'}
        },
    }

    use {'Vigemus/iron.nvim'}
    use "lukas-reineke/indent-blankline.nvim"
end)
