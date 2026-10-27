# 🕷️ Dotfiles & Configurations

Personal dotfiles and environment configurations across multiple machines, including the Arch Linux Hyprland rice.

---

## 📂 Repository Structure

```
dotfiles/
├── arch_linux/             # Arch Linux Rice & Environment
│   ├── .config/
│   │   ├── hypr/           # Hyprland modular Lua config
│   │   │   ├── hyprland.lua
│   │   │   ├── theme.lua
│   │   │   ├── hyprpaper.conf
│   │   │   └── modules/    # Keybindings, autostart, look & feel, monitors, etc.
│   │   ├── waybar/         # Waybar styling, modules, and auto-hide scripts
│   │   ├── rofi/           # Rofi spotlight/raycast themes and web search script
│   │   ├── kitty/          # Kitty terminal configuration & color schemes
│   │   ├── fastfetch/      # Fastfetch config and Spidey ASCII animation frames
│   │   ├── starship.toml   # Starship prompt configuration
│   │   ├── cava/           # Cava audio visualizer configuration and shaders
│   │   ├── btop/           # Btop resource monitor configuration
│   │   └── vicinae/        # Vicinae launcher settings
│   ├── .local/bin/         # Custom desktop & rice utility scripts
│   │   ├── cava-float      # Floating cava audio visualizer
│   │   ├── fetch-animated  # Animated fastfetch runner
│   │   ├── hypr-move       # Hyprland window mover helper
│   │   ├── hypr-resize     # Hyprland window resizer helper
│   │   ├── screenshot-full.sh   # Fullscreen screenshot to clipboard
│   │   ├── screenshot-region.sh # Region screenshot to clipboard
│   │   ├── start-lan-mouse.sh   # LAN mouse daemon starter
│   │   └── theme-switcher  # Dynamic aesthetic / theme switcher
│   ├── Pictures/Wallpapers/# Wallpapers used in this rice
│   ├── .bashrc             # Bash aliases and environment
│   ├── .bash_profile       # Bash profile
│   └── .zshrc              # Zsh plugins and prompt setup
└── vscode-settings.json    # VS Code workspace settings
```

---

## 🎨 Arch Linux Rice Overview

- **OS:** Arch Linux
- **Window Manager / Compositor:** Hyprland (Modular Lua Configuration)
- **Bar:** Waybar (Cyberpunk crimson & tech styling, dynamic auto-hide)
- **Shell:** Zsh / Bash
- **Prompt:** Starship (Red & black powerline)
- **Terminal:** Kitty
- **Application Launcher:** Rofi (Spotlight & Raycast styles) + Vicinae
- **System Information:** Fastfetch (Animated Spider-Man ASCII Art)
- **System Monitor:** Btop
- **Audio Visualizer:** Cava
- **Screenshots:** Grim + Slurp + wl-copy
- **Wallpaper Engine:** Awww / Hyprpaper

---

## ⌨️ Keybindings (Hyprland)

| Keybinding | Action |
|---|---|
| `SUPER + Q` | Open Kitty terminal |
| `SUPER + C` | Close focused window |
| `SUPER + E` | Open Thunar file manager |
| `SUPER + V` | Toggle window floating |
| `SUPER + F` | Toggle fullscreen |
| `SUPER + R` | Application Launcher (`vicinae`) |
| `SUPER + SPACE` | Toggle Vicinae launcher |
| `SUPER + M` | Floating audio visualizer (`cava`) |
| `SUPER + T` | Open theme switcher (`rofi`) |
| `SUPER + O` | Open Obsidian |
| `SUPER + D` | Reload Waybar |
| `SUPER + J` | Toggle split layout |
| `PRINT` | Fullscreen screenshot to clipboard |
| `SUPER + SHIFT + S` | Region screenshot (slurp + grim) |
| `SUPER + Arrows` | Move window focus |
| `SUPER + [1-9]` | Switch workspace |
| `SUPER + SHIFT + [1-9]` | Move active window to workspace |

---

## 📦 Required Packages (Arch Linux)

To replicate this environment:

```bash
# Core & Desktop
sudo pacman -S hyprland waybar rofi kitty starship fastfetch btop grim slurp wl-clipboard

# Audio & Extras
sudo pacman -S cava cmatrix polkit-gnome thunar

# Zsh Plugins
sudo pacman -S zsh zsh-autosuggestions zsh-syntax-highlighting

# Wallpaper Daemon & Vicinae (AUR)
yay -S awww-git vicinae-bin
```

---

## 🚀 Installation (Arch Linux)

Clone the repository and apply the `arch_linux` files:

```bash
git clone git@github.com:realgrando/dotfiles.git ~/dotfiles
cd ~/dotfiles/arch_linux

# Copy config directories
cp -r .config/* ~/.config/
cp -r .local/bin/* ~/.local/bin/
chmod +x ~/.local/bin/*
mkdir -p ~/Pictures/Wallpapers
cp -r Pictures/Wallpapers/* ~/Pictures/Wallpapers/

# Shell configs
cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
```
