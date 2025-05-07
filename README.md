## Install
Clone repo
```
git clone git@github.com:Cashtann/dotfiles.git ~/.dotfiles
```



You may need to install some software manually (not everything is included here nor in Brewfile):
 - zsh (may be required to run some scripts)
 - stow (required for install script)
 - tmux
 - vim
 - neovim
 - git
 - vscode
 - build-essentials
 - i3
 - pactl (for audio in i3)
 - playerctl (another pkg for i3 for audio stuff)
 - feh
 - picom (for terminal transparency)
 - nm-applet (network-manager_gnome)


I also recommend to install:
 - arandr (for i3, it's a graphical interface to adjust monitor settings. To make it work: save settings (export file) and exec it in i3 config)

# NeoVim

For plugin manager install *packer*
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

Good luck on your new machine!
