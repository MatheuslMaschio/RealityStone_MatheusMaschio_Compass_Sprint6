Dado('que esteja na página de Autenticação do site e-commerce Automation Practice') do
    @Login_page = Pages::Login.new
    @Login_page.load
  end
  
  Dado('que o usuário cadastrou um e-mail com sucesso') do
    @Login_page.email_cadastro.set Factory::Dynamic.dynamic_data[:registrar_email]
    @Login_page.btn_cadastro.click
  end
  
  Quando('a página for direcionada para YOUR PERSONAL INFORMATION') do
    @Login_page.wait_until_formulario_visible
  end
  
  Quando('forem cadastrados os dados pedidos na página') do
    @Login_page.preenche_formulario
    @Login_page.btn_register_submit.click
  end

  Então('o usuário devera entrar na sua conta já logada {string}') do |msg|
    expect(@Login_page.msg_ok.text).to eql msg
  end

  Quando('o usuário inserir um email já cadastrado') do
    @Login_page.email_cadastro.set 'delimamaschiomatheus@gmail.com'
    @Login_page.btn_cadastro.click

  end
  
  Então('devera exibir uma mensagem de erro') do
    expect(@Login_page.error_message.text).to eql 'An account using this email address has already been registered. Please enter a valid password or request a new one.'
  end
  
  