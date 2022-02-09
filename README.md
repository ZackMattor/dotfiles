dotfiles
========

Just my dotfiles... nothing fancy!

Also include some Mac setup items.

 - tmux
 - neovim

install.sh
---
Installs dotfiles for Neovim, Bash, and Tmux

System Settings
---
 - Change caps lock to control
 - Enable tracpad 3 finger drag

Apps to Install
---
- xcode
- chrome
- brew
- iterm2
- 1password
- nvm
- rvm
- docker
- 

Sane MacOS settings
---
```
defaults write -g InitialKeyRepeat -int 13 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```

Add private key to keychain
---
```
ssh-add -K ~/.ssh/[your-private-key]
```
add to `~/.ssh/config`
```
Host *
  UseKeychain yes
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_rsa
```
