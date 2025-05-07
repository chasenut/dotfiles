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
 - vscode
 - build-essentials
 - i3
 - pactl (for audio in i3)
 - playerctl (another pkg for i3 for audio stuff)
 - feh
 - picom (for terminal transparency)
 - nm-applet (network-manager_gnome)
 - homebrew

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

### Plugin manager for neovim
For plugin manager install **packer**
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```
## TODO

Make a script that automates installation of some packages

Good luck on your new machine!
