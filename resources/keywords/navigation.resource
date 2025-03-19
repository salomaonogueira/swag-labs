*** Settings ***
Library      SeleniumLibrary
Variables    ../variables/locators.yaml
Variables    ../variables/credentials.yaml
Variables    ../variables/config.yaml
*** Variables ***
${URL}       https://www.saucedemo.com/
${BROWSER}   chrome

*** Keywords ***
Abrir o navegador
   [Arguments]    ${url}
   ${chrome_options}=    Evaluate      sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
   Call Method    ${chrome_options}    add_argument    --incognito
   Call Method    ${chrome_options}    add_argument    --disable-extensions
   Call Method    ${chrome_options}    add_argument    --disable-popup-blocking
   Call Method    ${chrome_options}    add_argument    --disable-infobars
   Call Method    ${chrome_options}    add_argument    --disable-password-manager-reauthentication
   Open Browser    ${url}    ${BROWSER}    options=${chrome_options}
   Maximize Browser Window

Fechar o navegador
   Close Browser