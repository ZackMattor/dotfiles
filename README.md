dotfiles
========

Just my dotfiles... nothing fancy

 - tmux
 - neovim

install.sh
---
Installs dotfiles for Neovim, Bash, and Tmux

To install neovim `plug`
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Sane MacOS settings
---
```
defaults write -g InitialKeyRepeat -int 13 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```
