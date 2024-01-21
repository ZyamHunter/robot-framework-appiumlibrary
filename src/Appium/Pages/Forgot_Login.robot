*** Settings ***
Library     AppiumLibrary
Library     FakerLibrary    locale=pt_BR
Resource    ../Resources/Forgot_Login.robot


*** Keywords ***
E preencher o cnpj incorretamente
    Wait Until Element Is Visible    ${FORGOT_LOGIN['INPUT_CPF_CNPJ']}
    Input Text    ${FORGOT_LOGIN['INPUT_CPF_CNPJ']}    ${FORGOT_LOGIN['WRONG_CNPJ']}

E clicar em Recuperar
    Wait Until Element Is Visible    ${FORGOT_LOGIN['RECUPERATION_BUTTON']}
    Click Element    ${FORGOT_LOGIN['RECUPERATION_BUTTON']}

Mas o login não será recuperado
    Wait Until Page Contains Element    ${FORGOT_LOGIN['INPUT_CPF_CNPJ']}

E preencher o cnpj corretamente
    Wait Until Element Is Visible    ${FORGOT_LOGIN['INPUT_CPF_CNPJ']}
    Input Text    ${FORGOT_LOGIN['INPUT_CPF_CNPJ']}    ${ENVS['CNPJ']}
