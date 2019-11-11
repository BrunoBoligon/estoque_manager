class MovimentacaoEstoque < ApplicationRecord
  belongs_to :operacao
  belongs_to :produto
  belongs_to :pessoa
end
