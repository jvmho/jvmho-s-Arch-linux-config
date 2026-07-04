# 🏠 Dotfiles

Personal Linux desktop configuration managed with **GNU Stow**.  
Featuring a dual-compositor setup (**Hyprland** & **Niri**) on Wayland, with a focus on minimalism, performance, and keyboard-driven workflows.

![Preview](.github/preview.png)

## 📖 Overview

This repository contains my personal configuration files for Wayland compositors, terminal, shell, and UI components. All dotfiles are organized as Stow packages, making deployment, syncing, and rollback trivial across machines.

## 📦 Software Stack

| Component   | Description                                      |
| :---------- | :----------------------------------------------- |
| **Hyprland** | Dynamic tiling Wayland compositor                |
| **Niri**     | Scrollable tiling Wayland compositor             |
| **Hyprlock** | Very customizable lock screen                    |
| **Waybar**   | Highly customizable status bar                   |
| **Wofi**     | Wayland application launcher & menu              |
| **Kitty**    | GPU-accelerated, feature-rich terminal emulator  |
| **Fastfetch**| Utility to flex with your distro >:)             |
| **Zsh**      | Interactive shell with custom prompt & aliases   |
| **Tools**    | `grim`, `slurp`, `wl-clipboard`, `playerctl`, `brightnessctl`, `pamixer`, `aww`, `nmcli`, `thunar` |

## 🎨 Aesthetics

- **Style:** Sharp and high contrast theme for `Niri` and `Hyprland` WMs
- **Color Palette:** Warm red (`#FF4F5B`) to orange (`#E69143`) active gradients; Dark teal inactive borders. Based on the [Ashen](https://github.com/ficd0/ashen) theme.
- **Geometry:** 12px corner rounding, and 10px gaps.
- **Terminal/UI Font:** `JetBrainsMono Nerd Font`

## 🛠️ Installation

### 1. Install Dependencies (Arch-based)

## Installation

> [!NOTE]
> Arch Linux is the primary supported distribution. Other distributions are supported on a best-effort basis.

### Clone the repository

```bash
git clone https://github.com/<username>/dotfiles.git
cd dotfiles
```

### Run the installer

```bash
chmod +x install.sh
./install.sh
```

The installer will:

- Detect your Linux distribution
- Install all required packages and dependencies
- Install optional AUR packages on Arch (if `yay` is available)
- Create symlinks for the configuration files in `~/.config`

### Supported distributions

| Distribution | Status |
|--------------|--------|
| Arch Linux | Fully supported |
| EndeavourOS | Fully supported |
| CachyOS | Fully supported |
| Manjaro | Fully supported |
| Debian | Partial support |
| Ubuntu | Partial support |
| Fedora | Partial support |

### Arch Linux

For the best experience, install an AUR helper such as `yay` before running the installer:

```bash
sudo pacman -S --needed git base-devel

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### After installation

Log out and start a **Niri** session from your display manager, or launch it manually if you start your graphical session from the TTY.

If you make changes to the repository later, simply rerun the installer to update the symlinks.

## ⌨️ Keybindings

Super = Windows/Command key

### 🪟 Window & Workspace Management

Binding	Action
- `Super + Q`	Open Terminal (Kitty)
- `Super + Shift + C`	Close focused window
- `Super + Space`	Launch App Menu (Wofi)
- `Super + H/J/K/L`	Focus window (Vim-style Left/Down/Up/Right)
- `Super + Ctrl + H/J/K/L`	Move window (Vim-style)
- `Super + O`	Toggle Overview (niri only)
- `Super + V`	Toggle floating mode
- `Super + F`	Maximize window (keep bars)
- `Super + Shift + F`	True Fullscreen
- `Super + 1..9`	Switch to workspace 1-9
- `Super + R`	Toggle Split (Dwindle)

### 🚀 Apps & Utilities

Binding	Action
- `Super + Z`	Launch Zen Browser
- `Super + Shift + S`	Screenshot region
- `Super + Shift + Space`	Power Menu
- `Super + Shift + E`	Logout Script
- `Super + Alt + L`	Lock Screen (Hyprlock)
- `Super + S`	Toggle Special Workspace (Scratchpad)
- `Super + Shift + W` WiFi Connection Manager
- `Super + E` Open file browser (thunar)

### 🔊 Media & Brightness

Binding	Action
- `XF86AudioRaise/Lower`	Volume +/- 10%
- `XF86AudioMute`	Toggle Mute
- `XF86MonBrightnessUp/Down`	Brightness +/- 10%

> ⚠️ Niri uses a different config syntax (config.kdl). Keybinds are functionally similar but defined separately in niri/.config/niri/.

## 📂 Repository Structure

```
dotfiles/
├── hyprland/          → ~/.config/hypr/
├── niri/              → ~/.config/niri/
├── waybar/            → ~/.config/waybar/
├── wofi/              → ~/.config/wofi/
├── kitty/             → ~/.config/kitty/
├── zsh/               → ~/.zshrc, ~/.zsh_prompt
├── .stow-local-ignore # Files/dirs Stow should ignore
└── README.md
```

Stow automatically creates symlinks from ~/dotfiles/<package>/ to your $HOME. No files are copied.

## 🔧 Stow Cheat Sheet
Command	Description
- `stow <package>`	Create symlinks for a package
- `stow -D <package>`	Remove symlinks (unstow)
- `stow -R <package>`	Restow (useful after moving/renaming files)
- `stow --adopt <package>`	Import existing dotfiles into the repo
- `stow -n -v <package>`	Dry-run: preview what Stow will do
- `stow */`	Deploy all packages in the repo

> 💡 After --adopt, always run git diff before committing to avoid overwriting repo files unintentionally.

## 🙏 Credits

- [Hyprland](https://github.com/hyprwm/Hyprland) & [Niri](https://github.com/niri-wm/niri) – for pushing Wayland tiling forward
- [Waybar](https://github.com/Alexays/Waybar) & [Wofi](https://github.com/SimplyCEO/wofi) – for sleek Wayland UI tools
- [Kitty](https://github.com/kovidgoyal/kitty) – for a blazing fast terminal
- [ficd0](https://github.com/ficd0) - for beautiful color palette from his helix [ashen](https://github.com/ficd0/ashen) theme
- [krisfur](https://github.com/krisfur/cachyos-setup/tree/main) - for his fastfetch theme
- The Linux ricing community – for endless inspiration & shared configs

## 📜 License

This repository is licensed under the MIT License.
Feel free to fork, adapt, and steal ideas. A ⭐ is appreciated if you find it useful!

Managed with ❤️ and GNU stow
