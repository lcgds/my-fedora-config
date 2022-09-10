#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

echo -e $"\n$a Script de instalação completa iniciado $r\n"

#Pacotes

echo -e "\n$a Removendo bloatware $r\n"
	sudo dnf remove simple-scan -y -q
	sudo dnf remove rhythmbox -y -q
	sudo dnf remove gnome-tour -y -q

echo -e "\n$a Autorizando instalação de pacotes de softwares proprietários $r\n"
	sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y -b -q
	sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y -b -q
	sudo dnf install fedora-workstation-repositories -y -b -q
	sudo dnf groupupdate core -y -b -q
	
echo -e "\n$a Autorizando instalação de pacotes Flatpak e snap $r\n"
	sudo dnf install snapd -y -b -q
	sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo -e "\n$a Iniciando processo de atualização de pacotes $r\n"
	sudo dnf upgrade -y -b -q
	sudo dnf update -y -b -q
	
echo -e "\n$a Instalando Google Chrome $r\n"
	sudo dnf config-manager --set-enabled google-chrome
	sudo dnf install google-chrome-stable -y -b -q
	
echo -e "\n$a Instalando VLC $r\n"
	sudo dnf install vlc -y -b -q

echo -e "\n$a Instalando GIMP $r\n"
	sudo dnf install gimp -y -b -q
	
echo -e "\n$a Instalando LibreOffice $r\n"
	sudo dnf install libreoffice -y -b -q
	
echo -e "\n$a Instalando Document Viewer $r\n"
	sudo dnf install evince -y -b -q
	
echo -e "\n$a Instalando comando 'youtube-dl' $r\n"
	sudo dnf install youtube-dl -y -b -q
	
echo -e "\n$a Instalando Visual Studio Code' $r\n"
	flatpak install flathub com.visualstudio.code -y --noninteractive
	
echo -e "\n$a Instalando Skype $r\n"
	flatpak install flathub com.skype.Client -y --noninteractive
	
echo -e "\n$a Instalando Discord $r\n"
	flatpak install flathub com.discordapp.Discord -y --noninteractive

echo -e "\n$a Instalando Telegram $r\n"
	sudo dnf install telegram -y -b -q
	
echo -e "\n$a Instalando Zoom $r\n"
	flatpak install flathub us.zoom.Zoom -y --noninteractive
	
echo -e "\n$a Instalando Gnome Tweaks $r\n"
	sudo dnf install gnome-tweaks -y -b -q
	
echo -e "\n$a Instalando Tor $r\n"
	sudo dnf install torbrowser-launcher -y -b -q
	
echo -e "\n$a Instalando AnyDesk $r\n"
	flatpak install flathub com.anydesk.Anydesk -y --noninteractive
	
echo -e "\n$a Instalando Postman $r\n"
	flatpak install flathub com.getpostman.Postman -y --noninteractive

echo -e "\n$a Instalando Microsoft Teams $r\n"
	flatpak install flathub com.microsoft.Teams -y --noninteractive
	
echo -e "\n$a Instalando Blanket $r\n"
	flatpak install flathub com.rafaelmardojai.Blanket -y --noninteractive
	
echo -e "\n$a Instalando Peek $r\n"
	sudo dnf install peek -y -b -q
	
echo -e "\n$a Instalando Video Trimmer $r\n"
	flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer -y --noninteractive
	
echo -e "\n$a Instalando Figma $r\n"
	flatpak install flathub io.github.Figma_Linux.figma_linux -y --noninteractive
	
echo -e "\n$a Instalando MySql $r\n"
	sudo dnf install mariadb-server -y -b -q
	sudo systemctl enable mariadb
	sudo systemctl start mariadb
	sudo mariadb-secure-installation
	
echo -e "\n$a Instalando Sequeler $r\n"
	sudo dnf install sequeler -y -b -q
	
echo -e "\n$a Instalando GNOME Chess $r\n"
	sudo dnf install gnome-chess -y -b -q
	
echo -e "\n$a Instalando Drawing $r\n"
	sudo dnf install drawing -y -b -q

echo -e "\n$a Instalando draw-io $r\n"
	flatpak install flathub com.jgraph.drawio.desktop -y --noninteractive
	
echo -e "\n$a Instalando Color Picker $r\n"
	sudo dnf install gcolor3 -y -b -q
	
echo -e "\n$a Instalando Git $r\n"
	sudo dnf install git git-all -y -b -q
	flatpak install flathub io.github.shiftey.Desktop -y --noninteractive
	
echo -e "\n$a Instalando Transmission $r\n"
	sudo dnf install transmission -y -b -q
	
echo -e "\n$a Instalando Geary $r\n"
	sudo dnf install geary -y -b -q
	
echo -e "\n$a Instalando Foliate $r\n"
	sudo dnf install foliate -y -b -q
	
echo -e "\n$a Instalando PDF Arranger $r\n"
	sudo dnf install pdfarranger -y -b -q
	
echo -e "\n$a Instalando AppEditor $r\n"
	sudo dnf install appeditor -y -b -q

echo -e "\n$a Instalando Decoder $r\n"	
	flatpak install flathub com.belmoussaoui.Decoder -y --noninteractive
	
echo -e "\n$a Instalando Frog $r\n"	
	flatpak install flathub com.github.tenderowl.frog -y --noninteractive
	
echo -e "\n$a Instalando Font Manager $r\n"
	flatpak install flathub org.gnome.FontManager -y --noninteractive
	
echo -e "\n$a Instalando Font Manager $r\n"
	sudo dnf install gnome-photos -y -b -q
	
echo -e "\n$a Instalando Image Optimizer $r\n"
	flatpak install flathub com.github.gijsgoudzwaard.image-optimizer -y --noninteractive
	
echo -e "\n$a Instalando Android Studio $r\n"
	flatpak install flathub com.google.AndroidStudio -y --noninteractive
	
echo -e "\n$a Instalando Solanum $r\n"
	flatpak install flathub org.gnome.Solanum --noninteractive
	
echo -e "\n$a Instalando Grub Customizer $r\n"
	sudo dnf install grub-customizer -y -b -q
	
echo -e "\n$a Instalando Video Downloader $r\n"
	flatpak install flathub com.github.unrud.VideoDownloader -y --noninteractive
	
echo -e "\n$a Instalando Inkscape $r\n"
	sudo dnf install inkscape -y -b -q
	
echo -e "\n$a Instalando X Cursor Gen $r\n"
	sudo dnf install xcursorgen -y -b -q
	
echo -e "\n$a Instalando Ruby $r\n"
	sudo dnf install ruby -y -b -q
	
echo -e "\n$a Instalando Apache $r\n"
	sudo dnf install httpd -y -b -q
	sudo systemctl start httpd.service
	sudo systemctl enable httpd.service
	
echo -e "\n$a Instalando 7z $r\n"
	sudo dnf install p7zip-plugins -y -b -q

	echo -e "\n$a Instalando PHP $r\n"
	sudo dnf install php-cli -y -b -q
	sudo dnf install phpunit composer -y -b -q
	sudo dnf install php-mysqli -y -b -q
	sudo dnf install phpmyadmin -y -b -q
	
echo -e "\n$a Instalando WordPress $r\n"
	sudo dnf install wordpress -y -b -q

echo -e "\n$a Instalando Vim $r\n"
	sudo dnf install vim -y -b -q

echo -e "\n$a Limpando terminal$r\n"
	sudo dnf clean
	
#Fontes

echo -e "\n$a Instalando fontes do Windows $r\n"
	sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm -y -b -q

echo -e "\n$a Instalando fontes do Google $r\n"
	sudo dnf install google-roboto-fonts.noarch -y -b -q
	sudo dnf install google-noto-fonts-common.noarch -y -b -
	
echo -e "\n$a Instalando fontes da Apple $r\n"
	#SF PRO
	sudo wget https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg
	7z x SF-Pro.dmg
	cd SFProFonts/
	7z x 'SF Pro Fonts.pkg'
	7z x Payload~
	cd Library/
	cd Fonts/
	sudo mkdir -p /usr/local/share/fonts/sf-pro/
	sudo chown -R root: /usr/local/share/fonts/sf-pro/
	sudo cp *.ttf /usr/local/share/fonts/sf-pro/
	sudo cp *.otf /usr/local/share/fonts/sf-pro/
	sudo chmod 644 /usr/local/share/fonts/sf-pro/*
	sudo restorecon -RF /usr/local/share/fonts/sf-pro/
    sudo fc-cache -v
	cd ../../../
	sudo rm -r SFProFonts/
	sudo rm SF-Pro.dmg

	#SF Compact
	sudo wget https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg
	7z x SF-Compact.dmg
	cd SFCompactFonts/
	7z x 'SF Compact Fonts.pkg'
	7z x Payload~
	cd Library/
	cd Fonts/
	sudo mkdir -p /usr/local/share/fonts/sf-compact/
	sudo chown -R root: /usr/local/share/fonts/sf-compact/
	sudo cp *.ttf /usr/local/share/fonts/sf-compact/
	sudo cp *.otf /usr/local/share/fonts/sf-compact/
	sudo chmod 644 /usr/local/share/fonts/sf-compact/*
	sudo restorecon -RF /usr/local/share/fonts/sf-compact/
    sudo fc-cache -v
	cd ../../../
	sudo rm -r SFCompactFonts/
	sudo rm SF-Compact.dmg

	#SF Mono
	sudo wget https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg
	7z x SF-Mono.dmg
	cd SFMonoFonts/
	7z x 'SF Mono Fonts.pkg'
	7z x Payload~
	cd Library/
	cd Fonts/
	sudo mkdir -p /usr/local/share/fonts/sf-mono/
	sudo chown -R root: /usr/local/share/fonts/sf-mono/
	sudo cp *.ttf /usr/local/share/fonts/sf-mono/
	sudo cp *.otf /usr/local/share/fonts/sf-mono/
	sudo chmod 644 /usr/local/share/fonts/sf-mono/*
	sudo restorecon -RF /usr/local/share/fonts/sf-mono/
    sudo fc-cache -v
	cd ../../../
	sudo rm -r SFMonoFonts/
	sudo rm SF-Mono.dmg
	
	#New York
	sudo wget https://devimages-cdn.apple.com/design/resources/download/NY.dmg
	7z x NY.dmg
	cd NYFonts/
	7z x 'NY Fonts.pkg'
	7z x Payload~
	cd Library/
	cd Fonts/
	sudo mkdir -p /usr/local/share/fonts/ny/
	sudo chown -R root: /usr/local/share/fonts/ny/
	sudo cp *.ttf /usr/local/share/fonts/ny/
	sudo cp *.otf /usr/local/share/fonts/ny/
	sudo chmod 644 /usr/local/share/fonts/ny/*
	sudo restorecon -RF /usr/local/share/fonts/ny/
    sudo fc-cache -v
	cd ../../../
	sudo rm -r NYFonts/
	sudo rm NY.dmg

#Tema

echo -e "\n$a Instalando tema $r\n"
	sudo git clone https://github.com/vinceliuice/WhiteSur-gtk-theme/
	cd ./WhiteSur-gtk-theme
	#sudo ./install.sh -r 
	sudo ./install.sh -c Dark -c Light -t default -N mojave
	#sudo ./tweaks.sh -f -r
	#sudo ./tweaks.sh -F -r
	#sudo ./tweaks.sh -s -r
	sudo ./tweaks.sh -F -s
	cd ..
	sudo rm -r ./WhiteSur-gtk-theme
	
echo -e "\n$a Instalando papel de parede $r\n"
	sudo git clone https://github.com/vinceliuice/WhiteSur-wallpapers
	cd ./WhiteSur-wallpapers
	sudo ./install-gnome-backgrounds.sh -t whitesur -s 4k
	cd ..
	sudo rm -r ./WhiteSur-wallpapers
	
echo -e "\n$a Instalando ícones $r\n"
	sudo git clone https://github.com/yeyushengfan258/Reversal-icon-theme/
	cd ./Reversal-icon-theme
	sudo ./install.sh
	cd ..
	sudo rm -r ./Reversal-icon-theme
	
echo -e "\n$a Instalando cursor $r\n"
	firefox https://www.pling.com/p/1360254/

#Extensões

echo -e "\n$a Abrindo extensões para instalação manual $r\n"
	flatpak run org.gnome.Extensions
	
	firefox https://extensions.gnome.org/extension/4179/auto-activities/
	firefox https://extensions.gnome.org/extension/4702/awesome-tiles/ #Gap-space recomendado: 02
	firefox https://extensions.gnome.org/extension/1401/bluetooth-quick-connect/
	firefox https://extensions.gnome.org/extension/3193/blur-my-shell/
	firefox https://extensions.gnome.org/extension/517/caffeine/
	firefox https://extensions.gnome.org/extension/3396/color-picker/
	firefox https://extensions.gnome.org/extension/4167/custom-hot-corners-extended/
	firefox https://extensions.gnome.org/extension/1162/emoji-selector/
	firefox https://extensions.gnome.org/extension/744/hide-activities-button/
	firefox https://extensions.gnome.org/extension/277/impatience/
	firefox https://extensions.gnome.org/extension/3843/just-perfection/
	firefox https://extensions.gnome.org/extension/2236/night-theme-switcher/
	firefox https://extensions.gnome.org/extension/4372/shutdowntimer/
	firefox https://extensions.gnome.org/extension/906/sound-output-device-chooser/
	firefox https://extensions.gnome.org/extension/2236/night-theme-switcher/
	firefox https://extensions.gnome.org/extension/19/user-themes/

clear
