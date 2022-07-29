Quando('clickar no botão de recuperar a senha') do

    @Login_page.btn_recuperar_senha.click
   
end
  
Quando('inserir o email cadastrado') do
   @Login_page.input_email_recuperar_senha.set 'delimamaschiomatheus@gmail.com'
   @Login_page.btn_confirmar_recuperar_senha.click

end
  
Então('devera ser exibida uma mensagem de sucesso') do
    expect(@Login_page.btn_sucesso_recuperar_senha.text).to eql 'A confirmation email has been sent to your address: delimamaschiomatheus@gmail.com'
end