FactoryBot.define do
    factory :pessoa do
        nome { 'Pessoa A' }
        documento { 'um document' }
        
        association :endereco, factory: :endereco
    end
end