vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Ultisnips
 use "SirVer/ultisnips"

 -- LaTeX Compiler
  use  "lervag/vimtex"


  -- TODO
  use { 'jubnzv/virtual-types.nvim', }

  -- COLOR SCHEMES
  use {"mattgithub2/cs.nvim"}
  use "hgoose/goose.vim"
  use {"morhetz/gruvbox"}
  use { "catppuccin/nvim", as = "catppuccin" }
  use "EdenEast/nightfox.nvim"
  use "agude/vim-eldar"
  use "rose-pine/neovim"
  use "olimorris/onedarkpro.nvim"
  use "savq/melange-nvim";
  use { "Verf/deepwhite.nvim" }
  use { "dgox16/oldworld.nvim" }
  use { "vague2k/vague.nvim" }
  use { "ahmedAbdulrahman/aylin.vim" }
  use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }
  use { "hachy/eva01.vim" }
  use { "comfysage/evergarden"}
  use {"polirritmico/monokai-nightasty.nvim"}
  use { "yorumicolors/yorumi.nvim" }
  use {"blazkowolf/gruber-darker.nvim" }
  use { "Aliqyan-21/darkvoid.nvim" }
  use { "AstroNvim/astrotheme" }
  use { "phha/zenburn.nvim"}
  use { "LunarVim/onedarker.nvim"}
  use { "HoNamDuong/hybrid.nvim"}
  use { "yonlu/omni.vim"}
  use {"Abstract-IDE/Abstract-cs"}
  use { "miikanissi/modus-themes.nvim"}
  use { "nacq/better-default"}
  use 'blackbirdtheme/vim'
  use { 'xero/evangelion.nvim'}
  use { 'Alexis12119/nightly.nvim'}
  use { 'pauchiner/pastelnight.nvim'}
  use { 'sjl/badwolf'}
  use { 'overcache/NeoSolarized'}
  use { 'NLKNguyen/papercolor-theme' }
  use 'SebastianZaha/nvim-solar-paper'
  use "craftzdog/solarized-osaka.nvim"
  use { "vim-scripts/DarkZen-Color-Scheme" }
  use({
      "neanias/everforest-nvim",
      -- Optional; default configuration will be used if setup isn't called.
      config = function()
          require("everforest").setup()
      end,
  })



  use {"liangxianzhe/floating-input.nvim"}

  -- Mason
  use {
	  "williamboman/mason.nvim"
  }
  -- Whichkey
  use {

	  "folke/which-key.nvim",
           --vim.o.timeout = true
           --vim.o.timeoutlen = 300
          require("which-key").setup({
              win = {
                  border = "rounded",
                  padding = { 2, 2, 2, 2},
                  title = true,
                  title_pos = "center",
              },
          })
  }


  -- For auto saving in vim
  use "907th/vim-auto-save"

  -- status bar
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Treesitter
  -- use {
  --     'nvim-treesitter/nvim-treesitter',
  --     run = ':TSUpdate',
  --     require('nvim-treesitter.configs').setup {
  --
  --         -- A list of parser names, or "all"
  --         ensure_installed = { "php", "c", "cpp", "bash", "fish", "cmake", "lua", "vim", "vimdoc", "query" },
  --
  --         sync_install = false,
  --         modules = {},
  --         ignore_install = {},
  --         auto_install = true,
  --
  --         highlight = {
  --             enable = true,
  --             additional_vim_regex_highlighting = false,
  --         },
  --     }
  --
  -- }
  --
  -- Parenthesis Highlighting
  -- use {
      -- "p00f/nvim-ts-rainbow",
      -- after = "nvim-treesitter"
  -- }

  -- FZF
  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.6',
      requires = { {'nvim-lua/plenary.nvim'},
      require("telescope").setup{
          pickers = {
              colorscheme = {
                  enable_preview = true
              }
          }
     }
  }
  }


  -- Smarter Splits
  use('mrjones2014/smart-splits.nvim')

  -- Better notifications
  use {
      'rcarriga/nvim-notify',
  }

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
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      }
  }
  -- Bufferline
use {
"nvim-tree/nvim-web-devicons"
}
use {
"willothy/nvim-cokeline",
dependencies = {
    "nvim-lua/plenary.nvim",        -- Required for v0.4.0+
    "nvim-tree/nvim-web-devicons", -- If you want devicons
    "stevearc/resession.nvim"       -- Optional, for persistent history
  },
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
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
  }

  use "airblade/vim-gitgutter"

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
  use { "echasnovski/mini.icons"}
  use {
      "andrewferrier/wrapping.nvim",
             require("wrapping").setup()
  }
  use {
      'VonHeikemen/fine-cmdline.nvim',
      requires = {
          {'MunifTanjim/nui.nvim'}
      },
  }
  use {'Vigemus/iron.nvim'}

  use "nvimtools/none-ls.nvim"
  use "nvimtools/none-ls-extras.nvim"

  end)
