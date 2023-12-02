local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
	{'neovim/nvim-lspconfig', dependencies = {'hrsh7th/cmp-nvim-lsp'}, },
  	{'hrsh7th/nvim-cmp', dependencies = {'L3MON4D3/LuaSnip'}, },
    	{ "nvim-tree/nvim-web-devicons" },
	{ "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim"},
	{ "voldikss/vim-floaterm" },
	{
		"Diogo-ss/42-header.nvim",
		lazy = false,
		config = function()
		local header = require("42header")
		header.setup({
			default_map = true, -- default Mapping <F1> in normal mode
			auto_update = true,  -- update header when saving
			user = "aduvilla", -- your user
			mail = "aduvilla@student.42.fr", -- your mail
		})
		end
	},
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	{ "lewis6991/gitsigns.nvim", config = function() require("gitsigns").setup() end },
	{ "nvim-lualine/lualine.nvim", config = function() require("lualine").setup() end },
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "slate", "tokyonight", "habamax", "palenight" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
