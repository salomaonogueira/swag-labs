*** Settings ***
Resource     ../resources/keywords/navigation.resource
Resource     ../resources/keywords/login.resource
Resource     ../resources/keywords/cart.resource
Resource     ../resources/keywords/checkout.resource


Library      SeleniumLibrary
Library      Collections
Library      OperatingSystem
Library    ../resources/keywords/yaml_loader.py

Variables    ../resources/variables/config.yaml
Variables    ../resources/variables/credentials.yaml
Variables    ../resources/variables/locators.yaml

Suite Setup       Abrir o navegador    ${URL}
Suite Teardown    Fechar o navegador

*** Test Cases ***
Login com sucesso
    ${config}=    Load YAML    ${EXECDIR}/resources/variables/config.yaml
    ${cred}=      Load YAML    ${EXECDIR}/resources/variables/credentials.yaml
    ${loc}=       Load YAML    ${EXECDIR}/resources/variables/locators.yaml

    Dado que o usuário esteja na página de login
    Quando o usuário realiza o login com credenciais válidas
    Então o usuário será redirecionado para a página de produtos com sucesso

Selecionar Produto 
    [Documentation]    Selecionar produto escolhido 
    [Tags]             seleção   
    Dado que o usuário esta na página de produtos
    Quando o usuário clica em um produto específico na lista de produtos
    Então o usuário será redirecionado para a página de detalhes do produto

Adicionar Produto 
    [Documentation]    Adicionar Produto ao Carrinho de compras
    [Tags]             adicionar   
    Dado que o usuário esta na página de detalhes do produto
    Quando o usuário clica no botão "Add to cart"
    Então o produto será adicionado ao carrinho com sucesso

Clicar em Checkout
    [Documentation]    Clicar no carrinho de compras
    [Tags]             checkout   
    Dado que o usuário está na página do carrinho com produtos adicionados
    Quando o usuário clica no botão "Checkout"
    Então o usuário será redirecionado para a página de preenchimento de informações de envio

Preencher Informações de Envio
    [Documentation]    Preencher informações de envio e clicar em continuar
    [Tags]             informações   
    Dado que o usuário está na página de informações de envio
    Quando o usuário preenche os campos e clica no botão "Continue"
    Então o usuário será redirecionado para a tela "Checkout: Overview"

Finalizar compra    
    [Documentation]    Clicar em finish para finalizar a compra 
    [Tags]             finalizar   
    Dado que o usuário está na tela "Checkout: Overview"
    Quando o usuário clica no botão "Finish"
    Então a mensagem "Thank you for your order!" será exibida

Retornar à página inicial após finalizar a compra
    [Documentation]    Retornar para pagina Home
    [Tags]             retornar   
    Dado que o usuário estava na tela de confirmação de compra "Checkout Complete"
    Quando o usuário clica no botão "Back Home"
    Então o usuário será redirecionado para a página home    