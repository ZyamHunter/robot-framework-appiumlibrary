*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Clicar no elemento
    [Arguments]    ${ELEMENT}
    Wait Until Page Does Not Contain Element    //*[@class="loading--fullscreen"]    timeout=20s
    Wait Until Element Is Visible
    ...    ${ELEMENT}
    ...    timeout=10
    ...    error=Elemento ${ELEMENT} não foi encontrado durante a execução do caso de teste: ${TEST_NAME}
    Click Element    ${ELEMENT}
