# Showcase

# Dependencies

- **WM:** [Niri](https://github.com/YaLTeR/niri)
- **Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **Editor:** [Neovim](https://github.com/neovim/neovim)
- **Shell:** Zsh + [Zinit Plugin Manager](https://github.com/zdharma-continuum/zinit)
- **Terminal:** [Ghostty](https://github.com/ghostty-org/ghostty)
- **Lockscreen:** swaylock-fancy
- **Wallpaper Manager:** [SWWW](https://github.com/LGFae/swww)
- **Font:** [Maple Mono](https://github.com/subframe7536/maple-font)
- **GTK Theme:** [Catppuccin-Macchiato](https://github.com/catppuccin/gtk)
- **Qt Theme:** [Catppuccin-Macchiato](https://github.com/catppuccin/qt5ct)
- **Cursor:** [Catppuccin-Macchiato](https://github.com/catppuccin/cursors)
- **Icon Theme:** [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)

# Installation

### Arch(-based) distros

1. Functional part
```
paru -Syu niri xwayland-satellite waybar neovim-nightly swww swaylock-fancy-git xdg-desktop-portal-gnome libqalculate qalculate-gtk
```

2. Theme dependencies and customization part
```
paru -Syu catppuccin-gtk-theme-macchiato catppuccin-cursors-macchiato maplemono-ttf maplemono-nf-unhinted maplemono-nf-cn-unhinted papirus-icon-theme stow nwg-look gradience qt5ct qt6ct-kde kvantum-git kvantum-qt5
```

3. Personally, I use [stow](https://www.gnu.org/software/stow/) for managing my .dotfiles.
```
cd ~
git clone --depth 1 https://github.com/somanoir/.noir-dotfiles.git
cd .noir-dotfiles
stow .
# Possibly an overkill on setting up cursor theme
gsettings set org.gnome.desktop.interface cursor-theme 'catppuccin-macchiato-lavender-cursors'
# For bat to use specified theme
bat cache --build
```

4. Gtk-4 customization
```
sudo flatpak override --filesystem=xdg-data/themes
```

5. Set wallpaper with the following command (it will later be handled automatically on every boot as long as swww-daemon is running):
```
swww img path/to/your/wallpaper.png
```

Themes can be customized through nwg-look (GTK-3), Gradience (GTK-4) and kvantum, qt5ct, qt6ct (Qt)

# Communication

If you have any questions or suggestions regarding the project, feel free to join [Discussions](https://github.com/somanoir/.noir-dotfiles/discussions).

Found a bug? Open an [Issue](https://github.com/somanoir/.noir-dotfiles/issues).