#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "$ROOT_DIR/scripts/install.sh"
bash "$ROOT_DIR/scripts/link.sh"

printf '\nDone. Reload with: exec zsh\n'
