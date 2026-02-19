# Setup

## 1) Clone

```bash
git clone <your-repo-url> ~/terminal-config
cd ~/terminal-config
```

## 2) Install dependencies

```bash
brew bundle --file Brewfile
```

## 3) Install helper components

```bash
bash scripts/install.sh
```

## 4) Link config files

```bash
bash scripts/link.sh
```

## 5) Reload

```bash
exec zsh
```
