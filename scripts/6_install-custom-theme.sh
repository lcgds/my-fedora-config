#!/bin/bash

echo -e "\n$a Instalando tema $r\n"
	sudo git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
	cd ./WhiteSur-gtk-theme
	sudo ./install.sh -t default -N mojave --round --HD
	sudo ./tweaks.sh -F #Connect WhiteSur theme to Flatpak
	sudo ./tweaks.sh -f -alt #Install and edit Firefox theme
	sudo ./tweaks.sh -g --no-darken -b default #Install and customize Login theme 
	cd ..
	sudo rm -r ./WhiteSur-gtk-theme
	
echo -e "\n$a Instalando papel de parede $r\n"
	sudo git clone https://github.com/vinceliuice/WhiteSur-wallpapers
	cd ./WhiteSur-wallpapers
	sudo ./install-gnome-backgrounds.sh
	cd ..
	sudo rm -r ./WhiteSur-wallpapers
	
echo -e "\n$a Instalando ícones $r\n"
	sudo git clone https://github.com/vinceliuice/WhiteSur-icon-theme
	cd ./WhiteSur-icon-theme-master
	sudo ./install.sh -a -b
	cd ..
	sudo rm -r ./WhiteSur-icon-theme-master
	
echo -e "\n$a Instalando X Cursor Gen $r\n"
	sudo dnf install xcursorgen -y -b -q

echo -e "\n$a Instalar cursor manualmente $r\n"
	firefox https://www.pling.com/p/1360254/