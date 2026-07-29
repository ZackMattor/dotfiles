dotfiles
========

Just my dotfiles... nothing fancy!

Also include some Mac setup items.

 - tmux
 - neovim
 - shell functions (`foorc`)

install.sh
---
Symlinks the Neovim and Tmux configs into place, installs Neovim plugins,
and adds a `source` line for the shell function file (`foorc`) to
`~/.bashrc` / `~/.zshrc`. Safe to re-run — it won't duplicate anything.

System Settings
---
 - Change caps lock to control
 - Enable trackpad 3 finger drag

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

Sane MacOS settings
---
```
defaults write -g InitialKeyRepeat -int 13 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```

Add private key to keychain
---
```
ssh-add --apple-use-keychain ~/.ssh/[your-private-key]
```
add to `~/.ssh/config`
```
Host *
  UseKeychain yes
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_rsa
```
