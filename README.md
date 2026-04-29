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
| **Waybar**   | Highly customizable status bar                   |
| **Wofi**     | Wayland application launcher & menu              |
| **Kitty**    | GPU-accelerated, feature-rich terminal emulator  |
| **Zsh**      | Interactive shell with custom prompt & aliases   |
| **Tools**    | `grim`, `slurp`, `wl-clipboard`, `playerctl`, `brightnessctl`, `pamixer`, `aww` |

## 🎨 Aesthetics

- **Color Palette:** Warm red and dark teal colours from [here](https://github.com/ficd0/ashen)
- **Terminal/UI Font:** `JetBrainsMono Nerd Font`

## 🛠️ Installation

### 1. Install Dependencies (Arch-based)

```bash
sudo pacman -S --needed \
  hyprland niri waybar wofi kitty zsh stow git \
  ttf-jetbrains-mono-nerd noto-fonts-emoji \
  grim slurp wl-clipboard playerctl brightnessctl pamixer polkit-gnome
```

> 💡 For Debian/Ubuntu/Fedora, adapt package names accordingly. Some tools may require AUR or third-party repos.

### 2. Clone & Deploy

```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Deploy all packages
stow */

# Or deploy selectively
stow hyprland niri waybar wofi kitty zsh
```

### 3. Set Zsh as Default Shell

```bash
chsh -s $(which zsh)
# Log out and back in for changes to take effect
```

## ⌨️ Keybindings

Super = Windows/Command key

### 🪟 Window & Workspace Management
Binding	Action
- `Super + Shift + C`	Close focused window
- `Super + Q`	Open terminal (Kitty)
- `Super + Space`	Launch app menu (Wofi)
- `Super + 1..9`	Switch to workspace 1-9
- `Super + Shift + 1..9`	Move window to workspace 1-9
- `Super + Up/Down/Left/Right`	Focus window
- `Super + Shift + Up/Down/Left/Right`	Move window
- `Super + Shift + F`	Toggle fullscreen
- `Super + Shift + R`	Reload compositor config

### 📸 Media & Utilities
Binding	Action
- `Super + Shift + S`	Screenshot region (grim+slurp)
- `XF86AudioRaise/Lower`	Volume up/down
- `XF86AudioMute	Toggle` mute
- `XF86MonBrightnessUp/Down`	Brightness control

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
- [ficd0](https://github.com/ficd0) - for beautyful color palette from his helix [ashen](https://github.com/ficd0/ashen) theme
- The Linux ricing community – for endless inspiration & shared configs

## 📜 License

This repository is licensed under the MIT License.
Feel free to fork, adapt, and steal ideas. A ⭐ is appreciated if you find it useful!

Managed with ❤️ and GNU stow
