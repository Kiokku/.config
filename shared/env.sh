# Shared environment vars
export EDITOR="nvim"
export LANG="en_US.UTF-8"

# Homebrew common path (Apple Silicon)
if [ -d "/opt/homebrew/bin" ]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi
