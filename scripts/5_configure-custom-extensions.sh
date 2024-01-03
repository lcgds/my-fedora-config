#!/bin/bash

echo -e "\n$a Instalando Extension Manager $r\n"
	sudo dnf install gnome-extensions -y -b -q
	sudo flatpak install flathub com.mattjakeman.ExtensionManager -y --noninteractive

echo -e "\n$a Configurando Gnome Extensions $r\n"
	sudo gsettings set org.gnome.shell disable-extension-version-validation "true"
	
echo -e "\n$a Importando extensões $r\n"
	#cd ~/.local/share/gnome-shell/
	#sudo tar -cjf extensions.tar.bz2 extensions
	sudo tar -xjf extensions.tar.bz2 -C ~/.local/share/gnome-shell/

echo -e "\n$a Configurando extensões $r\n"
	sudo gnome-extensions enable AlphabeticalAppGrid@stuarthayhurst
	sudo gnome-extensions enable auto-activities@CleoMenezesJr.github.io
	sudo gnome-extensions enable blur-my-shell@aunetx
	sudo gnome-extensions enable custom-hot-corners-extended@G-dH.github.com
	sudo gnome-extensions enable color-picker@tuberry
	sudo gnome-extensions enable date-menu-formatter@marcinjakubowski.github.com
	sudo gnome-extensions enable emoji-selector@maestroschan.fr
	sudo gnome-extensions enable just-perfection-desktop@just-perfection
	sudo gnome-extensions enable nightthemeswitcher@romainvigier.fr
	sudo gnome-extensions enable panel-osd@berend.de.schouwer.gmail.com
	sudo gnome-extensions enable rounded-window-corners@yilozt
	sudo gnome-extensions enable tiling-assistant@leleat-on-github
	sudo gnome-extensions disable appindicatorsupport@rgcjonas.gmail.com
	sudo gnome-extensions disable apps-menu@gnome-shell-extensions.gcampax.github.com
	sudo gnome-extensions disable background-logo@fedorahosted.org
	sudo gnome-extensions disable launch-new-instance@gnome-shell-extensions.gcampax.github.com
	sudo gnome-extensions disable places-menu@gnome-shell-extensions.gcampax.github.com
	sudo gnome-extensions disable window-list@gnome-shell-extensions.gcampax.github.com