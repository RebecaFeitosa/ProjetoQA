#language: pt

Funcionalidade: Sistema de login
Para ter acesso ao Sistema
O usuario do LinkedIn
Deseja logar no site

@cenario01
Cenario: Login com sucesso
Dado que o usuario queira se logar
Quando ele digitar as credenciais validas
Entao deve acessar o site com sucesso


@cenario02
Cenario: Login sem digitar a senha
Dado que o usuario tente logar sem digitar a senha
Quando ele digitar as credenciais invalidas
Entao uma mensagem informando o erro deve aparecer