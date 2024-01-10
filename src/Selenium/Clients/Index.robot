*** Settings ***
Documentation       Arquivo dedicado a organização e chamada dos casos de teste

Resource            ../TestCases/Home.robot


*** Test Cases ***
CT: Acessar home
    [Tags]    home_page
    CT: Acessar página home
