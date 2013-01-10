## Installation

```
mkdir -p ~/.vim/bundle
cd ~/.vim
git init
git remote add origin https://github.com/billychow/.vim.git
git fetch

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
rm ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc

vim
:BundleInstall
```
