return {
    "L3MON4D3/LuaSnip",
    config = function()
        local luasnip = require("luasnip")
        luasnip.setup({})

        -- Charge les snippets personnalisés
        print("Attempting to load custom snippets...")
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { "/home/c0rvax/.config/nvim/snippets/" } })
    end,
}

--[[
local loaders_status_ok, loaders = pcall(require, "luasnip.loaders.from_vscode")
if not loaders_status_ok then
    print("Erreur lors du chargement de 'luasnip.loaders.from_vscode': ")
    return
end

-- Charger les snippets personnalisés
local snippets_path = vim.fn.expand("~/.config/nvim/lua/snippets")
if vim.fn.filereadable(snippets_path) then
    loaders.load({ paths = { snippets_path } })
    print("Snippets C++ personnalisés chargés avec succès")
else
    print("Fichier de snippets C++ non trouvé : " .. snippets_path)
end
--[[
require("luasnip/loaders/from_vscode").load({
  paths = { vim.fn.expand("~/.config/nvim/lua/snippets") },
  })
]]

