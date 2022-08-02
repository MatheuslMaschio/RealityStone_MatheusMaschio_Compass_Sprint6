require_relative '../sections/header_sections'
require_relative'../sections/register_sections'

module Pages
    class Login < SitePrism::Page
        set_url '?controller=authentication&back=my-account'

        element :error_message, '[class="alert alert-danger"] li'
        element :input_email, '[class="form-group"] #email'
        element :input_password, '[class="form-group"] #passwd'
        element :btn_login, '[id="SubmitLogin"]'
        element :msg_ok, '[class="info-account"]'
        element :email_cadastro, '[id="email_create"]'
        element :btn_cadastro, '[id="SubmitCreate"]'
        element :formulario, '[id="account-creation_form"]'
        element :btn_register_submit, '[id="submitAccount"]'
        
        
        #RECUPERACAO SENHA
        element :btn_recuperar_senha, '[title="Recover your forgotten password"]'
        element :input_email_recuperar_senha, '[class="form-control"]'
        element :btn_confirmar_recuperar_senha, '[class="btn btn-default button button-medium"]'
        element :btn_sucesso_recuperar_senha, '[class="alert alert-success"]'

        section :registerSection, Sections::Register, '[id="authentication"] [id="center_column"]'

         
        def login(email,senha)
           input_email.set email
           input_password.set senha
           btn_login.click
        end

        def preenche_formulario()
            registerSection.primeiro_nome.set Factory::Dynamic.dynamic_data[:primeiro_nome]
            registerSection.ultimo_nome.set Factory::Dynamic.dynamic_data[:ultimo_nome]
            registerSection.registrar_email_form.set Factory::Dynamic.dynamic_data[:registrar_email]
            registerSection.registrar_senha_form.set Factory::Dynamic.dynamic_data[:registrar_senha]
            registerSection.registrar_primeiro_nome__endereco.set Factory::Dynamic.dynamic_data[:primeiro_nome]
            registerSection.registrar_ultimo_nome_endereco.set Factory::Dynamic.dynamic_data[:ultimo_nome]
            registerSection.registrar_endereco.set Factory::Dynamic.dynamic_data[:rua]
            registerSection.registrar_cidade.set Factory::Dynamic.dynamic_data[:cidade]
            registerSection.registrar_estado[rand(1..50)].click
            registerSection.cep.set Factory::Dynamic.dynamic_data[:cep]
            registerSection.telefone.set Factory::Dynamic.dynamic_data[:telefone]
            
        end   

    end
end
