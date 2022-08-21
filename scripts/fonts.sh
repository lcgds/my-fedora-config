#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

echo -e $"\n$a Script de fontes iniciado $r\n"

echo -e "\n$a Instalando fontes do Windows $r\n"
	sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm -y -b -q

echo -e "\n$a Instalando fontes do Google $r\n"
	sudo dnf search fonts
	sudo dnf search fonts | grep google
	sudo dnf install google-roboto-fonts.noarch -y -b -q
	sudo dnf install google-noto-fonts-common.noarch -y -b -q
	
clear
