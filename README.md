## Before you do anything

Read carefully entire README as there **may be some important information further**. 

---

# Install
Clone repo
```
git clone git@github.com:Cashtann/dotfiles.git ~/.dotfiles
```

Before you run the script, make sure you have `zsh` and `stow` installed.
Run `install` script to put all **dotfiles** in your **$HOME** directory.

### Packages

You may need to install some software manually (not everything is included here nor in Brewfile):
 - **zsh** (may be required to run some scripts)
 - **stow** (required for install script)
 - **tmux**
 - **vim**
 - **neovim** **(MUST BE VERSION > 0.10)**
 - **git**
 - ghostty
 - build-essentials
 - i3
   - pactl (for audio in i3)
   - playerctl (another pkg for i3 for audio stuff)
   - feh (background wallpaper for i3)
   - picom (for terminal transparency (in i3))
   - nm-applet (network-manager-gnome for i3, `nm-connection-editor`)
     - nmcli (reliable)
   - polybar (status bar for i3)
 - fd-find (for grep-like commands, and to make nvim telescope work on ghostty)
 - homebrew
 - ripgrep
 - lua (5.1)
 - python
 - nodejs
 - npm

### Fonts

This section may not be necessary.

For some characters to work, special font should be installed (nerd font) (e.g. `JetBrainsMonoNerdFont-Regular.ttf`)

What it does? Goes to fonts directory, downloads font, extracts it, removes .zip file and registers this font (i guess)

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

And then make sure this is added to your shell config `~/.bashrc` or `~/.zshrc` (in this dotfiles repo it is):
`export PATH="$PATH:/opt/nvim-linux-x86_64/bin"`


## TODO

Make a script that automates installation of some packages

Good luck on your new machine!
