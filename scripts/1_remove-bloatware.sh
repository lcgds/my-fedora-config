#!/bin/bash

echo -e "\n$a Removendo bloatware $r\n"
	sudo dnf remove simple-scan -yq
	sudo dnf remove rhythmbox -yq
	sudo dnf remove gnome-tour -yq
	sudo dnf remove totem -yq
	sudo dnf remove libreoffice-core -yq