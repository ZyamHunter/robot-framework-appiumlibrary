*** Settings ***
Documentation       Validação automatizada do teste regressivo de acesso a página home

Resource            ../Pages/Home.robot


*** Keywords ***
CT: Acessar página home
    Dado que o usuário abra o browser
    Quando acessar a página home
    Então os produtos serão exibidos
