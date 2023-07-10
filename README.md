# Fedora Initial Configuration
### Pacote de scripts com comandos de instalações e configurações para personalizar o Fedora Workstation

<img src="./screenshots/1.png" width="100%">

## Como executar
Abra o Terminal Linux e execute os seguintes comandos:

- Para baixar o repositório na sua máquina:

`$ git clone https://github.com/lcgds/my-fedora-config`

- Para dar permissão de execução aos scripts:

```
$ cd ./my-fedora-config
$ sudo chmod +x ./scripts
```

- Para executar o script completo:

```
$ cd scripts ./scripts
$ ./full-instalation.sh
```

## Scripts separados
Caso você prefira executar os scripts separadamente, basta executar um por vez. Entretanto, existe uma ordem recomendada:

1. Remoção de software embarcados (bloatware.sh)
2. Programas gerais (general-packages.sh)
3. Programas para desenvolvimento (dev-packages.sh)
4. Fontes (fonts.sh)
5. Tema (theme.sh)
6. Extensões (extensions.sh)
