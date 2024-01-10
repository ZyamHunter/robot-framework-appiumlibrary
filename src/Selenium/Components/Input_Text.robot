*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Inserir texto
    [Arguments]    ${FIELD}    ${ELEMENT}
    Wait Until Page Does Not Contain Element    //*[@class="loading--fullscreen"]    timeout=20s
    Wait Until Element Is Visible
    ...    ${FIELD}
    ...    error=Elemento ${FIELD} não foi encontrado durante a execução do caso de teste: ${TEST_NAME}
    Input Text    ${FIELD}    ${ELEMENT}
