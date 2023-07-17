# Fedora Initial Configuration
### Scripts para personalizar o Fedora Workstation

<img src="./screenshots/1.png" width="100%">

## Como executar
Abra o Terminal Linux e execute os seguintes comandos:

- Para baixar o repositório na sua máquina:

```
$ git clone https://github.com/lcgds/my-fedora-config
```

- Para dar permissão de execução aos scripts:

```
$ sudo chmod +x ./my-fedora-config/
```

- Para executar o script completo:

```
$ cd ./my-fedora-config/
$ ./install.sh
```

## Como executar scripts separadamente
Execute o(s) script(s) desejado(s) da seguinte forma:

```
$ cd ./scripts/
$ ./nome-do-script-1.sh
$ ./nome-do-script-3.sh
```

No entanto, existe uma ordem recomendada:

1. Remoção de software embarcados (remove-bloatware.sh)
2. Programas gerais (install-general-packages.sh)
3. Programas para desenvolvimento (install-web-design-packages.sh)
4. Customização de aparência com tema (customize-appearance.sh)
5. Extensões (install-custom-extensions.sh)