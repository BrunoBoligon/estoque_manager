FactoryBot.define do
    factory :movimento do
      data { '2019-11-26' }
      quantidade { 5 }

      association :pessoa, factory: :pessoa
      association :operacao, factory: :operacao
      association :produto, factory: :produto
    end
  end