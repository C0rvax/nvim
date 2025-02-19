return {
  "saghen/blink.cmp",
  --	version = "v0.9.3",
  sources = {
    default = { "snippets", "lsp", "path", "buffer" },
  },
  opts = {
    keymap = {
      ["<C-k>"] = { "snippet_backward" }, -- Précédent
      ["<C-j>"] = { "snippet_forward" }, -- Suivant
      ["<C-b>"] = { "scroll_documentation_up" },
      ["<C-f>"] = { "scroll_documentation_down" },
      ["<C-Space>"] = { "show" }, -- Affiche les suggestions

      -- Valide l'élément sélectionné
      ["<CR>"] = { "select_and_accept", "fallback" },
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      [","] = { "hide", "fallback" },
    },
  },
}
