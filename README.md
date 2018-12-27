# Ridonk\'s Utilities

A simple collection of scripts to handle basic tasks on my computers.

## Installation

`git clone git@github.com:Ridonk/RidonkUtilities.git ~/RidonkUtilities`

### MOTD Script

`cp -l ~/RidonkUtilities/motd.sh ~/motd.sh`

Add the following to your .bashrc or .zshrc files

`sh ~/motd.sh`

### Update Scripts

Debian: `cp -l ~/RidonkUtilities/Update.sh ~/Update.sh`

Fedora: `cp -l ~/RidonkUtilities/UpdateRPM.sh ~/Update.sh`

Add the following alias to your .bashrc or .zshrc (depending on shell used)

`alias update="sh ~/Update.sh"`

### Conky Configuration

Install conky with `sudo dnf install conky` or `sudo apt install conky`

Install conky folder to .config folder in home directory. Overwrite any files present.

## Uninstall

```
rm -rf ~/RidonkUtilities
rm -rf ~/Update.sh
```
