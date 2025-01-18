  -- Vrac

return {
--[[    ##CMP##    ]]
--    { "hrsh7th/nvim-cmp", dependencies = { "hrsh7th/cmp-emoji",},},
--    { 'hrsh7th/cmp-nvim-lsp' },
--    { 'hrsh7th/cmp-buffer' },
--    { 'hrsh7th/cmp-path' },
--    { "saadparwaiz1/cmp_luasnip" },

--    { 'L3MON4D3/LuaSnip', build = "make install_jsregexp"},
    { "williamboman/nvim-lsp-installer"},
    { "hrsh7th/lspkind-nvim" },
--    { "mg979/vim-visual-multi"},
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
--[[	{
    "ibhagwan/fzf-lua",
    opts = {
      oldfiles = {
        -- Dans Telescope, lorsque j'utilisais <leader>fr, cela chargeait les anciens tampons.
        -- fzf lua fait de même, mais par défaut, les tampons visités lors de la session actuelle
        -- ne sont pas inclus. J'utilise <leader>fr tout le temps pour revenir aux tampons
        -- dans lesquels je me trouvais. Si cela vous a manqué dans Telescope,
        -- essayez-le.
        include_current_session = true,
      },
      previewers = {
        builtin = {
          -- fzf-lua est très rapide, mais il a vraiment eu du mal à prévisualiser quelques fichiers
          -- dans un dépôt. Ces fichiers étaient de très gros fichiers JavaScript (1 Mo, minifiés, tous sur une seule ligne).
          -- Il s'avère que Treesitter avait du mal à analyser les fichiers.
          -- Avec ce changement, le visualiseur n'ajoutera pas de mise en évidence syntaxique aux fichiers de plus de 100 Ko
          -- (Oui, je sais que vous ne devriez pas avoir de fichiers minifiés de 100 Ko dans le contrôle de source.)
          syntax_limit_b = 1024 * 100, -- 100 Ko
        },
      },
      grep = {
        -- Une chose qui m'a manqué dans Telescope était la possibilité d'utiliser live_grep et
        -- d'exécuter un filtre sur les noms de fichiers.
        -- Ex : Trouver toutes les occurrences de "enable" mais uniquement dans le répertoire "plugins".
        -- Avec ce changement, je peux obtenir un comportement similaire dans live_grep.
        -- ex : > enable --*/plugins/*
        -- Je trouve cela encore un peu lourd. Il y a probablement une meilleure façon de faire cela.
        rg_glob = true, -- activer l'analyse glob
        glob_flag = "--iglob", -- globs sans distinction de majuscules/minuscules
        glob_separator = "%s%-%-", -- motif séparateur de requête (lua) : ' --'
      },
    },
  },
]]
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
