*** Settings ***
Library     SeleniumLibrary
Library     ../../Helpers/Request_Warning.py
Library     ../../Helpers/Get_Envs.py
Resource    ../Components/Input_Text.robot
Resource    ../Components/Click_Element.robot
Resource    ../Resources/Home.robot


*** Keywords ***
Dado que o usuário abra o browser
    Disable Request Warning

    ${ENVS}    Get Enviroment Variables
    Set Global Variable    ${ENVS}    ${ENVS}

    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}    Evaluate
    ...    {'profile.default_content_setting_values.media_stream_mic': 1, 'profile.default_content_setting_values.media_stream_camera': 1, 'profile.default_content_setting_values.geolocation': 1, 'profile.default_content_setting_values.notifications': 1}
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-infobars
    Call Method    ${options}    add_argument    use-fake-device-for-media-stream
    Call Method    ${options}    add_argument    use-fake-ui-for-media-stream
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    options=${options}
    Maximize Browser Window

Quando acessar a página home
    Go To    ${ENVS['BASE_URL']}
    Wait Until Page Contains Element    ${INPUT}    30

Então os produtos serão exibidos
    Wait Until Page Contains Element    ${BAR_ONE}    30
