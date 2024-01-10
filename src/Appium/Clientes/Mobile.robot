*** Settings ***
Resource    ../TestCases/Login.robot
Library     ScreenCapLibrary    screenshot_directory=videos


*** Test Cases ***
Login
    CT: Logar no APP com sucesso
