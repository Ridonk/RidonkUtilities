# Ridonk\'s Utilities

A simple collection of scripts to handle basic tasks on my computers.

## Installation

### MOTD Script

`cp -l ~/RidonkUtilities/motd.sh ~/motd.sh`

Add the following to your .bashrc or .zshrc files

`sh ~/motd.sh`

### Update Scripts
`git clone git@github.com:Ridonk/RidonkUtilities.git ~/RidonkUtilities`

Debian: `cp -l ~/RidonkUtilities/Update.sh ~/Update.sh`
Fedora: `cp -l ~/RidonkUtilities/UpdateRPM.sh ~/Update.sh`

Add the following alias to your .bashrc or .zshrc (depending on shell used)
`alias update="sh ~/Update.sh"`

## Uninstall

```
rm -rf ~/RidonkUtilities
rm -rf ~/Update.sh
```
