#language: pt

@regression
@pagamento_produto
Funcionalidade: pagamento
    Como usuário do sistema
    Quero pagar o produto
    Para receber o mesmo

    Contexto:
    Dado que o produto já foi escolhido e já está no carrinho
    E que o usuário esteja pagando 
    

Esquema do Cenário: validar pagamento 

Quando efetuou o login com o '<email>' e '<senha>'
E o usuário selecionar a forma de pagamento Transferencia Bancaria 
Então uma mensagem deve ser exibida msg de Transferencia Bancaria
Exemplos:
 |email                         |senha |
 |delimamaschiomatheus@gmail.com|123456|

@pagamento_cheque
Esquema do Cenário: validar pagamento por cheque 
Quando efetuou o login com o '<email>' e '<senha>'
E o usuário selecionar a forma de pagamento Cheque
Então uma mensagem deve ser exibida msg de Cheque

Exemplos:
 |email                         |senha |
 |delimamaschiomatheus@gmail.com|123456|