*** Settings ***
Library     AppiumLibrary
Library     ../../Helpers/Get_Envs.py
Resource    ../Resources/Home_Login.robot


*** Keywords ***
Dado que esteja na página de login do APP
    ${ENVS}    Get Enviroment Variables
    Set Suite Variable    ${ENVS}    ${ENVS}

    Open Application
    ...    http://localhost:4723/wd/hub
    ...    platformName=${ANDROID_CONFIGURATION['ANDROID_PLATFORM_NAME']}
    ...    deviceName=${ANDROID_CONFIGURATION['ANDROID_DEVICENAME']}
    ...    appPackage=${ANDROID_CONFIGURATION['ANDROID_APPPACKAGE']}
    ...    appActivity=${ANDROID_CONFIGURATION['ANDROID_ACTIVITY']}
    ...    automationName=${ANDROID_CONFIGURATION['ANDROID_AUTOMATION_NAME']}

    Wait Until Page Contains Element    ${HOME_PAGE_LOCATORS['CONFIG_ELEMENT']}
    Wait Until Page Contains Element    ${HOME_PAGE_LOCATORS['BUTTON_ENTRAR_HOME']}
    Click Text    ${HOME_PAGE_LOCATORS['BUTTON_ENTRAR_PAGE']}

Quando preencher o usuário corretamente
    Wait Until Page Contains Element    ${HOME_PAGE_LOCATORS['APP_INPUT_TEXT']}
    Input Text    ${HOME_PAGE_LOCATORS['APP_INPUT_TEXT']}    ${ENVS['USER']}
    Click Text    ${HOME_PAGE_LOCATORS['BUTTON_CONTINUAR_PAGE']}

E preencher a senha corretamente
    Wait Until Page Contains Element    ${HOME_PAGE_LOCATORS['APP_INPUT_TEXT']}
    Sleep    3s
    Input Text    ${HOME_PAGE_LOCATORS['APP_INPUT_TEXT']}    ${ENVS['PASSWORD']}

E clicar em entrar
    Click Text    ${HOME_PAGE_LOCATORS['BUTTON_ENTRAR_LOGIN']}

    # Pop-up
    Sleep    2s
    Wait Until Page Contains Element
    ...    ${HOME_PAGE_LOCATORS['POP_UP']}
    Click Text    ${HOME_PAGE_LOCATORS['DENIE_POP_UP']}

    # Confirmação do sms
    Wait Until Page Contains Element    ${HOME_PAGE_LOCATORS['APP_INPUT_TEXT']}
    Wait Until Page Contains Element    ${HOME_PAGE_LOCATORS['ELEMENT_ENTRAR']}
    Sleep    14s
    Input Text    ${HOME_PAGE_LOCATORS['APP_INPUT_TEXT']}    ${ENVS['CODE']}
    Click Text    ${HOME_PAGE_LOCATORS['BUTTON_ENTRAR_LOGIN']}
