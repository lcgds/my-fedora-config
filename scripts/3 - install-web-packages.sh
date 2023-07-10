#!/bin/bash

echo -e "\n$a Instalando Android Studio $r\n"
	flatpak install flathub com.google.AndroidStudio -y --noninteractive

echo -e "\n$a Instalando Apache $r\n"
	sudo dnf install httpd -y -b -q
	sudo systemctl start httpd.service
	sudo systemctl enable httpd.service

echo -e "\n$a Instalando FileZilla $r\n"
	sudo dnf install filezilla -y -b -q

echo -e "\n$a Instalando Firewall $r\n"
	sudo dnf install firewall-config -y -b -q

echo -e "\n$a Instalando Git $r\n"
	sudo dnf install git git-all -y -b -q
	flatpak install flathub io.github.shiftey.Desktop -y --noninteractive

echo -e "\n$a Instalando MySql $r\n"
	sudo dnf install mariadb-server -y -b -q
	sudo systemctl enable mariadb
	sudo systemctl start mariadb
	sudo mariadb-secure-installation
	
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

#Extensões do Visual Studio Code
	
echo -e "\n$a Instalando WordPress $r\n"
	sudo dnf install wordpress -y -b -q

echo -e "\n$a Limpando cache$r\n"
	sudo dnf clean