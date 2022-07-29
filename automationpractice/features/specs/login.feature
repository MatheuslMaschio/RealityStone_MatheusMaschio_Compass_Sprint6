#language: pt

@regression
@login

Funcionalidade: login de usuário
Como usuário do sistema
Quero me autenticar na aplicação
Para realizar compras

    Contexto:
     Dado que o usuário esteja na tela de login
    
@verificacao_login
Esquema do Cenário: validar a autenticação de usuário
    Quando o usuário realizar login com o "<email>" e "<senha>"
    Então uma mensagem deve ser exibida "<msg>"

    Exemplos:
    |email                         |senha |msg                                    | 
    |                              |123456|An email address required.             | 
    |delimamaschiomatheus@gmail.com|      |Password is required.                  |
    |1111@teste.com                |      |Password is required.                  |
    |delimamaschiomatheus@gmail.com|11111 |Authentication failed.                 |
    
@verificacao_login_ok
Esquema do Cenário: validar o login
Quando o usuário realizar login com o "<email>" e "<senha>"
Então devera aparecer o modal de mensagem "<msg>"

Exemplos:
 |email                         |senha |msg                                                                                      |
 |delimamaschiomatheus@gmail.com|123456|Welcome to your account. Here you can manage all of your personal information and orders.|    




