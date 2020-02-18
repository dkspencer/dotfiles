# update i3
rsync -avu --delete "$HOME/.i3/" ".i3"

# update rofi
rsync -avu "$HOME/.config/rofi/" ".config/rofi/"

# update zsh
rsync -avu "$HOME/.zshrc" .

# update xresources
rsync -avu "$HOME/.Xresources" .

# update nvim
rsync -avu "$HOME/.config/nvim/init.vim" ".config/nvim/init.vim"

# update polybar
rsync -avu "$HOME/.config/polybar/" ".config/polybar/"

# update ranger
rsync -avu "$HOME/.config/ranger/rc.conf" ".config/ranger/rc.conf"

# update compton
rsync -avu "$HOME/.config/compton.conf" ".config/compton.conf"
