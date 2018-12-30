#!/bin/bash

# Remove config files and restore defaults where appropriate

cp -f ~/.config/conky/backup_conky.conf ~/.config/conky/conky.conf
echo 'Conky configuration restored to backup'
killall conky
echo 'Restarting conky in 5 seconds...'
conky -p 5 -q -d
rm -f ~/Update.sh
echo 'Removed update script'
rm -f ~/motd.sh
echo 'Removed motd script'
rm -rf ~/RidonkUtilities &

# Wrap up

echo 'Uninstallation complete. Note that some programs (conky, zsh) remain as they have uses outside of this configuration set. Some values set by installation may remain in their configuration files and will require manual editting to change. Refer to .zshrc if you would like to do so.'
