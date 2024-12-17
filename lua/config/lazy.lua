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
    { import = "lazyvim.plugins.extras.lang.clangd" },
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
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
--[[    ['<C-k>'] = { 'select_prev' }, -- Précédent
    ['<C-j>'] = { 'select_next' }, -- Suivant
    ['<C-b>'] = { 'scroll_documentation_up' },
    ['<C-f>'] = { 'scroll_documentation_down' },
    ['<C-Space>'] = { 'show' }, -- Affiche les suggestions

    -- Ferme les suggestions
    [','] = { function(cmp)
      if cmp.visible() then
        cmp.hide()
      end
    end },

    -- Valide l'élément sélectionné
    ['<CR>'] = { 'accept' },

    -- Gestion avancée de <Tab>
    ['<Tab>'] = {
      function(cmp)
        if cmp.visible() then
          cmp.select_next() -- Sélection suivante
        elseif luasnip.expandable() then
          luasnip.expand() -- Expand un snippet s'il est disponible
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump() -- Saute vers l'étape suivante d'un snippet
        elseif check_backspace() then
          cmp.fallback() -- Fallback si aucune condition n'est remplie
        else
          cmp.fallback()
        end
      end,
      'fallback',
    },

    -- Gestion de <S-Tab>
    ['<S-Tab>'] = {
      function(cmp)
        if cmp.visible() then
          cmp.select_prev() -- Sélection précédente
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1) -- Retour en arrière dans le snippet
        else
          cmp.fallback() -- Fallback
        end
      end,
      'fallback',
    },
  },
]]
