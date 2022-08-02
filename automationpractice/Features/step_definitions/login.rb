Dado('que o usuário esteja na tela de login') do
    @Login_page = Pages::Login.new
    @Login_page.load
  end

Quando('o usuário realizar login com o {string} e {string}') do |email, senha|
   #binding.pry
  @Login_page.login(email,senha)
  end
  
  Então('uma mensagem deve ser exibida {string}') do |msg|
    expect(@Login_page.error_message.text).to eql msg
  end

   Então('devera aparecer o modal de mensagem {string}') do |msg| 
      expect(@Login_page.msg_ok.text).to eql msg
   end