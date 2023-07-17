#!/bin/bash

echo -e "\n$a Removendo bloatware $r\n"
	sudo dnf remove simple-scan -y -q
	sudo dnf remove rhythmbox -y -q
	sudo dnf remove gnome-tour -y -q