#!/bin/bash

#Cores para comandos
a="\0033[01;37;42m" #Cor verde para alerta
r="\033[0m" #Reset de cor para padrão

#Configura o nível de permissão necessário para executar os script
sudo chmod +x ./scripts/

#Executa os scripts individualmente e em ordem de acordo com as condicionais propostas

if [[ -z $1 ]] || [[ $1 == "-g" && $2 == "-d" ]] || [[ $1 == "-d" && $2 == "-g" ]]; then 
  source ./scripts/1_remove-bloatware.sh
  source ./scripts/2_install-general-packages.sh
  source ./scripts/3_install-develop-packages.sh
  source ./scripts/4_customize-user-interface.sh
  source ./scripts/5_configure-custom-extensions.sh
else 
  case $1 in
    -g)
      source ./scripts/1_remove-bloatware.sh
      source ./scripts/2_install-general-packages.sh
      source ./scripts/4_customize-user-interface.sh
      source ./scripts/5_configure-custom-extensions.sh
      ;;
    -d)
      source ./scripts/1_remove-bloatware.sh
      source ./scripts/2_install-general-packages.sh
      source ./scripts/3_install-develop-packages.sh
      source ./scripts/4_customize-user-interface.sh
      source ./scripts/5_configure-custom-extensions.sh
      ;;
    *)
      echo -e "Opção '$1' inválida.\n\nAs opções válidas são:\n\n'-g' para instalar apenas de pacotes gerais; ou\n'-d' para instalar pacotes de desenvolvimentos além dos gerais."
      ;;
  esac
fi