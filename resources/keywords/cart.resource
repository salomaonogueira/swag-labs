*** Settings ***
Library      SeleniumLibrary
Variables    ../variables/locators.yaml

*** Keywords ***
Dado que o usuário esta na página de produtos
    Wait Until Page Contains Element    ${check_page}
Quando o usuário clica em um produto específico na lista de produtos
    Wait Until Element Is Visible    ${check_page}
    Click Element    ${click_product}

Então o usuário será redirecionado para a página de detalhes do produto
    Wait Until Element Is Visible    ${check_inventory}    timeout=20s

    