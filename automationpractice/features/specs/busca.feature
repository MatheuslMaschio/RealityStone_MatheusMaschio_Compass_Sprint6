#language: pt

@regression
@search

Funcionalidade: Busca
    Como um usuário do Ecommerce Your Logo
    Quero poder buscar por diferentes produtos
    Para poder personalizar minhas compras

    Contexto: Estar na home
    Dado que o usuário esteja na home

    @search_for_product
    Cenário: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resultados na busca

    @search_for_different_products
    Esquema do Cenário: Buscar por produtos existentes
        Quando buscar pelo produto "<produto>"
        Então deverão ser retornados resultados na busca

        Exemplos: 
        |produto   |
        |Dresses   |
        |T-shirts  |
        | Blouses  |  

# primeira execução = vestidos
# segunda execução = Camisetas
# terceira execução = Blusas


    

