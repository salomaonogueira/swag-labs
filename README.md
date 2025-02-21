# 🛒 Automação de Testes - Swag Labs

Este projeto contém um conjunto de testes automatizados para o site **Swag Labs**, utilizando boas práticas com o **Robot Framework** e a **SeleniumLibrary**.

---

## 📌 **Pré-requisitos**
Antes de executar os testes, certifique-se de que possui os seguintes requisitos instalados:

- **Python 3.10+**
- **Google Chrome** e **ChromeDriver** compatível
- Dependências listadas no arquivo `requirements.txt`

Caso ainda não tenha o ChromeDriver, siga as instruções na seção de Configuração do ChromeDriver.

---

## 📂 **Estrutura do Projeto**

```bash
swag-labs/
│── .github/
│   ├── workflows/
│   │   ├── robot-tests.yml   # Arquivo de configuração do GitHub Actions
│── .fixtures/                # Configuração inicial do ambiente
│── resources/                
│   ├── keywords/             # Arquivos de keywords do Robot Framework
│   │   ├── cart.resource     
│   │   ├── checkout.resource
│   │   ├── login.resource    
│   │   ├── navigation.resource
│   ├── variables/            # Arquivos YAML com variáveis
│   │   ├── config.yaml       
│   │   ├── credentials.yaml  
│   │   ├── locators.yaml     
│── tests/                    # Arquivos de testes do Robot Framework
│   ├── compra_online.robot      
│── results/                  # Resultados dos testes
│── venv/                     # Ambiente virtual (recomendado)
│── requirements.txt           # Dependências do projeto
│── README.md                  # Documentação do projeto
```

---

## ⚙️ **Instalação e Configuração**

### 1️⃣ Clone este repositório:
```bash
git clone git@github.com:salomaonogueira/swag-labs.git
cd swag-labs-robot
```

### 2️⃣ Crie um ambiente virtual e ative:
```bash
python -m venv venv
source venv/bin/activate   # Linux/MacOS
venv\Scripts\activate      # Windows
```

### 3️⃣ Instale as dependências:
```bash
pip install -r requirements.txt
```

### 4️⃣ Configure o ChromeDriver:
1. Verifique sua versão do Chrome acessando:
   - Digite na barra de endereços do Chrome: `chrome://settings/help`
2. Faça o download do **ChromeDriver** compatível:  
   - [Download ChromeDriver](https://sites.google.com/chromium.org/driver/downloads)
3. Extraia o arquivo e adicione o caminho do `chromedriver.exe` ao **PATH** do sistema.

---

## 🏃‍♂️ **Executando os Testes**

### 🔹 Para rodar todos os testes:
```bash
robot -d results tests/
```

### 🔹 Para rodar um arquivo de teste específico:
```bash
robot -d results tests/compra_online.robot
```

### 🔹 Para executar os testes em paralelo:
```bash
pabot -d results tests/
```

---

## 📊 **Relatórios e Logs**

Após a execução, os relatórios podem ser encontrados na pasta `results/`:

- **log.html** → Logs detalhados dos testes
- **report.html** → Relatório geral dos testes
- **output.xml** → Saída no formato XML

🔹 Para abrir o relatório após a execução:
open results/report.html  # MacOS/Linux
start results\report.html # Windows

---

## 📄 **Tecnologias Utilizadas**

- **Robot Framework** (Framework de automação de testes)
- **SeleniumLibrary** (Automação de testes web)
- **YamlLibrary** (Leitura de arquivos YAML)
- **Pabot** (Execução paralela)

---

## 🔧 **Manutenção**

Caso precise atualizar as dependências:
```bash
pip freeze > requirements.txt
```

## 🛠 Integração Contínua (GitHub Actions)
O projeto utiliza GitHub Actions para rodar os testes automaticamente sempre que houver um push ou pull request para a branch main.

📄 Configuração: .github/workflows/robot-tests.yml

🔄 O que o workflow faz?
1️⃣ Faz o checkout do código-fonte do repositório
2️⃣ Instala o Python e as dependências do projeto (pip install -r requirements.txt)
3️⃣ Instala o Google Chrome e o ChromeDriver compatível
4️⃣ Executa os testes do Robot Framework
5️⃣ Faz upload dos relatórios de teste como artefatos

## 📊 Como Acessar os Relatórios no GitHub?
1️⃣ Vá até a aba "Actions" no repositório do GitHub
2️⃣ Clique no workflow "swag-labs"
3️⃣ Na seção "Artifacts", baixe o arquivo robot-framework-results.zip
4️⃣ Extraia o zip e abra log.html ou report.html no navegador

## Erros Comuns e Soluções
🔹 Erro: Element not found
✅ Verifique se o seletor usado no locators.yaml está correto
✅ Use Wait Until Element Is Visible para garantir que o elemento foi carregado

🔹 Erro: Timeout ao carregar a página
✅ Tente aumentar o tempo de espera usando:

Set Selenium Timeout  10s

## Links Importantes
🔹 Swag Labs → https://www.saucedemo.com/
🔹 Robot Framework → https://robotframework.org/
🔹 SeleniumLibrary → https://github.com/robotframework/SeleniumLibrary
🔹 Documentação Oficial → https://robotframework.org/




