#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

#Configura o nível de permissão necessário para executar os script
sudo chmod +x ./scripts/

#Executa os scripts individualmente e em ordem
source ./scripts/1_remove-bloatware.sh
source ./scripts/2_install-general-packages.sh
source ./scripts/3_install-web-design-packages.sh
source ./scripts/4_customize-appearance.sh
source ./scripts/5_install-custom-extensions.sh