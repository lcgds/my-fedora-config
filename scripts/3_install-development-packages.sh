#!/bin/bash

#Instalação de programas em ordem alfabética

	echo -e "\n$a Instalando Apache $r\n"
		sudo dnf install httpd -ybq
		sudo systemctl start httpd.service
		sudo systemctl enable httpd.servicer

	echo -e "\n$a Instalando dconf Editor $r\n"
		sudo dnf install dconf-editor -ybq

	echo -e "\n$a Instalando FileZilla $r\n"
		sudo dnf install filezilla -ybq

	echo -e "\n$a Instalando Firewall $r\n"
		sudo dnf install firewall-config -ybq

	echo -e "\n$a Instalando GIMP $r\n"
			sudo dnf install gimp -ybq

	echo -e "\n$a Instalando Git $r\n"
		sudo dnf install git git-all -ybq
		#git config --global user.name ""
		#git config --global user.email ""

	echo -e "\n$a Instalando MySql $r\n"
		sudo dnf install mariadb-server -ybq
		sudo systemctl enable mariadb
		sudo systemctl start mariadb
		#sudo mariadb-secure-installation

	echo -e "\n$a Instalando Pacotes NPM $r\n"
		sudo npm install --global serve
		sudo npm install --global minify
		
	echo -e "\n$a Instalando PHP $r\n"
		sudo dnf install php-cli -ybq
		sudo dnf install phpunit composer -ybq
		sudo dnf install php-mysqli -ybq
		sudo dnf install phpmyadmin -ybq

	echo -e "\n$a Instalando Postman $r\n"
		sudo flatpak install flathub com.getpostman.Postman -y --noninteractive

	echo -e "\n$a Instalando Ruby $r\n"
		sudo dnf install ruby -ybq

	echo -e "\n$a Instalando Vim $r\n"
		sudo dnf install vim -ybq

	#echo -e "\n$a Instalando Visual Studio Code $r\n"
		sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
		sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
		sudo dnf check-update
		sudo dnf install code -ybq
		
	echo -e "\n$a Instalando WordPress $r\n"
		sudo dnf install wordpress -ybq
	
	echo -e "\n$a Instalando Oh My Zsh $r\n"
		sudo dnf install zsh -ybq
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
		sudo dnf install powerline-fonts -ybq
		sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

		


#Atualização total de pacotes e dependências

	echo -e "\n$a Atualizando programas $r\n"
		sudo dnf autoremove -yq
		sudo dnf distro-sync -yq
		sudo dnf upgrade -yq