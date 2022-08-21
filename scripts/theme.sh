#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

echo -e $"\n$a Script de tema iniciado $r\n"

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

clear
