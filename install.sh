echo -e "--Make sure you are running this from the repo path--\n\n"
read -p "This will override your config files [Y/n]" -n 1 -r
echo    # move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Neovim
  rm -rf ~/.config/nvim
  ln -s ${PWD}/nvim ~/.config/nvim

  # Bash
  rm -rf ~/.bash_profile
  ln -s ${PWD}/bash/.bash_profile ~/.bash_profile

  # Tmux
  rm -rf ~/.tmux.conf
  ln -s ${PWD}/tmux/tmux.conf ~/.tmux.conf
fi

touch ~/.secrets
echo "Puts secrets in ~/.secrets"
