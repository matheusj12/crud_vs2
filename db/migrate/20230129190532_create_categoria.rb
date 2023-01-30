class CreateCategoria < ActiveRecord::Migration[7.0]
  def change
    create_table :categoria do |t|
      t.text :descricao
      t.text :imagem

      t.timestamps
    end
  end
end
