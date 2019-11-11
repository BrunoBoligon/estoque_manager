class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.belongs_to :endereco, foreign_key: true
      t.string :nome
      t.string :documento

      t.timestamps
    end
  end
end
