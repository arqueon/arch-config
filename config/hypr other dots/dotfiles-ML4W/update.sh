#!/bin/bash
#  _   _           _       _       
# | | | |_ __   __| | __ _| |_ ___ 
# | | | | '_ \ / _` |/ _` | __/ _ \
# | |_| | |_) | (_| | (_| | ||  __/
#  \___/| .__/ \__,_|\__,_|\__\___|
#       |_|                        
# 
clear

repo="mylinuxforwork/dotfiles"

# Get latest tag from GitHub
get_latest_release() {
  curl --silent "https://api.github.com/repos/$repo/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

# Get latest zip from GitHub
get_latest_zip() {
  curl --silent "https://api.github.com/repos/$repo/releases/latest" | # Get latest release from GitHub api
    grep '"zipball_url":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

sleep 1
figlet "Update"
echo
echo "to ML4W Dotfiles $(get_latest_release)"
if [ ! -d $HOME/Downloads ] ;then
    echo "ERROR:: $HOME/Downloads folder not found."
    exit
fi
echo
if gum confirm "Do you want to start the update now?" ;then
    echo ":: Update started"
elif [ $? -eq 130 ]; then
    echo ":: Update canceled"
    exit
else
    echo ":: Update canceled"
    exit
fi

# Remove existing download folder and zip files 
if [ -f $HOME/Downloads/dotfiles-main.zip ] ;then
    rm $HOME/Downloads/dotfiles-main.zip
fi
if [ -f $HOME/Downloads/dotfiles-dev.zip ] ;then
    rm $HOME/Downloads/dotfiles-dev.zip
fi
if [ -f $HOME/Downloads/dotfiles.zip ] ;then
    rm $HOME/Downloads/dotfiles.zip
fi
if [ -d $HOME/Downloads/dotfiles ] ;then
    rm -rf $HOME/Downloads/dotfiles
fi
if [ -d $HOME/Downloads/dotfiles_temp ] ;then
    rm -rf $HOME/Downloads/dotfiles_temp
fi
if [ -d $HOME/Downloads/dotfiles-main ] ;then
    rm -rf $HOME/Downloads/dotfiles-main
fi
if [ -d $HOME/Downloads/dotfiles-dev ] ;then
    rm -rf $HOME/Downloads/dotfiles-dev
fi

git clone --depth 1 https://github.com/mylinuxforwork/dotfiles.git ~/Downloads/dotfiles
echo ":: Clone complete."

# Change into dotfiles folder
cd $HOME/Downloads/dotfiles
echo ":: Changed into ~/Downloads/dotfiles/"
echo 
# Start Spinner
gum spin --spinner dot --title "Starting the installation now..." -- sleep 3
./install.sh