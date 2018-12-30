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

# If ZSH is missing, then setup and configure defaults.

if ! [ -x "$(command -v zsh)" ]; then
    echo 'ZSH not installed. Installing ZSH and Oh_my_zsh'
    sudo apt install zsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    if ! [ -x "$(command -v sed)" ]; then
        echo 'sed not installed. Installing sed.'
        sudo apt install sed
    fi
    if ! [ -f "~/.oh_my_zsh/themes/amoyly.zsh-theme" ]; then
        echo 'Missing amoyly theme, downloading now.'
        wget https://raw.githubusercontent.com/Br1an6/amoyly.zsh-theme/master/amoyly.zsh-theme
        mv amoyly.zsh-theme ~/.oh_my_zsh/themes
        sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="amoyly"/g'
    fi
    chsh -s $(which zsh)
    echo "
    # Custom Aliases

    alias update='bash ~/Update.sh'

    # Start MOTD

    bash ~/motd.sh
    " >> .zshrc
fi


# Link the configuration files from the git repository to the appropriate locations.

cp ~/.config/conky/conky.conf ~/.config/conky/backup_conky.conf
echo 'Backed up original conky.conf to backup_conky.conf'
cp -lf ~/RidonkUtilities/conky.conf ~/.config/conky/conky.conf
echo 'Installing... conky.conf'
killall conky
echo 'Restarting conky in 5 seconds...'
conky -p 5 -q -d
cp -lf ~/RidonkUtilities/Update.sh ~/Update.sh
echo 'Installing... Update.sh'
cp -lf ~/RidonkUtilities/motd.sh ~/motd.sh
echo 'Installing... motd.sh'

# Wrap up

echo 'Installation complete. Run the command "git pull" in the repository directory at ~/RidonkUtilities to update in the future or run this script again.'
