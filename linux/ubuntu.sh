#!/bin/bash
export cor="\033[1;32m"
export corprg="\033[1;34m"
export corlogo="\033[1;31m"

echo -e $corlogo "+-----------------------------------+"
echo -e $corlogo "  _   _ _                 _          "
echo -e $corlogo " | | | | |__  _   _ _ __ | |_ _   _  "
echo -e $corlogo " | | | | '_ \| | | | '_ \| __| | | | "
echo -e $corlogo " | |_| | |_) | |_| | | | | |_| |_| | "
echo -e $corlogo "  \___/|_.__/ \__,_|_| |_|\__|\__,_| "
echo -e $corlogo "                                     "
echo -e $corlogo "                      PÓS INSTALAÇÃO "
echo -e $corlogo "                    GIOVANNI BERNINI "
echo -e $corlogo "        giovannibernini.ti@gmail.com "
echo -e $corlogo "+-----------------------------------+"
sleep 2

echo ""
echo -e $cor "----------------------------------"
echo -e $cor "   Adicionando ppa's ... \033[0m  "
echo -e $cor "----------------------------------"

echo ""
sudo add-apt-repository ppa:noobslab/themes

echo ""
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"

echo ""
sudo add-apt-repository ppa:snwh/pulp -y

echo ""
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

echo ""
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-zesty-prod zesty main" > /etc/apt/sources.list.d/dotnetdev.list'

echo""
sudo add-apt-repository ppa:maarten-fonville/android-studio

echo""
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

echo -e $cor "----------------------------------"
echo -e $cor "         Executando update        "
echo -e $cor "----------------------------------"
sudo apt-get update -y
echo ""

echo -e $cor "----------------------------------"
echo -e $cor "       Instalando programas       "
echo -e $cor "----------------------------------"
echo ""

echo -e $cor "Git"
sudo apt-get install git
echo ""

echo -e $cor "Gimp"
sudo apt-get install gimp
echo ""

echo -e $cor "Spotify"
sudo apt-get install spotify-client
echo ""

echo -e $cor "Inkscape"
sudo apt-get install inkscape
echo ""

echo -e $cor "Curl"
sudo apt-get install curl
echo ""

echo -e $cor "Nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
echo ""

echo -e $cor "zsh"
sudo apt-get install zsh
echo ""

echo -e $cor "OmgZsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ""

echo -e $cor "Byobu"
sudo apt-get install byobu
echo ""

echo -e $cor "Unity Tweak Tool"
sudo apt-get install unity-tweak-tool
echo ""

echo -e $corprg "Flatabulous Theme"
sudo apt-get install flatabulous-theme
echo ""

echo -e $corprg "Paper Icon Theme"
sudo apt-get install paper-icon-theme paper-gtk-theme -y 
echo ""

echo -e $corprg "MPlayer"
sudo apt-get install mplayer
echo ""

echo -e $corprg "Tree"
sudo apt install tree
echo ""

echo -e "JRE"
sudo apt-get install default-jre
echo ""

echo -e "JDK"
sudo apt-get install default-jdk
echo ""

echo -e $cor ".net core 2.0"
sudo apt-get install dotnet-sdk-2.0.0

echo -e $cor "Android Studio"
sudo apt-get install android-studio

echo -e $cor "DockerCE and Requiments"
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get install docker-ce

echo -e $cor "Docker-Compose 1.16.0"
sudo -i
curl -L https://github.com/docker/compose/releases/download/1.16.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo -e $cor "Heroku CLI"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get install heroku

echo ""
echo -e $corlogo "+-----------------------------------+"
echo -e $corlogo "           Configurações             "
echo -e $corlogo "+-----------------------------------+"
echo ""

echo -e $cor "Run docker without sudo"
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker

echo ""
echo -e $corlogo "+-----------------------------------+"
echo -e $corlogo "          Instalar a Parte           "
echo -e $corlogo "+-----------------------------------+"
echo ""

echo $corprg "- Visual Studio Code "
echo " Download: https://code.visualstudio.com/Download"

echo $corprg "- PhotoGimp "
echo " Download: http://www.diolinux.com.br/2017/04/photogimp-20171-gimp-photoshop-theme-download.html"

echo -e $corlogo "+-----------------------------------+"
echo -e $corlogo "                 Fim                 "
echo -e $corlogo "+-----------------------------------+"
echo ""
