*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/Home_After_Login.robot


*** Keywords ***
Então será logado no sistema
    # Pop-up de localização
    Wait Until Element Is Visible    ${HOME_AFTER_LOGIN['POP_UP_LOCALIZATION_MODAL']}
    Click Element    ${HOME_AFTER_LOGIN['POP_UP_LOCALIZATION_BUTTON']}

    # Permissão android
    Wait Until Element Is Visible    ${HOME_AFTER_LOGIN['ANDROID_PERMISSION_BUTTON']}
    Click Element    ${HOME_AFTER_LOGIN['ANDROID_PERMISSION_BUTTON']}

    # Start-rate
    Wait Until Element Is Visible    ${HOME_AFTER_LOGIN['STAR_RATE_MODAL']}
    Click Element    ${HOME_AFTER_LOGIN['STAR_RATE_BUTTON']}
