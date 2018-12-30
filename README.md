# Ridonk\'s Utilities

A simple collection of scripts to handle basic tasks on my ubuntu-based computers.

## Installation

```
git clone git@github.com:Ridonk/RidonkUtilities.git ~/RidonkUtilities
bash ~/RidonkUtilities/Install.sh
```

### MOTD Script

Manual installation:

```
cp -l ~/RidonkUtilities/motd.sh ~/motd.sh
```

Add the following to your .bashrc or .zshrc files

```
bash ~/motd.sh
```

### Update Scripts

Manual installation: 
```
cp -l ~/RidonkUtilities/Update.sh ~/Update.sh
```

Add the following alias to your .bashrc or .zshrc (depending on shell used)

```
alias update="bash ~/Update.sh"
```

### Conky Configuration

First make sure conky is installed.

```
sudo apt install conky
```

To manual install put the conky.conf file to .config/conky folder in home directory. Overwrite any files present and create any missing directories.

```
mkdir ~/.config/conky
cp -lf ~/RidonkUtilities/conky.conf ~/.config/conky/conky.conf
```

## Update

Update easily by issuing the following command from the repository's root folder on your file system:

```
git pull
```

## Uninstall

The following script will take care of all file links created during installation steps automagically and then remove the repository.

```
bash ~/RidonkUtilities/Uninstall.sh
```
