#!/bin/bash

# See if any updates exist

cd ~/RidonkUtilities
git pull
cd

# Make sure pre-requisites exist.

if ! [ -x "$(command -v conky)" ]; then
  echo 'Conky is not installed. Installing now.'
  sudo apt install conky
fi

# Link the configuration files from the git repository to the appropriate locations.

cp ~/.config/conky/conky.conf ~/.config/conky/backup_conky.conf
echo 'Backed up original conky.conf to backup_conky.conf'
cp -lf ~/RidonkUtilities/conky.conf ~/.config/conky/conky.conf
echo 'Installing... conky.conf'
cp -l ~/RidonkUtilities/Update.sh ~/Update.sh
echo 'Installing... Update.sh'
cp -l ~/RidonkUtilities/motd.sh ~/motd.sh
echo 'Installing... motd.sh'

# Add needed information to .zshrc

# Wrap up

echo 'Installation complete. Run the command "git pull" in the repository directory at ~/RidonkUtilities to update in the future or run this script again.'
