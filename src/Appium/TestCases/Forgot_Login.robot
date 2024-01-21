*** Settings ***
Documentation       Teste regressivo automatizado de Login

Resource            ../Pages/Home.robot
Resource            ../Pages/Login.robot
Resource            ../Pages/Forgot_Login.robot


*** Keywords ***
CT: Recuperar login com sucesso
    Dado que esteja na página de login do APP
    Quando clicar em Esqueceu o Login?
    E preencher o cnpj corretamente
    E clicar em Recuperar
    Então uma notificação do email da conta será exibida

CT: Recuperar login com credencial incorreta
    Dado que esteja na página de login do APP
    Quando clicar em Esqueceu o Login?
    E preencher o cnpj incorretamente
    E clicar em Recuperar
    Mas o login não será recuperado
