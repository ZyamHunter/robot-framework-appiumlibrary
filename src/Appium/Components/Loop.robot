*** Settings ***
Library    AppiumLibrary


*** Keywords ***
Loop caso de teste
    [Arguments]    ${TEST_CASE}    ${COUNT_END}
    FOR    ${counter}    IN RANGE    1    ${COUNT_END}
        ${STATUS}    Run Keyword And Return Status    ${TEST_CASE}
        Sleep    1s
        Close Application
        Log To Console    Contagem ${counter}, status do caso de teste: ${STATUS}
    END