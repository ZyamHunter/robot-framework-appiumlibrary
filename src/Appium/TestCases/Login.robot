*** Settings ***
Documentation       Teste regressivo de Login com sucesso

Resource            ../Pages/Home.robot
Resource            ../Pages/Login.robot
Resource            ../Pages/Password.robot
Resource            ../Pages/Home_After_Login.robot


*** Keywords ***
CT: Login com senha incorreta
    Dado que esteja na página de login do APP
    Quando preencher o usuário corretamente
    E preencher a senha incorretamente
    Mas não será logado no sistema

CT: Login com usuário incorreto
    Dado que esteja na página de login do APP
    Quando preencher o usuário incorretamente
    E confirmar a senha corretamente
    Mas não será logado no sistema

CT: Login com usuário e senha incorretos
    Dado que esteja na página de login do APP
    Quando preencher o usuário incorretamente
    E preencher a senha incorretamente
    Mas não será logado no sistema
