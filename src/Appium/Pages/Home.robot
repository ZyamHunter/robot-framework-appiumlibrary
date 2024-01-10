*** Settings ***
Library     AppiumLibrary
Resource    ../Resources/Home.robot


*** Keywords ***
Então será logado no sistema
    # Pop-up de localização
    Wait Until Page Contains Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    Click Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView

    # Permissão android
    Wait Until Page Contains Element    id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
    Click Element    id=com.android.permissioncontroller:id/permission_allow_foreground_only_button

    # Start-rate
    Wait Until Page Contains Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
    Click Element
    ...    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]

    Wait Until Page Does Not Contain Element    //img[@class="loading__inner__img"]
