#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

echo -e $"\n$a Script de extensões iniciado $r\n"

echo -e "\n$a Abrindo extensões para instalação manual $r\n"
	flatpak run org.gnome.Extensions
	
	firefox https://extensions.gnome.org/extension/4179/auto-activities/
	firefox https://extensions.gnome.org/extension/4702/awesome-tiles/ #Gap-space recomendado: 02
	firefox https://extensions.gnome.org/extension/1401/bluetooth-quick-connect/
	firefox https://extensions.gnome.org/extension/3193/blur-my-shell/
	firefox https://extensions.gnome.org/extension/517/caffeine/
	firefox https://extensions.gnome.org/extension/3396/color-picker/
	firefox https://extensions.gnome.org/extension/4167/custom-hot-corners-extended/
	firefox https://extensions.gnome.org/extension/1162/emoji-selector/
	firefox https://extensions.gnome.org/extension/744/hide-activities-button/
	firefox https://extensions.gnome.org/extension/277/impatience/
	firefox https://extensions.gnome.org/extension/3843/just-perfection/
	firefox https://extensions.gnome.org/extension/2236/night-theme-switcher/
	firefox https://extensions.gnome.org/extension/4372/shutdowntimer/
	firefox https://extensions.gnome.org/extension/906/sound-output-device-chooser/
	firefox https://extensions.gnome.org/extension/2236/night-theme-switcher/
	firefox https://extensions.gnome.org/extension/19/user-themes/
	
clear
