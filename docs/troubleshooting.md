# Troubleshooting

## Zsh startup slow

- Disable plugins one by one in `~/.zimrc`.
- Check external commands in `~/.zshrc`.

## Prompt not showing (oh-my-posh)

- Verify binary path: `command -v oh-my-posh`
- Verify config exists: `~/.config/ohmyposh/theme.omp.json`

## tmux config not applied

- Reload: `tmux source-file ~/.tmux.conf`
- Check local override errors in `~/.tmux.conf.local`

## lazygit config not loaded

- Confirm file path: `~/.config/lazygit/config.yml`

## yazi keymap/theme not loaded

- Confirm files in `~/.config/yazi/`
