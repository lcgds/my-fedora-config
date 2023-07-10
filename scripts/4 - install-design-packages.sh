#!/bin/bash

echo -e "\n$a Instalando GIMP $r\n"
	#

echo -e "\n$a Instalando Figma $r\n"
	#

echo -e "\n$a Instalando Color Picker $r\n"
	sudo dnf install gcolor3 -y -b -q
	
echo -e "\n$a Instalando Inkscape $r\n"
	sudo dnf install inkscape -y -b -q

echo -e "\n$a Limpando cache$r\n"
	sudo dnf clean