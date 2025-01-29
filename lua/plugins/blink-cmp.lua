return {
	"saghen/blink.cmp",
--	version = "v0.9.3",
    sources = {
      default = { 'snippets', 'lsp', 'path', 'buffer' },
      },
	opts = {
	keymap = {
	['<C-k>'] = { 'snippet_backward' }, -- Précédent
	['<C-j>'] = { 'snippet_forward' }, -- Suivant
    ['<C-b>'] = { 'scroll_documentation_up' },
    ['<C-f>'] = { 'scroll_documentation_down' },
    ['<C-Space>'] = { 'show' }, -- Affiche les suggestions

--[[
    -- Ferme les suggestions
    [','] = { function(cmp)
      if cmp.snippet_active() then
        cmp.hide()
      end
    end },
]]
    -- Valide l'élément sélectionné
    ['<CR>'] = { 'select_and_accept', "fallback" },
    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
    [','] = { "hide", "fallback" },
--[[
    -- Gestion avancée de <Tab>
    ['<Tab>'] = {
      function(cmp)
        if cmp.snippet_active() then
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
    }, ]]
  },
  },
  }
