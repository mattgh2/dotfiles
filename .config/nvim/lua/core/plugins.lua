vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Ultisnips
 use "SirVer/ultisnips"

 -- LaTeX Compiler
 use {
     "lervag/vimtex",
 }

  -- Color scheme
  use "hgoose/goose.vim"
  use { "lifepillar/vim-gruvbox8"}
  use { "catppuccin/nvim", as = "catppuccin" }
  use "EdenEast/nightfox.nvim"

  -- Mason
  use {
	  "williamboman/mason.nvim"
  }

  -- Whichkey
  use {

	  "folke/which-key.nvim",
	  config = function()
		  vim.o.timeout = true
		  vim.o.timeoutlen = 300
		  require("which-key").setup {
			  -- 
		  }
	  end
  }

  -- For auto saving in vim
  use "907th/vim-auto-save"

  -- status bar
  use {'vim-airline/vim-airline'}
  use {'vim-airline/vim-airline-themes'}

  -- Treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      require('nvim-treesitter.configs').setup {

          -- A list of parser names, or "all"
          ensure_installed = { "c", "cpp", "bash", "fish", "cmake", "lua", "vim", "vimdoc", "query" },

          sync_install = false,
          modules = {},
          ignore_install = {},
          auto_install = true,

          highlight = {
              additional_vim_regex_highlighting = false,
          },
      }
  }

  -- Parenthesis Highlighting
  use {
      "p00f/nvim-ts-rainbow",
      after = "nvim-treesitter"
  }

  -- FZF
  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.6',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Smarter Splits
  use('mrjones2014/smart-splits.nvim')

  -- Better notifications
  use {
      'rcarriga/nvim-notify',
  }

  -- LSP
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          {'williamboman/mason-lspconfig.nvim'},

          {'neovim/nvim-lspconfig'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
          {'onsails/lspkind.nvim'},
      }
  }

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

  use {
      'stevearc/dressing.nvim',
  }

  use {
      'windwp/nvim-autopairs',
      config = function()
          require('nvim-autopairs').setup{
              -- disable_filetype = { "TelescopePrompt", "vim" },
              enable_check_bracket_line = false,
              ignored_next_char = "[%w%.]",
          }
      end
  }

  -- Nerd tree
  use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
  }
  use {
      'akinsho/bufferline.nvim',
      tag = "*",
      requires = "nvim-tree/nvim-web-devicons",
      require('bufferline').setup{}
  }

  use({ "MaximilianLloyd/ascii.nvim", requires = {
      "MunifTanjim/nui.nvim"
  } })

  use {
      'goolord/alpha-nvim',
      requires = { 'nvim-tree/nvim-web-devicons' },
      config = function ()
          -- change header in 
          -- ~/.local/share/nvim/site/pack/packer/start/alpha-nvim/lua/alpha/themes
          -- Telecscope ascii to view headers
          require'alpha'.setup(require'alpha.themes.custom'.config)
      end
  }

  use "airblade/vim-gitgutter"

  -- CmdLine
  use {
      "folke/noice.nvim",
      opts = {

      },
      dependencies = {
          -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
          "MunifTanjim/nui.nvim",
          -- OPTIONAL:
          --   `nvim-notify` is only needed, if you want to use the notification view.
          --   If not available, we use `mini` as the fallback
          "rcarriga/nvim-notify",
      },
  }

  -- Color Previews
  use {
      "uga-rosa/ccc.nvim",
      require('ccc').setup({
          highlighter = {
              auto_enable = true,
              lsp = true,
          },
      })
  }
end)
