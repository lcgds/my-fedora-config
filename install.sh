#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

#Configura o nível de permissão necessário para executar os script
sudo chmod a+x ./scripts/

#Executa os scripts individualmente e em ordem
source ./scripts/1_remove-bloatware.sh
source ./scripts/2_install-general-packages.sh
source ./scripts/3_install-web-packages.sh
source ./scripts/4_install-design-packages.sh
source ./scripts/5_install-custom-fonts.sh
source ./scripts/6_install-custom-theme.sh
source ./scripts/7_install-custom-extensions.sh