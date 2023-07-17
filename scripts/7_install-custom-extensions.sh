#!/bin/bash

echo -e "\n$a Abrindo extensões para instalação manual $r\n"
	flatpak install flathub org.gnome.Extensions -y --noninteractive 

	firefox https://extensions.gnome.org/extension/1162/emoji-selector/
	firefox https://extensions.gnome.org/extension/2236/night-theme-switcher/
	firefox https://extensions.gnome.org/extension/3396/color-picker/
	firefox https://extensions.gnome.org/extension/3843/just-perfection/
	firefox https://extensions.gnome.org/extension/4167/custom-hot-corners-extended/
	firefox https://extensions.gnome.org/extension/4372/shutdowntimer/
	firefox https://extensions.gnome.org/extension/4702/awesome-tiles/ #Gap-space recomendado: 04
	firefox https://extensions.gnome.org/extension/5500/auto-activities/

	flatpak run org.gnome.Extensions