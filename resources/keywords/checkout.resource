*** Settings ***
Library      SeleniumLibrary
Variables    ../variables/locators.yaml
Variables    ../variables/credentials.yaml
Variables    ../variables/config.yaml

*** Keywords ***
Dado que o usuário esta na página de detalhes do produto
    Wait Until Element Is Visible    ${check_inventory}    timeout=20s
    
Quando o usuário clica no botão "Add to cart"
    Wait Until Element Is Visible    ${check_product}     timeout=20s
    Click Button    ${click_button_add_cart}

Então o produto será adicionado ao carrinho com sucesso
    Wait Until Element Is Visible    ${check_shop_cart}   timeout=20s
    

Dado que o usuário está na página do carrinho com produtos adicionados
    Click Element  ${check_shop_cart}
    Wait Until Element Is Visible    ${check_shop_cart}   timeout=20s
    
Quando o usuário clica no botão "Checkout"
    Wait Until Element Is Visible    ${check_shop_cart}   timeout=20s
    Click Button    ${click_button_checkout}
    
Então o usuário será redirecionado para a página de preenchimento de informações de envio
    Location Should Be    ${CHECKOUT_INFO}
    Wait Until Page Contains Element    ${check_checkout_info}     timeout=20s
    
Dado que o usuário está na página de informações de envio
    Location Should Be    ${CHECKOUT_INFO}
    
Quando o usuário preenche os campos e clica no botão "Continue"
    Wait Until Element Is Visible    ${input_first_name}    timeout=10s
    Input Text    ${input_first_name}    Salomão
    Wait Until Element Is Visible    ${input_last_name}    
    Input Text    ${input_last_name}    David
    Wait Until Element Is Visible    ${input_zipcode}    
    Input Text    ${input_zipcode}    69084-623
    Capture Page Screenshot
    Wait Until Element Is Visible    ${click_button_continue}   timeout=20s
    Click Button    ${click_button_continue}

Então o usuário será redirecionado para a tela "Checkout: Overview"
    Wait Until Element Is Visible    ${check_checkout_overview}    timeout=10s
    Capture Page Screenshot
Dado que o usuário está na tela "Checkout: Overview"
    Wait Until Element Is Visible    ${check_checkout_overview}    timeout=10s

Quando o usuário clica no botão "Finish"
    Wait Until Element Is Visible    ${check_checkout_overview}    timeout=10s
    Click Button    ${click_button_finish}

Então a mensagem "Thank you for your order!" será exibida
    Wait Until Element Is Visible    ${check_checkout_complete}    timeout=10s
    Capture Page Screenshot

Dado que o usuário estava na tela de confirmação de compra "Checkout Complete"
    Wait Until Element Is Visible    ${check_checkout_complete}    timeout=10s

Quando o usuário clica no botão "Back Home"
    Wait Until Element Is Visible    ${click_button_back_home}    timeout=10s
    Click Button    ${click_button_back_home}
    Capture Page Screenshot
    
Então o usuário será redirecionado para a página home  
    Location Should Be    ${INVENTORY}    timeout=20s   
    Wait Until Page Contains Element    ${check_page}       
    
    # Fechar o navegador