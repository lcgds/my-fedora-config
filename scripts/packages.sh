#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

echo -e $"\n$a Script de pacotes iniciado $r\n"

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
	
clear
