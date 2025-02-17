# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
# 📖 Récapitulatif des commandes Neovim

## ✂️ Édition de texte
| Commande | Description |
|----------|------------|
| `ci)`    | Supprime et édite à l'intérieur des `()` |
| `ca)`    | Supprime et édite avec les `()` |
| `ci"`    | Supprime et édite à l'intérieur des `""` |
| `ca"`    | Supprime et édite avec les `""` |
| `cw`     | Supprime et édite le mot à partir du curseur |
| `ciw`    | Supprime et édite le mot |
| `g U`    | Passer du texte en uppercase |
| `g u`    | Passer du texte en lowercase |
| `J`      | Pour joindre 2 lignes |
| `%s/search/replace/g` | Pour sed un fichier |

## 📌 Navigation
| Commande | Description |
|----------|------------|
| `*`      | Highlight un mot |
| `n`      | Prochaine iteration du mot |
| `N`      | Précédente iteration du mot |
| `.`      | Répète la dernière action |
| `gg`     | Aller en haut du fichier |
| `G`      | Aller en bas du fichier |
| `Ctrl F` | Descend d'un écran |
| `Ctrl B` | Monte d'un écran |
| `w`      | Aller au mot suivant |
| `b`      | Aller au mot précédent |
| `K`      | Ouvre la page du manuel du mot sous le curseur |

## 🔧 Manipulation avancée
```vim
:sort        	" Trier les lignes
:!ls         	" Exécuter une commande shell
:!r<filename>	" Importe filename dans le document actuel
