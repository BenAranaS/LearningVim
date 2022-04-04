# LearningVim
Vim related stuff. Documentation, scripts, etc.


## .vimrc 
### Documentation
#### vimrc
Enables:
- 4 spaces tab
- relativenumber
- recursive path search
- remap leader key to <space>
- use system clipboard as default clipboard
- no swap files, but autowrite with undofile

StandarPlugins:
- Spelling
- netrw

NonStandarPlugins:
- gruvbox theme
- YouCompleteMe
- undotree
- vim-suite
- syntastic
- vim-flake8: support for PEP8
- vim-fugitive: git
- vim-airline: a status bar


### Install 
#### vimrc_noplugins
Only standard plugins added.

1. mkdir -p ~/.vim/undodir
2. cp ./vimrc_noplugins ~/.vimrc 


#### vimrc_plugins
Uses vim-plug to add some useful plugins

1. mkdir -p ~/.vim/undodir
2. cp ./vimrc_noplugins ~/.vimrc 
3. curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
4. from vim,  :PlugInstall
5. Install YouCompleteMe: python3 install.py --clang-completer --ts-completer


