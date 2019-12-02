FactoryBot.define do
    factory :cidade do
        nome { 'Francisco Beltrão' }
        
        association :estado, factory: :estado
        end
end