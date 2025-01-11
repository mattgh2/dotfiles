-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/matt/.cache/nvim/packer_hererocks/2.1.1731601260/share/lua/5.1/?.lua;/home/matt/.cache/nvim/packer_hererocks/2.1.1731601260/share/lua/5.1/?/init.lua;/home/matt/.cache/nvim/packer_hererocks/2.1.1731601260/lib/luarocks/rocks-5.1/?.lua;/home/matt/.cache/nvim/packer_hererocks/2.1.1731601260/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/matt/.cache/nvim/packer_hererocks/2.1.1731601260/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Abstract-cs"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/Abstract-cs",
    url = "https://github.com/Abstract-IDE/Abstract-cs"
  },
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["DarkZen-Color-Scheme"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/DarkZen-Color-Scheme",
    url = "https://github.com/vim-scripts/DarkZen-Color-Scheme"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  NeoSolarized = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/NeoSolarized",
    url = "https://github.com/overcache/NeoSolarized"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\na\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["ascii.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/ascii.nvim",
    url = "https://github.com/MaximilianLloyd/ascii.nvim"
  },
  astrotheme = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/astrotheme",
    url = "https://github.com/AstroNvim/astrotheme"
  },
  ["aylin.vim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/aylin.vim",
    url = "https://github.com/ahmedAbdulrahman/aylin.vim"
  },
  badwolf = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/badwolf",
    url = "https://github.com/sjl/badwolf"
  },
  ["better-default"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/better-default",
    url = "https://github.com/nacq/better-default"
  },
  catppuccin = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["ccc.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/ccc.nvim",
    url = "https://github.com/uga-rosa/ccc.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cs.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/cs.nvim",
    url = "https://github.com/mattgithub2/cs.nvim"
  },
  ["darkvoid.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/darkvoid.nvim",
    url = "https://github.com/Aliqyan-21/darkvoid.nvim"
  },
  ["deepwhite.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/deepwhite.nvim",
    url = "https://github.com/Verf/deepwhite.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["eva01.vim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/eva01.vim",
    url = "https://github.com/hachy/eva01.vim"
  },
  ["evangelion.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/evangelion.nvim",
    url = "https://github.com/xero/evangelion.nvim"
  },
  ["everforest-nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15everforest\frequire\0" },
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/everforest-nvim",
    url = "https://github.com/neanias/everforest-nvim"
  },
  evergarden = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/evergarden",
    url = "https://github.com/comfysage/evergarden"
  },
  ["fine-cmdline.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/fine-cmdline.nvim",
    url = "https://github.com/VonHeikemen/fine-cmdline.nvim"
  },
  ["floating-input.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/floating-input.nvim",
    url = "https://github.com/liangxianzhe/floating-input.nvim"
  },
  ["flow.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/flow.nvim",
    url = "https://github.com/0xstepit/flow.nvim"
  },
  ["fluoromachine.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/fluoromachine.nvim",
    url = "https://github.com/maxmx03/fluoromachine.nvim"
  },
  ["goose.vim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/goose.vim",
    url = "https://github.com/hgoose/goose.vim"
  },
  ["gruber-darker.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/gruber-darker.nvim",
    url = "https://github.com/blazkowolf/gruber-darker.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["hybrid.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/hybrid.nvim",
    url = "https://github.com/HoNamDuong/hybrid.nvim"
  },
  ["lavish.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/lavish.nvim",
    url = "https://github.com/ferdinandrau/lavish.nvim"
  },
  ["leetcode.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/leetcode.nvim",
    url = "https://github.com/kawre/leetcode.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["melange-nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/melange-nvim",
    url = "https://github.com/savq/melange-nvim"
  },
  ["mini.icons"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/mini.icons",
    url = "https://github.com/echasnovski/mini.icons"
  },
  ["modus-themes.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/modus-themes.nvim",
    url = "https://github.com/miikanissi/modus-themes.nvim"
  },
  ["monet.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/monet.nvim",
    url = "https://github.com/fynnfluegge//monet.nvim"
  },
  ["monokai-nightasty.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/monokai-nightasty.nvim",
    url = "https://github.com/polirritmico/monokai-nightasty.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neovim = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nightly.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nightly.nvim",
    url = "https://github.com/Alexis12119/nightly.nvim"
  },
  ["noctis.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/noctis.nvim",
    url = "https://github.com/kartikp10/noctis.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\22ignored_next_char\v[%w%.]\30enable_check_bracket_line\1\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/willothy/nvim-cokeline"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-solar-paper"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nvim-solar-paper",
    url = "https://github.com/SebastianZaha/nvim-solar-paper"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/matt/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oldworld.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/oldworld.nvim",
    url = "https://github.com/dgox16/oldworld.nvim"
  },
  ["omni.vim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/omni.vim",
    url = "https://github.com/yonlu/omni.vim"
  },
  ["onedarker.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/onedarker.nvim",
    url = "https://github.com/LunarVim/onedarker.nvim"
  },
  ["onedarkpro.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  ["pastelnight.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/pastelnight.nvim",
    url = "https://github.com/pauchiner/pastelnight.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["smart-splits.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/smart-splits.nvim",
    url = "https://github.com/mrjones2014/smart-splits.nvim"
  },
  ["solarized-osaka.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/solarized-osaka.nvim",
    url = "https://github.com/craftzdog/solarized-osaka.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vague.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/vague.nvim",
    url = "https://github.com/vague2k/vague.nvim"
  },
  vim = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/blackbirdtheme/vim"
  },
  ["vim-auto-save"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://github.com/907th/vim-auto-save"
  },
  ["vim-eldar"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/vim-eldar",
    url = "https://github.com/agude/vim-eldar"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  vimtex = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wrapping.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/wrapping.nvim",
    url = "https://github.com/andrewferrier/wrapping.nvim"
  },
  ["yorumi.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/yorumi.nvim",
    url = "https://github.com/yorumicolors/yorumi.nvim"
  },
  ["zenburn.nvim"] = {
    loaded = true,
    path = "/home/matt/.local/share/nvim/site/pack/packer/start/zenburn.nvim",
    url = "https://github.com/phha/zenburn.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: everforest-nvim
time([[Config for everforest-nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15everforest\frequire\0", "config", "everforest-nvim")
time([[Config for everforest-nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\na\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\22ignored_next_char\v[%w%.]\30enable_check_bracket_line\1\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-ts-rainbow ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
