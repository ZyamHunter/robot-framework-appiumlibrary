# Projeto de automação Robot e Appium
Projeto criado para rodar testes automatizados de aceitação (e2e) no front-end e no back-end, utilizando as tecnologias do Robot Framework e do Appium. Os testes devem ser capazes de serem rodados localmente e na pipeline


# robot e appium template
> Repositório de testes dedicados ao uso das mais variadas bibliotecas do robot framework com appium

# Configuração do Ambiente

## Instalar Python 3.10

Certifique-se de ter o Python 3.10 instalado em seu sistema. Você pode baixá-lo no [site oficial do Python](https://www.python.org/).

## Instalar Ambiente Virtual

Instale a ferramenta `virtualenv` para criar ambientes virtuais de aprendizado:

> pip install virtualenv

## Criar um ambiente virtual:
> python -m venv project-venv

## Se você estiver usando o PowerShell e encontrar problemas para executar scripts, talvez precise alterar a política de execução temporariamente para permitir a execução de scripts:
> Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

## Ativar o ambiente virtual:
> .\project-venv\Scripts\activate

## Remover cache do pip
> pip cache remove *

## Desativar ambiente virtual
> deactivate

## Instalar dependências do Python
Primeiro ative o ambiente virtual para evitar erros de versão com outras bibliotecas instaladas
> pip install -r requirements.txt

## Instalar nvm:
Necessário para poder mudar a versão do Node para a usada no projeto
> https://github.com/nvm-sh/nvm/blob/master/README.md

## Instalar Node.js:
Ao instalar, provavelmente vários pacotes adicionais serão instalados, como chocolatery, etc.
> https://nodejs.org/en/download

## Modificar versão padrão do node para a usada no projeto:
> nvm use

## Lint do código
> robotidy src

## Rodar os testes
> robot -d logs ./src/Appium/Clients/Mobile.robot

<br/>

### ---- Diferenciais no projeto ----
<br/>

- Page Object
- Robot Framework
- Appium
- Massa de Dados
- Geração de Report

<br/>

### ---- Pré-Requisitos Testes Mobile (APP) ----
- Instalação e Configuração: https://www.youtube.com/watch?v=W5hcHbzTjOc
- Java jdk8, Android Studio, Java SDK, Variáveis de ambiente do sistema, webdriver.io (dependência)
- importante: atualizar a variável de ambiente de %ANDROID_HOME%/build-tools para %ANDROID_HOME%\platform-tools
- iniciar o device pelo AVD Manager do Android Studio ou ter um celular concectado via cabo usb e permitir a depuração ubs.
- comandos para iniciar a ligação com o appium: appium, adb kill-server, adb start-server, adb-devices
- videos adicionais de ajuda: https://www.youtube.com/watch?v=QYT0_qgkiCw / https://www.youtube.com/watch?v=0a5NAJjUBbA

### ---- Comandos para rodar testes no APP: ----

<br/>

*Observação: Para executar os testes com appium é preciso antes <u>inicializar o device pelo AVD Manager</u> no Android Studio.*

<br/>

**Iniciar o appium**
> npm run appium

**Verificar dispositivos disponíveis no ADB**
> adb devices

**Executar teste regressivo**
> npm run test
