*** Settings ***
Documentation       Validação automatizada do login

Library             ../../Helpers/Get_Envs.py
Library             RequestsLibrary


*** Keywords ***
CT: Acessar página home
    ${ENVS}    Get Enviroment Variables

    Create Session    alias=JSON    url=${ENVS['BASE_API']}    disable_warnings=1

    ${HOME}    POST On Session    alias=JSON    url=/posts    expected_status=201
