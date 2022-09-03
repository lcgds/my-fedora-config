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
	
echo -e "\n$a Instalando fontes da Apple $r\n"
	#SF PRO
	sudo wget https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg
	7z x SF-Pro.dmg
	cd SFProFonts/
	7z x 'SF Pro Fonts.pkg'
	7z x Payload~
	cd Library/
	cd Fonts/
	sudo mkdir -p /usr/local/share/fonts/sf-pro/
	sudo chown -R root: /usr/local/share/fonts/sf-pro/
	sudo cp *.ttf /usr/local/share/fonts/sf-pro/
	sudo cp *.otf /usr/local/share/fonts/sf-pro/
	sudo chmod 644 /usr/local/share/fonts/sf-pro/*
	sudo restorecon -RF /usr/local/share/fonts/sf-pro/
    sudo fc-cache -v
	cd ../../../
	sudo rm -r SFProFonts/
	sudo rm SF-Pro.dmg

	#SF Compact
	sudo wget https://devimages-cdn.apple.com/design/resources/download/SF-Compact.dmg
	7z x SF-Compact.dmg
	cd SFCompactFonts/
	7z x 'SF Compact Fonts.pkg'
	7z x Payload~
	cd Library/
	cd Fonts/
	sudo mkdir -p /usr/local/share/fonts/sf-compact/
	sudo chown -R root: /usr/local/share/fonts/sf-compact/
	sudo cp *.ttf /usr/local/share/fonts/sf-compact/
	sudo cp *.otf /usr/local/share/fonts/sf-compact/
	sudo chmod 644 /usr/local/share/fonts/sf-compact/*
	sudo restorecon -RF /usr/local/share/fonts/sf-compact/
    sudo fc-cache -v
	cd ../../../
	sudo rm -r SFCompactFonts/
	sudo rm SF-Compact.dmg

	#SF Mono
	sudo wget https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg
	7z x SF-Mono.dmg
	cd SFMonoFonts/
	7z x 'SF Mono Fonts.pkg'
	7z x Payload~
	cd Library/
	cd Fonts/
	sudo mkdir -p /usr/local/share/fonts/sf-mono/
	sudo chown -R root: /usr/local/share/fonts/sf-mono/
	sudo cp *.ttf /usr/local/share/fonts/sf-mono/
	sudo cp *.otf /usr/local/share/fonts/sf-mono/
	sudo chmod 644 /usr/local/share/fonts/sf-mono/*
	sudo restorecon -RF /usr/local/share/fonts/sf-mono/
    sudo fc-cache -v
	cd ../../../
	sudo rm -r SFMonoFonts/
	sudo rm SF-Mono.dmg
	
	#New York
	sudo wget https://devimages-cdn.apple.com/design/resources/download/NY.dmg
	7z x NY.dmg
	cd NYFonts/
	7z x 'NY Fonts.pkg'
	7z x Payload~
	cd Library/
	cd Fonts/
	sudo mkdir -p /usr/local/share/fonts/ny/
	sudo chown -R root: /usr/local/share/fonts/ny/
	sudo cp *.ttf /usr/local/share/fonts/ny/
	sudo cp *.otf /usr/local/share/fonts/ny/
	sudo chmod 644 /usr/local/share/fonts/ny/*
	sudo restorecon -RF /usr/local/share/fonts/ny/
    sudo fc-cache -v
	cd ../../../
	sudo rm -r NYFonts/
	sudo rm NY.dmg

clear
