# 🛒 Automação de Testes - Swag Labs

Este projeto contém um conjunto de testes automatizados para o site **Swag Labs**, utilizando boas práticas com o **Robot Framework** e a **SeleniumLibrary**.

---

## 📌 **Pré-requisitos**
Antes de executar os testes, certifique-se de que possui os seguintes requisitos instalados:

- **Python 3.10+**
- **Google Chrome** e **ChromeDriver** compatível
- Dependências listadas no arquivo `requirements.txt`

---

## 📂 **Estrutura do Projeto**

```bash
swag-labs/
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

## 📊 **Resultados**

Após a execução, os relatórios podem ser encontrados na pasta `results/`:

- **log.html** → Logs detalhados dos testes
- **report.html** → Relatório geral dos testes
- **output.xml** → Saída no formato XML

Abra os arquivos `.html` no navegador para visualizar os detalhes.

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

---

📌 **Dicas para o Desafio Técnico:**
- **Demonstre organização**: O README está estruturado de forma lógica e clara.
- **Facilidade de uso**: Instruções diretas para instalação e execução dos testes.
- **Destaque boas práticas**: Uso de ambiente virtual, execução paralela e logs detalhados.

🎯 **Boa sorte no seu desafio!** 🚀





