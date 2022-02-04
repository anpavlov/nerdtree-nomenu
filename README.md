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

# Caveats
Mapping `c` to copy file will cause pause when entering 'c' key because NERDTree `cd` mapping exists and vim is waiting to check if user types more keys. To fix this you can remap default cd action using `g:NERDTreeMapChdir`. Setting it to empty string `''` will break NERDTree, because NERDTree does not check key for emptiness and will map `:call` instead. So you need to map it to some unused key, for example
```
let g:NERDTreeMapChdir = 'z'
```
