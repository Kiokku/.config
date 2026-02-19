#!/usr/bin/env bash
set -euo pipefail

if [ ! -d "$HOME/.zim" ]; then
  echo "Installing zimfw..."
  curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
else
  echo "zimfw already installed."
fi

if command -v fzf >/dev/null 2>&1 && command -v brew >/dev/null 2>&1; then
  "$(brew --prefix)/opt/fzf/install" --all --no-bash --no-fish || true
fi

echo "Install step complete."
