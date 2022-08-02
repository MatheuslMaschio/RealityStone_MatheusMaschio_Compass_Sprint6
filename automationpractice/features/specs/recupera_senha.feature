#language: pt

@regression

Funcionalidade: Recuperação de senha
    Como um usuário do Ecommerce Your Logo
    Quero recuperar a senha da conta 
    Para voltar a usá-la

Contexto:
     Dado que o usuário esteja na tela de login

@recuperacao_senha
Cenário: recuperando a senha
Quando clickar no botão de recuperar a senha
E inserir o email cadastrado
Então devera ser exibida uma mensagem de sucesso