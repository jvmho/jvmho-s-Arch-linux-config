#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -f /etc/os-release ]]; then
    echo "Unsupported Linux distribution"
    exit 1
fi

source /etc/os-release

case "$ID" in
    arch)
        source "$SCRIPT_DIR/installers/arch.sh"
        ;;
    endeavouros)
        source "$SCRIPT_DIR/installers/arch.sh"
        ;;
    cachyos)
        source "$SCRIPT_DIR/installers/arch.sh"
        ;;
    manjaro)
        source "$SCRIPT_DIR/installers/arch.sh"
        ;;
    debian|ubuntu|linuxmint)
        source "$SCRIPT_DIR/installers/debian.sh"
        ;;
    fedora)
        source "$SCRIPT_DIR/installers/fedora.sh"
        ;;
    *)
        echo "Unsupported distribution: $ID"
        exit 1
        ;;
esac
