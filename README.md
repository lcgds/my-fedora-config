## Fedora Initial Configuration
Scripts para personalizar o Fedora Workstation

<img src="./screenshot.webp" width="100%">

### Como instalar
Abra o Terminal e execute os seguintes comandos:

1. Para baixar o repositório na sua máquina:

```bash
git clone https://github.com/lcgds/my-fedora-config
```

2. Para dar permissão de execução aos scripts:

```bash
sudo chmod +x ./my-fedora-config/
```

3. Para executar o script:

```bash
cd ./my-fedora-config/
./install.sh (parâmetros opcionais*)
```

#### * Parâmetros opcionais
```-g``` para instalar apenas programas gerais; ou ```-d``` para instalar programas de desenvolvimentos, além dos programas gerais.