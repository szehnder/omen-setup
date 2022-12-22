#!/usr/bin/env bash

#install chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

#add 1password apt repo
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list
sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
 curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
 sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
 curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
sudo apt update && sudo apt install 1password -y

#install tabby
wget https://github.com/Eugeny/tabby/releases/download/v1.0.148/tabby-1.0.148-linux.deb
sudo apt install ./tabby-1.0.148-linux.deb -y

#install git and a few other tools
sudo apt install git jq -y

#install zsh
sudo apt install zsh -y

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install powerline fonts
sudo apt-get install fonts-powerline -y

#install github desktop

#install  jetbrains toolbox
chmod +x install-jetbrains-toolbox.sh
./install-jetbrains-toolbox.sh

#proton-ge - minor prep work
mkdir -p ~/.steam/root/compatibilitytools.d

#install steam
sudo apt install steam -y

#install appImageLauncher a part of how you get some games to work with steam
wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
sudo apt-get install ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb

#misc
mkdir ~/Sandbox
sudo apt install gnome-tweaks htop -y
wget https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_linux_amd64.deb
sudo apt install ./dive_0.9.2_linux_amd64.deb

#install github desktop
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb
sudo apt install ./GitHubDesktop-linux-3.1.1-linux1.deb

#install gvm
sudo apt install golang bison -y
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

#install docker-desktop
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
sudo apt update
sudo apt install docker-ce containerd.io docker-compose-plugin -y

#install lutris and epic games appImageLauncher
sudo apt install libvulkan1 mesa-vulkan-drivers vulkan-utils
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris

#install wails.io
sudo apt install libgtk-3-dev nodejs nsis -y
sudo apt install libwebkit2gtk-4.0-dev -y
go install github.com/wailsapp/wails/v2/cmd/wails@latest
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

#install golang task cli
npm install -g @go-task/cli

#install other go tools
go get -u github.com/spf13/cobra@latest
go install github.com/spf13/cobra-cli@latest


#manual tasks
#- logging in to 1password
#- logging into jetbrains and beginning download of tools
#- going to proton-ge to download a release
#- had to install the ProtonUp-Qt app from the app store manually
#- docker desktop took some tomfoolery
#- lutris and epic games installer took a bit of research too

#wrapup tasks
# - save your .zshrc to repo
# - save your .ssh/config to repo

