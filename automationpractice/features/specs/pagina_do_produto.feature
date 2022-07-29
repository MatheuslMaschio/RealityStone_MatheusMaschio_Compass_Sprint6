#language: pt

@regression
@PDP
Funcionalidade: Página do Produto
    Sendo um usuário do YourLogo
    Quero poder personalizar os produtos que irei comprar na página do produto
    Para ter uma melhor experiência de compra

Contexto: Estar na página de um produto
    Dado que o usuário esteja na home
    Quando realizar uma busca por um produto existente
    E acessar a página do produto

@mudar_cor_pdp
Cenário: Trocar a cor do produto
    Quando alterar a cor do produto
    Então deverá alterar a imagem apresentada na Pradeep

@aumentar_Quantidade_Do_Produto
Cenário: Aumentar a quantidade do produto no carrinho
    Quando aumentar a quantidade do produto 
    E adicionar o produto ao carrinho
    Então o produto deverá ser adicionado ao carrinho com a quantidade aumentada
