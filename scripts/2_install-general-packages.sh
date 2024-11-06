#!/bin/bash
		
	echo -e "\n$a Autorizando instalação de pacotes Flatpak e snap $r\n"
		sudo dnf install snapd -ybq
		sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Instalação de programas em ordem alfabética

	echo -e "\n$a Instalando 7z $r\n"
		sudo dnf install p7zip-plugins -ybq

	echo -e "\n$a Instalando AppEditor $r\n"
		sudo dnf install appeditor -ybq

	echo -e "\n$a Instalando Document Viewer $r\n"
		sudo dnf install evince -ybq
		
	echo -e "\n$a Instalando Drawing $r\n"
		sudo dnf install drawing -ybq

	echo -e "\n$a Instalando Frog $r\n"	
		sudo flatpak install flathub com.github.tenderowl.frog -y --noninteractive

	echo -e "\n$a Instalando Foliate $r\n"
		sudo dnf install foliate -ybq

	echo -e "\n$a Instalando Google Chrome $r\n"
		sudo dnf config-manager --set-enabled google-chrome
		sudo dnf install google-chrome-stable -ybq

	echo -e "\n$a Instalando Grub Customizer $r\n"
		sudo dnf install grub-customizer -ybq

	echo -e "\n$a Instalando ONLYOFFICE $r\n"
		sudo flatpak install flathub org.onlyoffice.desktopeditors -y --noninteractive

	echo -e "\n$a Instalando SaveDesktop $r\n"	
		sudo flatpak install flathub io.github.vikdevelop.SaveDesktop -y --noninteractive

	echo -e "\n$a Instalando Solanum $r\n"
		sudo flatpak install flathub org.gnome.Solanum -y --noninteractive

	echo -e "\n$a Instalando Spotify $r\n"
		sudo flatpak install flathub com.spotify.Client -y --noninteractive

	echo -e "\n$a Instalando Telegram $r\n"
		sudo dnf install telegram -ybq

	echo -e "\n$a Instalando Thunderbird $r\n"
		sudo dnf install thunderbird -ybq

	echo -e "\n$a Instalando Tor $r\n"
		sudo dnf install torbrowser-launcher -ybq

	echo -e "\n$a Instalando Transmission $r\n"
		sudo dnf install transmission -ybq

	echo -e "\n$a Instalando Tweaks $r\n"
		sudo dnf install gnome-tweaks -ybq

	echo -e "\n$a Instalando Video Trimmer $r\n"
		sudo flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer -y --noninteractive

	echo -e "\n$a Instalando VLC $r\n"
		sudo dnf install vlc -ybq
		sudo dnf install x265-libs libde265 libavcodec-freeworld -ybq

#Atualização total de pacotes e dependências

	echo -e "\n$a Atualizando programas $r\n"
		sudo dnf autoremove -yq
		sudo dnf distro-sync -yq
		sudo dnf check-update -yq
		sudo dnf upgrade -yq