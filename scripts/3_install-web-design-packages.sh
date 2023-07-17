#!/bin/bash

#Instalação de programas em ordem alfabética

	echo -e "\n$a Instalando Android Studio $r\n"
		flatpak install flathub com.google.AndroidStudio -y --noninteractive

	echo -e "\n$a Instalando Apache $r\n"
		sudo dnf install httpd -y -b -q
		sudo systemctl start httpd.service
		sudo systemctl enable httpd.service

	echo -e "\n$a Instalando Figma $r\n"
		flatpak install flathub io.github.Figma_Linux.figma_linux -y --noninteractive 

	echo -e "\n$a Instalando FileZilla $r\n"
		sudo dnf install filezilla -y -b -q

	echo -e "\n$a Instalando Firewall $r\n"
		sudo dnf install firewall-config -y -b -q

	echo -e "\n$a Instalando GIMP $r\n"
			flatpak install flathub org.gimp.GIMP -y --noninteractive 
			sudo git clone https://github.com/Diolinux/PhotoGIMP
			sudo cp -R ./PhotoGIMP/.var/app/org.gimp.GIMP/config/GIMP/2.10/ $HOME/.config/GIMP/
			sudo cp -R ./PhotoGIMP/.local/share/ $HOME/.local/
			sudo rm -R ./PhotoGIMP

	echo -e "\n$a Instalando Git $r\n"
		sudo dnf install git git-all -y -b -q
		flatpak install flathub io.github.shiftey.Desktop -y --noninteractive

	echo -e "\n$a Instalando MySql $r\n"
		sudo dnf install mariadb-server -y -b -q
		sudo systemctl enable mariadb
		sudo systemctl start mariadb
		#sudo mariadb-secure-installation
		
	echo -e "\n$a Instalando PHP $r\n"
		sudo dnf install php-cli -y -b -q
		sudo dnf install phpunit composer -y -b -q
		sudo dnf install php-mysqli -y -b -q
		sudo dnf install phpmyadmin -y -b -q

	echo -e "\n$a Instalando Postman $r\n"
		flatpak install flathub com.getpostman.Postman -y --noninteractive

	echo -e "\n$a Instalando Ruby $r\n"
		sudo dnf install ruby -y -b -q

	echo -e "\n$a Instalando Vim $r\n"
		sudo dnf install vim -y -b -q

	echo -e "\n$a Instalando Visual Studio Code $r\n"
		sudo dnf install code -y -b -q
		
	echo -e "\n$a Instalando WordPress $r\n"
		sudo dnf install wordpress -y -b -q

#Atualização total de pacotes e dependências

	echo -e "\n$a Atualizando programas $r\n"
		sudo dnf autoremove -y -q
		sudo dnf distro-sync -y -q
		sudo dnf check-update -y -q
		sudo dnf upgrade -y -q