#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    git clone https://github.com/fayimora/vps_dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    [ "$1" == "ask" ] && export ASK="true"
    rake install
    chmod +x "$HOME/.yadr/bin/reattach-to-user-namespace"
else
    echo "YADR is already installed"
fi
