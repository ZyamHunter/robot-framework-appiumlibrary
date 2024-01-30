*** Settings ***
Resource            ../TestCases/Login.robot
Resource            ../TestCases/Forgot_Login.robot
Resource    ../Components/Loop.robot

Test Teardown       Close Appium


*** Test Cases ***
Login_wrong_password
    Run Keyword And Continue On Failure    CT: Login com senha incorreta

Login_wrong_user
    Run Keyword And Continue On Failure    CT: Login com usuário incorreto

Login_wrong_user_and_password
    Run Keyword And Continue On Failure    CT: Login com usuário e senha incorretos

Fogot_login_success
    Run Keyword And Continue On Failure    CT: Recuperar login com sucesso

Fogot_login_failed
    Run Keyword And Continue On Failure    CT: Recuperar login com credencial incorreta

Loop
    Loop caso de teste    CT: Login com senha incorreta    3


*** Keywords ***
Close Appium
    Sleep    1s
    Close All Applications
