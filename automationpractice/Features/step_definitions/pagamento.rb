    Dado('que o produto já foi escolhido e já está no carrinho') do
        @pagamento_page = Pages::Pagamento.new
        @pagamento_page.load
        @pagamento_page.btn_add_Cart.click
        @pagamento_page.wait_until_floatingCartLayer_visible(wait: 5)
    end
  
  Dado('que o usuário esteja pagando') do
        @pagamento_page.btn_to_checkout.click
        @pagamento_page.btn_to_checkout_number_two.click
    end

    Dado('efetuou o login com o {string} e {string}') do |email, senha|
        @Login_page = Pages::Login.new
        @Login_page.login(email, senha)
        @pagamento_page.btn_to_checkout_number_three.click
        @pagamento_page.btn_terms_of_service.click
        @pagamento_page.btn_to_checkout_number_two.click
    end
 
  Quando('o usuário selecionar a forma de pagamento Transferencia Bancaria') do
        @pagamento_page.btn_bankwire.click
        @pagamento_page.btn_confirm_my_order.click
    end
  
  Então('uma mensagem deve ser exibida msg de Transferencia Bancaria') do 
        expect(@pagamento_page.msg_bankwire.text).to include("Your order on My Store is complete.")
    end

    Quando('o usuário selecionar a forma de pagamento Cheque') do
        @pagamento_page.btn_cheque.click
        @pagamento_page.btn_confirm_my_order.click
    end
      
    Então('uma mensagem deve ser exibida msg de Cheque') do
        expect(@pagamento_page.msg_cheque.text).to include("YOUR CHECK MUST INCLUDE:")
    end

    
  
    