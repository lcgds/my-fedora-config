#!/bin/bash

echo -e "\n$a Instalando GIMP $r\n"
	flatpak install flathub org.gimp.GIMP -y --noninteractive 
	
	sudo git clone https://github.com/Diolinux/PhotoGIMP
 	sudo cp -R ./PhotoGIMP/.var/app/org.gimp.GIMP/config/GIMP/2.10/ $HOME/.config/GIMP/
	#sudo cp -R ./PhotoGIMP/.var/app/org.gimp.GIMP/config/GIMP/2.10/ /home/lcgds/.config/GIMP/
	sudo cp -R ./PhotoGIMP/.local/share/ $HOME/.local/
	#sudo cp -R ./PhotoGIMP/.local/share/ /home/lcgds/.local/
	sudo rm -R ./PhotoGIMP

echo -e "\n$a Instalando Figma $r\n"
	flatpak install flathub io.github.Figma_Linux.figma_linux -y --noninteractive 

echo -e "\n$a Instalando Inkscape $r\n"
	sudo dnf install inkscape -y -b -q

#Atualização total de pacotes e dependências

echo -e "\n$a Atualizando programas $r\n"
	sudo dnf autoremove -y -q
	sudo dnf distro-sync -y -q
	sudo dnf check-update -y -q
	sudo dnf upgrade -y -q
	sudo dnf clean -y -q