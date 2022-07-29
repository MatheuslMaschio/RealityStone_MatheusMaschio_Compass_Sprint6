module Sections
    class Register < SitePrism::Section
        element :btn_genero, '[id="id_gender2"]'
        element :primeiro_nome, '[id="customer_firstname"]'
        element :ultimo_nome, '[id="customer_lastname"]'
        element :registrar_email_form,'[id="email"]'
        element :registrar_senha_form, '[id="passwd"]'
        element :registrar_primeiro_nome__endereco, '[id="firstname"]'
        element :registrar_ultimo_nome_endereco, '[id="lastname"]'
        element :registrar_endereco, '[id="address1"]'
        element :registrar_cidade, '[id="city"]'
        elements :registrar_estado, '[name="id_state"] [value]'
        element :cep, '[id="postcode"]'
        element :telefone, '[id="phone_mobile"]'
    
    end
end
    