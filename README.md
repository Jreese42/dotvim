My Vim config
=============

For Vim 7.4+ for vim to find .vim/vimrc in place of ~/.vimrc
Clone with submodules to get the Plugins:
```
git clone --recursive <repo>
```
or
```
git clone
git submodule init
git submodule update
```
You will need to compile YCM.  This may require python-dev, build-essential, and cmake.
```
cd .vim/bundle/YouCompleteMe
./install.py --clang-completer
```
Refer to the YCM docs for more details on YCM compilation.

Includes:
* Vundle
* YouCompleteMe
* SuperTab
* UltiSnips + vim-snippets
* Custom snippets directory
* NERD Commenter
* NERD Tree
* Comma as leader
* \<leader\>ev, sv for edit vimrc, reload vimrc
* Visual settings (color, number, indents, smart tabbing, etc)
* \<leader\>/ to unhighlight search
* w!! to force write to read-only files
* Kills \<F1\> which is pure evil
* jk for \<Esc\>
* \<leader\>\<leader\> to swap buffers
