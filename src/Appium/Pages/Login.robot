*** Settings ***
Library     AppiumLibrary
Library     FakerLibrary    locale=pt_BR
Resource    ../Resources/Login.robot


*** Keywords ***
Quando preencher o usuário corretamente
    Wait Until Element Is Visible    ${LOGIN_PAGE_LOCATORS['APP_INPUT_TEXT']}
    Input Text    ${LOGIN_PAGE_LOCATORS['APP_INPUT_TEXT']}    ${ENVS['USER']}
    Click Text    ${LOGIN_PAGE_LOCATORS['BUTTON_CONTINUAR_PAGE']}

Quando clicar em Esqueceu o Login?
    Wait Until Element Is Visible    ${LOGIN_PAGE_LOCATORS['FORGOT_LOGIN_OPTION']}
    Click Element    ${LOGIN_PAGE_LOCATORS['FORGOT_LOGIN_OPTION']}

Então uma notificação do email da conta será exibida
    Wait Until Page Contains    ${LOGIN_PAGE_LOCATORS['NOTIFICATION']}

Quando preencher o usuário incorretamente
    ${WRONG_USER}    FakerLibrary.User Name

    Wait Until Element Is Visible    ${LOGIN_PAGE_LOCATORS['APP_INPUT_TEXT']}
    Input Text    ${LOGIN_PAGE_LOCATORS['APP_INPUT_TEXT']}    ${WRONG_USER}
    Click Text    ${LOGIN_PAGE_LOCATORS['BUTTON_CONTINUAR_PAGE']}
