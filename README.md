# Ridonk\'s Utilities

A simple collection of scripts to handle basic tasks on my computers.

## Installation

```
git clone git@github.com:Ridonk/RidonkUtilities.git ~/RidonkUtilities
```

### MOTD Script

```
cp -l ~/RidonkUtilities/motd.sh ~/motd.sh
```

Add the following to your .bashrc or .zshrc files

```
sh ~/motd.sh
```

### Update Scripts

Ubuntu: 
```
cp -l ~/RidonkUtilities/Update.sh ~/Update.sh
```

Fedora: 
```
cp -l ~/RidonkUtilities/UpdateRPM.sh ~/Update.sh
```

Add the following alias to your .bashrc or .zshrc (depending on shell used)

```
alias update="sh ~/Update.sh"
```

### Conky Configuration

First make sure conky is installed.

Fedora: 
```
sudo dnf install conky
```

Ubuntu:
```
sudo apt install conky
```

Install conky.conf file to .config/conky folder in home directory. Overwrite any files present and create any missing directories.

```
cp -lf ~/RidonkUtilities/conky.conf ~/.config/conky/conky.conf
```

## Update

Update easily by issuing the following command from the repository's root folder on your file system:

```
git pull
```

## Uninstall

The following script will take care of all file links created during installation steps automagically and then remove the repository.

Ubuntu: 

```
bash ~/RidonkUtilities/Uninstall.sh
```

Fedora:

```
bash ~/RidonkUtilities/UninstallRPM.sh
```
