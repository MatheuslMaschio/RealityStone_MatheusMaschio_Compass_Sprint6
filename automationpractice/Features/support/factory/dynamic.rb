require 'faker'
require 'i18n'

module Factory
    class Dynamic
        Faker::Config.locale = 'en-US'
        def self.dynamic_data = {

                registrar_email: Faker::Internet.email,
                registrar_senha: Faker::Lorem.characters(number: 10),
                primeiro_nome: Faker::Name.first_name,
                ultimo_nome: Faker::Name.last_name,
                rua: Faker::Address.city,
                cidade: Faker::Address.city,
                cep:Faker::Number.number(digits: 5),
                telefone: Faker::PhoneNumber.cell_phone }
        
        end

        

    end




   