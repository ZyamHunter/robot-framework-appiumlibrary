*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/Sms.robot


*** Keywords ***
E confirmar o sms
    # Confirmação do sms
    Wait Until Page Contains Element    ${SMS_PAGE_LOCATORS['APP_INPUT_TEXT']}
    Wait Until Page Contains Element    ${SMS_PAGE_LOCATORS['ELEMENT_ENTRAR']}
    Sleep    14s
    Input Text    ${SMS_PAGE_LOCATORS['APP_INPUT_TEXT']}    ${ENVS['CODE']}
    Click Text    ${SMS_PAGE_LOCATORS['BUTTON_ENTRAR_LOGIN']}
