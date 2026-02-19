#!/usr/bin/env bash
set -euo pipefail

check_cmd() {
  local name="$1"
  if command -v "$name" >/dev/null 2>&1; then
    echo "[ok] $name"
  else
    echo "[missing] $name"
  fi
}

echo "Checking binaries..."
check_cmd zsh
check_cmd ghostty
check_cmd git
check_cmd lazygit
check_cmd tmux
check_cmd yazi
check_cmd oh-my-posh
check_cmd fzf
check_cmd fastfetch

echo
echo "Checking linked files..."
for file in \
  "$HOME/.zshrc" \
  "$HOME/.zimrc" \
  "$HOME/.gitconfig" \
  "$HOME/.tmux.conf" \
  "$HOME/Library/Application Support/com.mitchellh.ghostty/config" \
  "$HOME/Library/Application Support/lazygit/config.yml"; do
  if [ -L "$file" ] || [ -f "$file" ]; then
    echo "[ok] $file"
  else
    echo "[missing] $file"
  fi
done
