FactoryBot.define do
    factory :endereco do
        cep { '85601000' }
        
        association :cidade, factory: :cidade
        end
end