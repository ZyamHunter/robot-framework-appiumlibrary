*** Settings ***
Library     AppiumLibrary
Library     FakerLibrary    locale=pt_BR
Resource    ../Resources/Password.robot


*** Keywords ***
E confirmar a senha corretamente
    Wait Until Element Is Visible    ${PASSWORD_PAGE_LOCATORS['APP_INPUT_TEXT']}
    Wait Until Page Does Not Contain Element    ${PASSWORD_PAGE_LOCATORS['LOADING_IMAGE']}
    Input Text    ${PASSWORD_PAGE_LOCATORS['APP_INPUT_TEXT']}    ${ENVS['PASSWORD']}
    Sleep    1s
    Click Text    ${PASSWORD_PAGE_LOCATORS['BUTTON_ENTRAR_LOGIN']}

E clicar em entrar
    Sleep    1s
    Click Text    ${PASSWORD_PAGE_LOCATORS['BUTTON_ENTRAR_LOGIN']}

    Wait Until Element Is Visible    ${PASSWORD_PAGE_LOCATORS['POP_UP']}
    Click Text    ${PASSWORD_PAGE_LOCATORS['DENIE_POP_UP']}

E preencher a senha incorretamente
    ${WRONG_PASSWORD}    FakerLibrary.Password

    Wait Until Element Is Visible    ${PASSWORD_PAGE_LOCATORS['APP_INPUT_TEXT']}
    Wait Until Page Does Not Contain Element    ${PASSWORD_PAGE_LOCATORS['LOADING_IMAGE']}
    Input Text    ${PASSWORD_PAGE_LOCATORS['APP_INPUT_TEXT']}    ${ENVS['PASSWORD']}
    Sleep    1s
    Click Text    ${PASSWORD_PAGE_LOCATORS['BUTTON_ENTRAR_LOGIN']}

Mas não será logado no sistema
    Wait Until Page Contains    ${PASSWORD_PAGE_LOCATORS['WRONG_PASSWORD']}
