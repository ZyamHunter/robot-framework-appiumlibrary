*** Settings ***
Library     AppiumLibrary
Library     ../../Helpers/Get_Envs.py
Resource    ../Resources/Home.robot


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

    Set Appium Timeout    30s

    Wait Until Page Contains Element    ${HOME_PAGE_LOCATORS['CONFIG_ELEMENT']}
    Wait Until Element Is Visible    ${HOME_PAGE_LOCATORS['BUTTON_ENTRAR_HOME']}
    Click Text    ${HOME_PAGE_LOCATORS['BUTTON_ENTRAR_PAGE']}
