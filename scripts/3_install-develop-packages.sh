#!/bin/bash

#Instalação de programas em ordem alfabética

	echo -e "\n$a Instalando Apache $r\n"
		sudo dnf install httpd -y -b -q
		sudo systemctl start httpd.service
		sudo systemctl enable httpd.servicer

	echo -e "\n$a Instalando dconf Editor $r\n"
		sudo dnf install dconf-editor

	echo -e "\n$a Instalando FileZilla $r\n"
		sudo dnf install filezilla -y -b -q

	echo -e "\n$a Instalando Firewall $r\n"
		sudo dnf install firewall-config -y -b -q

	echo -e "\n$a Instalando GIMP $r\n"
			sudo dnf install gimp -y -b -q

	echo -e "\n$a Instalando Git $r\n"
		sudo dnf install git git-all -y -b -q
		sudo flatpak install flathub io.github.shiftey.Desktop -y --noninteractive

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
		sudo flatpak install flathub com.getpostman.Postman -y --noninteractive

	echo -e "\n$a Instalando Ruby $r\n"
		sudo dnf install ruby -y -b -q

	echo -e "\n$a Instalando Vim $r\n"
		sudo dnf install vim -y -b -q

	#echo -e "\n$a Instalando Visual Studio Code $r\n"
		sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
		sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
		sudo dnf check-update
		sudo dnf install code -y -b -q
		
	echo -e "\n$a Instalando WordPress $r\n"
		sudo dnf install wordpress -y -b -q

#Atualização total de pacotes e dependências

	echo -e "\n$a Atualizando programas $r\n"
		sudo dnf autoremove -y -q
		sudo dnf distro-sync -y -q
		sudo dnf upgrade -y -q