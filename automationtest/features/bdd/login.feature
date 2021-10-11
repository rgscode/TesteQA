#language: pt
#coding: utf-8

@Logar
Funcionalidade: Pagina de login

@SmokeTest
Cenario: Login com sucesso
    Dado que o usuario queira logar
    Quando o usuario digitar as credenciais validas
    Entao deve acessar o sistema com sucesso

Cenario: Login com erro
    Dado que o usuario queira logar_2
    Quando o usuario digitar as credenciais invalidas
    Entao deve apresentar uma mensagem com erro