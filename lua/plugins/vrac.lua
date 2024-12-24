  -- Vrac

return {
--[[    ##CMP##    ]]
--    { "hrsh7th/nvim-cmp", dependencies = { "hrsh7th/cmp-emoji",},},
--    { 'hrsh7th/cmp-nvim-lsp' },
--    { 'hrsh7th/cmp-buffer' },
--    { 'hrsh7th/cmp-path' },
--    { "saadparwaiz1/cmp_luasnip" },

    { 'L3MON4D3/LuaSnip', build = "make install_jsregexp"},
    { "williamboman/nvim-lsp-installer"},
    { "hrsh7th/lspkind-nvim" },
    { "mg979/vim-visual-multi"},
	{ 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
	{ "lewis6991/gitsigns.nvim", config = function() require("gitsigns").setup() end },
	{ "nvim-lualine/lualine.nvim", config = function() require("lualine").setup() end },
	{ "Diogo-ss/42-header.nvim",
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

  -- the opts function can also be used to change the default opts:
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, "😄")
    end,
  },

  -- use mini.starter instead of alpha
  { import = "lazyvim.plugins.extras.ui.mini-starter" },
    {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "c",
        "cpp",
      },
    },
  },
    {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "clangd",
      },
    },
  },
}
