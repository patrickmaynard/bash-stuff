#!/bin/bash

# Use f8 to boot from USB and install Linux. Then ...

sudo apt-get install -y qgis gimp neovim python3 python3-pip screen git curl wget musescore3 whois tldr gnupg kgpg php-cli sqlite3

# Now we configure the terminal to copy automatically on select, like iTerm2 does, per https://superuser.com/a/1721880

touch ~/.Xresources

echo "xterm*selectToClipboard: true" >> ~/.Xresources

# NeoVim stuff ...

mkdir -p $HOME/.config && cd $HOME/.config && git clone https://github.com/kevinquinnyo/nvim.git

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
sudo pip3 install --upgrade neovim

# Now run   nvim   and then do   :PlugInstall   to get all those new plugins running.

# Now copy your documents from the old machine to the new machine via your thumb drive or backup drive.

# Then (assuming you used the thumb drive) re-download your Linux distribution of choice and use Balena Etcher to flash the drive again.

# Then reinstall PHPStorm anyway, since it has better Symfony support than neovim, using a Google Drive document to hang onto the necessary user key.

sudo snap install phpstorm --classic

# Then reinstall Skype, using the Microsoft email address that you never use in that same document. (You'll have to reset the password that you also never use.)
