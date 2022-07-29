 #language: pt

@regression
@cadastro
Funcionalidade: Cadastro
  Como um usuário do site e-commerce Automation Practice
  Quero poder acessar a página de Autenticação
  Para fazer um cadastro e realizar compras

  Contexto: Estar na página de Autenticação
  Dado que esteja na página de Autenticação do site e-commerce Automation Practice

  @validacao_cadastro
  Cenário: Realizar um cadastro 
    Dado que o usuário cadastrou um e-mail com sucesso
    Quando a página for direcionada para YOUR PERSONAL INFORMATION 
    E forem cadastrados os dados pedidos na página
    Então o usuário devera entrar na sua conta já logada "Welcome to your account. Here you can manage all of your personal information and orders."

  @email_duplicado
  Cenário: Email já cadastrado
  Quando o usuário inserir um email já cadastrado
  Então devera exibir uma mensagem de erro    
 
 


 