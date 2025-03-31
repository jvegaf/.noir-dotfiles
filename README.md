# About

This repo is a cozy home for scripts and configurations (aka .dotfiles) on my Linux setup. All tools are open-source and freely available, allowing you to use, modify, and share them as you like.

# Showcase

<div align="center">
  <img alt="Showcase 1" width="45%" src="./assets/showcase_1.png" />
  <img alt="Showcase 2" width="45%" src="./assets/showcase_2.png" />
</div>
<div align="center">
  <img alt="Showcase 3" width="45%" src="./assets/showcase_3.png" />
  <img alt="Showcase 4" width="45%" src="./assets/showcase_4.png" />
</div>

<details>
  <summary>More screenshots</summary>
  <div align="center">
    <img alt="Showcase 5" width="45%" src="./assets/showcase_5.png" />
  </div>
</details>

# Dependencies

- **WM:** [Niri](https://github.com/YaLTeR/niri)
- **Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **File Manager**: [Yazi](https://github.com/sxyazi/yazi) / [Thunar](https://gitlab.xfce.org/xfce/thunar)
- **Music Player:** [RMPC](https://github.com/mierak/rmpc) + [MPD](https://github.com/MusicPlayerDaemon/MPD)
- **Editor:** [Neovim](https://github.com/neovim/neovim)
- **Terminal:** [Ghostty](https://github.com/ghostty-org/ghostty)
- **Shell:** Zsh + [Zinit Plugin Manager](https://github.com/zdharma-continuum/zinit)
- **Lockscreen:** swaylock-fancy
- **Wallpaper Manager:** [SWWW](https://github.com/LGFae/swww)
- **Wallpapers:** [Link](https://github.com/somanoir/.noir-dotfiles/tree/master/.local/share/backgrounds)
- **Font:** [Maple Mono](https://github.com/subframe7536/maple-font)
- **GTK Theme:** [Catppuccin-Macchiato](https://github.com/catppuccin/gtk)
- **Qt Theme:** [Catppuccin-Macchiato](https://github.com/catppuccin/qt5ct)
- **Cursor:** [Catppuccin-Macchiato](https://github.com/catppuccin/cursors)
- **Icon Theme:** [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)

# Installation

### Arch(-based) distros

1. Functional part

```
paru -Sy niri xwayland-satellite waybar ghostty neovim-nightly swww swaylock-fancy-git xdg-desktop-portal-gnome libqalculate mpd rmpc mpd rmpc yazi thunar thunar-archive-plugin thunar-media-tags-plugin thunar-shares-plugin thunar-vcs-plugin thunar-volman
```

2. Theme dependencies and customization part

```
paru -Syu catppuccin-gtk-theme-macchiato catppuccin-cursors-macchiato maplemono-ttf maplemono-nf-unhinted maplemono-nf-cn-unhinted papirus-icon-theme stow nwg-look gradience qt5ct qt6ct-kde kvantum-git kvantum-qt5
```

3. Personally, I use [stow](https://www.gnu.org/software/stow/) for managing my .dotfiles

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

5. Set wallpaper with the following command (it will later be handled automatically on every boot as long as swww-daemon is running)

```
swww img path/to/your/wallpaper.png
```

6. Music Player Setup (RMPC + MPD)
```
mkdir ~/.local/share/mpd
touch ~/.local/share/mpd/database
touch ~/.local/share/mpd/playlists
touch ~/.local/share/mpd/state
touch ~/.local/share/mpd/sticker.sql

systemctl --user enable --now mpd.service
```

7. (Optional) Themes can be customized through nwg-look (GTK-3), Gradience (GTK-4) and kvantum, qt5ct, qt6ct (Qt)

# Communication

If you have any questions or suggestions regarding the project, feel free to join [Discussions](https://github.com/somanoir/.noir-dotfiles/discussions).

Found a bug? Open an [Issue](https://github.com/somanoir/.noir-dotfiles/issues).