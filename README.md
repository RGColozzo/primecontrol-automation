# Prime Control - Automation 🤖
## Automation tests using Robot Framework & Selenium

<p align="center">
 <a href="#Pré-Requisitos">Pré-Requisitos</a> • 
 <a href="#Configuração">Configuração</a> • 
 <a href="#Execução">▶Execução</a> • 
 <a href="#Autor">Autor</a>
</p>

### Pré-Requisitos
---

Antes de começar, você vai precisar ter instalado em sua máquina as ferramentas abaixo:

- [x] [Python](https://www.python.org)
- [x] [VSCode](https://code.visualstudio.com/)
- [x] [Git Bash](https://git-scm.com/downloads)

Antes de começarmos as configurações das ferramentas de automação, vamos primeiro clonar este repositório. Para isso, utilize o comando abaixo no seu Git Bash:

```bash
$ git clone https://github.com/RGColozzo/primecontrol-automation.git
```

Feito isso, agora podemos começar a instalar e configurar o 🤖 Robot Framework e a biblioteca do Selenium!

### Configuração
---

✅ *PASSO 1* - Abra seu Git Bash para instalar o Robot Framework e a biblioteca do Selenium (siga os comandos abaixo):

```bash
# Instale o robot framework
$ pip install robotframework

# Instale a biblioteca do selenium
$ pip install robotframework-selenium2library
```

✅ *PASSO 2* - Agora temos que baixar e salvar o driver: [Chromedriver](https://chromedriver.chromium.org/downloads), pois iremos utilizar o Google Chrome como nosso navegador de teste.
**Obs.: Verifique a versão do seu navegador Google Chrome e faça download do driver compatível.**

✅ *PASSO 3* - Tire o arquivo baixado de dentro do .zip (ou .rar).

✅ *PASSO 4* - Vá até o seu disco C: e crie uma pasta chamada "Automation Drivers".

✅ *PASSO 5* - Coloque o arquivo chromedriver.exe dentro da pasta criada no passo anterior.

✅ *PASSO 6* - Edite a varável PATH e adicione nela o caminho do seu driver do chrome (C:\Automation Drivers\chromedriver.exe).

Agora que temos tudo configurado, vamos rodar o script? Bora lá!

### Execução
---

Você deve ter percebido que dentro do repositório que você baixou existe uma pasta chamada "script" e dentro dela temos um arquivo chamado "exec.sh".

Este arquivo contém os comandos necessários para que possamos executar tanto um **CENÁRIO OK** quanto um **CENÁRIO NÃO OK** do nosso teste automatizado, como podemos ver abaixo:

```bash
#!/bin/sh

EMAIL_OK=rennan.colozzo18@hotmail.com
PASSWD_OK=teste123

EMAIL_NOK=teste@teste.123
PASSWD_NOK=teste

#Execução do cenário OK
robot -d '..\results\OK\' -t 'Buy a product' -v EMAIL:$EMAIL_OK -v PASSWD:$PASSWD_OK '..\tests\buy_product.robot'

#Execução do cenário não OK
robot -d '..\results\NÃO OK\' -t 'Buy a product' -v EMAIL:$EMAIL_NOK -v PASSWD:$PASSWD_NOK '..\tests\buy_product.robot'
```

Para executar, basta dar um duplo clique no arquivo **exec.sh**!

### Autor
---

Feito por [Rennan Gimenez](https://www.facebook.com/RennanGimenez)!

[![Linkedin Badge](https://img.shields.io/badge/-Rennan-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rennan-gimenez/)](https://www.linkedin.com/in/rennan-gimenez/)