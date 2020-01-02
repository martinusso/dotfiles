vimfiles
========

:warning:
**Disregard this repo, see https://github.com/martinusso/vimfiles instead.**

vim configuration files

Quick start
-----------

Requirements: Git, Curl, Exuberant Ctags

##### Windows users
Some bugs, in plugins mainly, occurs on Windows when using the folder `.vim`. Thus, we must always consider `~/vimfiles` instead of `~/.vim`.

### Setup .vimrc:

`git clone git://github.com/martinusso/.vim.git ~/.vim`

After download the project, you need create a `.vimrc`, or `_vimrc` on Windows, file in your $HOME:

`echo "source ~/.vim/.vimrc" > ~/.vimrc`

##### Windows users
`echo "source ~/vimfiles/.vimrc" > ~/_vimrc`

Or just move the `vimfiles/.vimrc` to `~/_vimrc` :disappointed:

### Setup Vundle:

To install the Vundle, clone (or download) the repository to your $HOME/.vim/bundle folder:

`$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

##### Vundle - Install configured bundles

Launch `vim`, run `:BundleInstall`
