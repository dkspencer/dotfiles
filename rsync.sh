# Settings used:
# -a: archive
# -u: update files if changes are detected
# -q: quiet - only show errors

randomName=(".i3/" ".config/rofi" ".zshrc" ".Xresources" ".config/nvim/init.vim" ".config/polybar/" ".config/ranger/rc.conf" ".config/compton.conf" ".config/spicetify/config.ini" ".config/rofi/" ".mozilla/firefox/naxyk7it.default-release/chrome/")

# Loop through the above and sync with repo
for file in ${randomName[@]}; do
    localFilePath=$HOME/$file

    # Check if directory exists
    if [ -d $localFilePath ]; then
        if [ ! -d $file ]; then
            mkdir -p $file
        fi
    fi

    # Perform the sync
    if rsync -auq $localFilePath $file; then
        echo "Successfully copied across: " $file
    else
        echo "Something went wrong: " $file
    fi

done
