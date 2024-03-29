echo -e "--Make sure you are running this from the repo path--\n\n"
read -p "This will override your config files [Y/n]" -n 1 -r
echo    # move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
  mkdir -p ~/.config
  
  # Neovim
  rm -rf ~/.config/nvim
  ln -s ${PWD}/nvim ~/.config/nvim

  # Install Neovim Plug
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  # Tmux
  rm -rf ~/.tmux.conf
  ln -s ${PWD}/tmux/tmux.conf ~/.tmux.conf
fi
