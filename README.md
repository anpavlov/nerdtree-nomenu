# nerdtree-nomenu
Adds [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua) like shortcuts to edit filesystem without opening NERDTree menu

Plugin exists to unify experience when switching between neovim and vim using nvim-tree and NERDTree.

# Installation
Use your favorite plugin manager, ex. vim-plug
```
Plug 'anpavlov/nerdtree-nomenu'
```

# Mappings
- `<CR>` on current root will open and cd in the above directory
- `<C-]>` will open and cd in the directory under the cursor
- `a` to add a file/directory
- `r` to rename a file/directory
- `c` to copy file/directory
- `d` to delete a file/directory
