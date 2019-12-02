FactoryBot.define do
    factory :produto do
        nome { 'Max Steel' }
        
        association :unidade, factory: :unidade
        association :grupoproduto, factory: :grupoproduto
    end
end