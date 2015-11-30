## Installation

```
mkdir -p ~/.vim/bundle
cd ~/.vim
git init
git remote add origin https://github.com/billychow/.vim.git
git fetch

git clone https://github.com/powerline/fonts.git ~/.vim/fonts
~/.vim/fonts/install.sh
rm -rf ~/.vim/fonts

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv ~/.vimrc ~/.vimrc.bak
ln -s ~/.vim/.vimrc ~/.vimrc

vim +PluginInstall +qall
```
