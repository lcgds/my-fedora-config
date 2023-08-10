#!/bin/bash

echo -e "\n$a Instalando Extension Manager $r\n"
	sudo flatpak install flathub com.mattjakeman.ExtensionManager -y --noninteractive 

echo -e "\n$a Acessando Gnome Extensions para Desativar Validação de Versão $r\n"
	firefox https://extensions.gnome.org/local/
	
echo -e "\n$a Importando extensões já configuradas $r\n"
	sudo tar -xf extensions.tar.xz -C ~/.local/share/gnome-shell/

echo -e "\n$a Executando gerenciadores de extensões para configurações manuais $r\n"
	flatpak run com.mattjakeman.ExtensionManager
	gnome-tweaks