#!/bin/bash

	echo -e "\n$a Autorizando instalação de pacotes de softwares proprietários $r\n"
		sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y -b -q
		sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y -b -q
		sudo dnf install fedora-workstation-repositories -y -b -q
		sudo dnf groupupdate core -y -b -q
		
	echo -e "\n$a Autorizando instalação de pacotes Flatpak e snap $r\n"
		sudo dnf install snapd -y -b -q
		sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Instalação de programas em ordem alfabética

	echo -e "\n$a Instalando 7z $r\n"
		sudo dnf install p7zip-plugins -y -b -q

	echo -e "\n$a Instalando AppEditor $r\n"
		sudo dnf install appeditor -y -b -q

	echo -e "\n$a Instalando Discord $r\n"
		sudo flatpak install flathub com.discordapp.Discord -y --noninteractive

	echo -e "\n$a Instalando Document Viewer $r\n"
		sudo dnf install evince -y -b -q
		
	echo -e "\n$a Instalando Drawing $r\n"
		sudo dnf install drawing -y -b -q

	echo -e "\n$a Instalando Frog $r\n"	
		sudo flatpak install flathub com.github.tenderowl.frog -y --noninteractive

	echo -e "\n$a Instalando Google Chrome $r\n"
		sudo dnf config-manager --set-enabled google-chrome
		sudo dnf install google-chrome-stable -y -b -q

	echo -e "\n$a Instalando Grub Customizer $r\n"
		sudo dnf install grub-customizer -y -b -q

	echo -e "\n$a Instalando LibreOffice $r\n"
		sudo dnf install libreoffice -y -b -q
		
	echo -e "\n$a Instalando Skype $r\n"
		sudo flatpak install flathub com.skype.Client -y --noninteractive

	echo -e "\n$a Instalando Solanum $r\n"
		sudo flatpak install flathub org.gnome.Solanum -y --noninteractive

	echo -e "\n$a Instalando Spotify $r\n"
		sudo flatpak install flathub com.spotify.Client -y --noninteractive

	echo -e "\n$a Instalando Telegram $r\n"
		sudo dnf install telegram -y -b -q

	echo -e "\n$a Instalando Tor $r\n"
		sudo dnf install torbrowser-launcher -y -b -q

	echo -e "\n$a Instalando Transmission $r\n"
		sudo dnf install transmission -y -b -q

	echo -e "\n$a Instalando Tweaks $r\n"
		sudo dnf install gnome-tweaks -y -b -q

	echo -e "\n$a Instalando Video Trimmer $r\n"
		sudo flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer -y --noninteractive

	echo -e "\n$a Instalando VLC $r\n"
		sudo dnf install vlc -y -b -q
		
	echo -e "\n$a Instalando Zoom $r\n"
		sudo flatpak install flathub us.zoom.Zoom -y --noninteractive

#Atualização total de pacotes e dependências

	echo -e "\n$a Atualizando programas $r\n"
		sudo dnf autoremove -y -q
		sudo dnf distro-sync -y -q
		sudo dnf check-update -y -q
		sudo dnf upgrade -y -q