#!/bin/bash

#Fontes

	echo -e "\n$a Instalando fontes do Windows $r\n"
		sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm -ybq

	echo -e "\n$a Instalando fontes do Google $r\n"
		sudo dnf search fonts
		sudo dnf search fonts | grep google
		sudo dnf install google-roboto-fonts.noarch -ybq
		sudo dnf install google-noto-fonts-common.noarch -ybq

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
		rm -rf SFProFonts/
		rm -f SF-Pro.dmg

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
		rm -rf SFCompactFonts/
		rm -f SF-Compact.dmg

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
		rm -rf SFMonoFonts/
		rm -f SF-Mono.dmg
	
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
		rm -rf NYFonts/
		rm -f NY.dmg

	echo -e "\n$a Instalando fonte Fira Code $r\n"
		sudo dnf install fira-code-fonts -ybq

#Papéis de parede
	echo -e "\n$a Instalando papéis de parede $r\n"
		git clone -q https://github.com/vinceliuice/WhiteSur-wallpapers
		sudo bash WhiteSur-wallpapers/install-gnome-backgrounds.sh -t whitesur
		rm -rf WhiteSur-wallpapers/

		git clone -q https://github.com/foxt/macOS-Wallpapers
		sudo cp macOS-Wallpapers/*.jpg ~/.local/share/backgrounds/
		rm -rf macOS-Wallpapers/

		git clone -q https://github.com/lcgds/mojave-on-linux.git
		sudo cp -r mojave-on-linux/Mojave/ /usr/share/backgrounds/ && sudo cp mojave-on-linux/Mojave.xml /usr/share/gnome-background-properties/
		rm -rf mojave-on-linux

	
#Ícones
	echo -e "\n$a Instalando ícones $r\n"
		sudo git clone -q https://github.com/yeyushengfan258/Reversal-icon-theme/
		cd ./Reversal-icon-theme
		sudo ./install.sh
		cd ..
		sudo rm -r ./Reversal-icon-theme

#Cursores
	echo -e "\n$a Instalando cursores $r\n"
		#https://www.gnome-look.org/p/1360254
		sudo cp -r ./src/oreo_black_cursors/ /usr/share/icons/
		sudo cp -r ./src/oreo_white_cursors/ /usr/share/icons/