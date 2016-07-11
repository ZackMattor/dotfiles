clear;
echo -e "--Make sure you are running this from the repo path--\n\n";
read -p "This will override your config files [Y/n]" -n 1 -r
echo    # move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
then
  rm -rf ~/.vim
  rm -rf ~/.irssi
  rm -rf ~/.vimrc
  rm -rf ~/.tmux.conf

  ln -s ${PWD}/.vim ~/.vim
  ln -s ${PWD}/.vimrc ~/.vimrc
  ln -s ${PWD}/.bash_profile ~/.bash_profile
  ln -s ${PWD}/.tmux.conf ~/.tmux.conf
  cp -r ${PWD}/.irssi ~/.irssi

  echo "YOU NEED TO SET YOUR IRSSI ACCOUNT PASSWORD (count not be directly linked due to personal information)\n";
  echo "get all the submodules by running 'git submodule update --init'";
  echo "If you want tmuxinator - gem install tmuxinator";
fi
