class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.belongs_to :cidade, foreign_key: true
      t.string :cep

      t.timestamps
    end
  end
end
