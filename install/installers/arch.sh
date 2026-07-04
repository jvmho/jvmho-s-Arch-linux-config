#!/usr/bin/env bash

source "$(dirname "$BASH_SOURCE")/common.sh"

PACMAN_PACKAGES=(
    niri
    hyprlock
    xwayland-satellite
    swaybg
)

AUR_PACKAGES=(
    awww
)

sudo pacman -Syu --needed "${COMMON_PACKAGES[@]}" "${PACMAN_PACKAGES[@]}"

if command -v yay >/dev/null; then
    yay -S --needed "${AUR_PACKAGES[@]}"
else
    echo "yay is not installed."
fi
