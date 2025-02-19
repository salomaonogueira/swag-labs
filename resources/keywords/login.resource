*** Settings ***
Library      SeleniumLibrary
Variables    ../variables/locators.yaml
Variables    ../variables/credentials.yaml
Variables    ../variables/config.yaml

*** Keywords ***
# Abrir o navegador
#     Open Browser    ${URL}    ${BROWSER}
#     Maximize Browser Window

# Fechar o navegador
#     Close Browser

Dado que o usuário esteja na página de login
    Go To    ${URL}

Quando o usuário realiza o login com credenciais válidas
    Wait Until Element Is Visible      ${input_email}    timeout=10s    
    Input Text      ${input_email}     ${VALID_STANDARD}
    Wait Until Element Is Visible      ${input_senha}    timeout=10s  
    Input Text      ${input_senha}     ${VALID_PASSWORD}
    Click Button    ${click_button_login}
    Capture Page Screenshot

Então o usuário será redirecionado para a página de produtos com sucesso
    Location Should Be    ${INVENTORY}    timeout=20s   