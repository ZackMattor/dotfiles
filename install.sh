#!/usr/bin/env bash
set -euo pipefail

# Always run relative to the repo, no matter where this was invoked from
cd "$(dirname "$0")"

read -p "This will override your config files [Y/n] " -n 1 -r
echo # move to a new line

if [[ $REPLY =~ ^[Nn]$ ]]; then
  echo "Aborted."
  exit 0
fi

# Symlink a repo path to a destination, replacing whatever is there
link() {
  local src="$1" dest="$2"
  rm -rf "$dest"
  ln -s "$PWD/$src" "$dest"
  echo "Linked $dest -> $PWD/$src"
}

# Append a line to a file only if it isn't already there
ensure_line() {
  local file="$1" line="$2"
  if [ -f "$file" ] && ! grep -qxF "$line" "$file"; then
    printf '\n%s\n' "$line" >> "$file"
    echo "Added to $file: $line"
  fi
}

mkdir -p ~/.config

# Neovim
link nvim ~/.config/nvim

# Install Neovim Plug (overwrites in place, safe to re-run)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install/update Neovim plugins headlessly
if command -v nvim &> /dev/null; then
  echo "Installing Neovim plugins..."
  nvim --headless "+PlugInstall --sync" +qa
  echo
else
  echo "nvim not found — skipping plugin install. Run :PlugInstall after installing Neovim."
fi

# Tmux
link tmux/tmux.conf ~/.tmux.conf

# Shell functions — source foorc from any shell rc that exists
for rc in ~/.bashrc ~/.zshrc; do
  ensure_line "$rc" "source $PWD/foorc"
done

echo "Done."
