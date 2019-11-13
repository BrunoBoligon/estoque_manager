class GrupoProduto < ApplicationRecord
    validates :nome, presence: true, uniqueness: true
end
