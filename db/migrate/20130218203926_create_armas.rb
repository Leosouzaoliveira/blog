class CreateArmas < ActiveRecord::Migration
  def change
    create_table :armas do |t|
      t.string :marca
      t.text :descricao
      t.string :modelo
      t.text :historico

      t.timestamps
    end
  end
end
