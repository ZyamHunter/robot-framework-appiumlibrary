*** Settings ***
Documentation       Teste regressivo de Login

Resource            ../Pages/Home_Login.robot
Resource            ../Pages/Home.robot


*** Keywords ***
CT: Logar no APP com sucesso
    Dado que esteja na página de login do APP
    Quando preencher o usuário corretamente
    E preencher a senha corretamente
    E clicar em entrar
    Então será logado no sistema
