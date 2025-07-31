## Before you do anything

Read carefully entire README as there **may be some important information down the manual**. 

---

# Install Ubuntu
Update apt
```
sudo apt update
```
### Required packages
Install `zsh`, `stow`, `git`:
```
sudo apt install git zsh stow
```
### Optional, but recommended (I use it)
Install oh-my-zsh
```
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```
### Instalation process
Clone repo
```
git clone git@github.com:chasenut/dotfiles.git ~/.dotfiles
```
1. Make `install` executable:
```
chmod +x ~/.dotfiles/install
```
2. Run `ubuntu` as sudo:
```
zsh ~/.dotfiles/ubuntu
```
If some files are unable to be stowed, you may need to
clear `$HOME` (~) directory of certain directories that already exist.
It is recommended that you make a copy of them and then
remove them (rm -rf DIR)

3. Run `install_packages`
```
sudo zsh ~/.dotfiles/install_packages
```
It may take a while (last time I checked around 3GB).


### Packages

You can remove unwanted packages in **install_packages** script or later using **apt remove**.

This are some of the packages in this dotfiles, some may be missing.
For complete list, please read README and `install_packages`.
 - **zsh** (may be required to run some scripts)
 - **stow** (required for install script)
 - **tmux**
 - **vim**
 - **neovim** **(MUST BE VERSION > 0.10)**
 - **git**
 - ghostty
 - build-essentials
 - fzf
 - i3
   - pactl (for audio in i3)
   - playerctl (another pkg for i3 for audio stuff)
   - feh (background wallpaper for i3)
   - picom (for terminal transparency (in i3))
   - nm-applet (network-manager-gnome for i3, `nm-connection-editor`)
     - nmcli (reliable)
   - polybar (status bar for i3)
   - i3lock xautolock (for screen lock and blank)
   - maim (for sreenshots, i guess)
   - xdotool (--,,--)
   - nsxiv (image viewer)
 - fd-find (for grep-like commands, and to make nvim telescope work on ghostty)
 - homebrew
 - ripgrep
 - lua (5.1)
 - python
 - nodejs
 - npm
 - cargo
 - composer
 - rustc
 - golang-go
 - gcc
 - make

### Monitors

I also recommend to install:
 - arandr (for i3, it's a graphical interface to adjust monitor settings. To make it work: save settings (export file) and exec it in i3 config)

# Neovim

Some plugins require Neovim version to be **above 0.10**, so you can install it by running this script:
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```

And then make sure this is added to your shell config `~/.bashrc` or `~/.zshrc` (I use zsh):
`export PATH="$PATH:/opt/nvim-linux-x86_64/bin"`

### Mason stuff
I don't really know which plugins require this (and how),
but you may need to install stuff like ruby, jdk, julia etc.
Most of them you can (and do) install with apt, but julia needs
to be installed this way:
```
curl -fsSL https://install.julialang.org | sh
```

# Ghostty
If script `install_packages` does not to this, install **Ghostty** manually using `snap`:
```
snap install ghostty --classic
```

# Homebrew
Same as with Ghostty, manual install:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Fonts
This section may not be necessary.

For some characters to work, special font should be installed (nerd font) (e.g. `JetBrainsMonoNerdFont-Regular.ttf`)

What it does? Goes to fonts directory, downloads font, extracts it, removes .zip file and registers this font (i guess)

## TODO
Fix script to install packages;

Good luck on your new machine!
