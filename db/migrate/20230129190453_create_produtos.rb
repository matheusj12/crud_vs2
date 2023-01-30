class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.integer :codBarra
      t.string :name
      t.text :descricao
      t.integer :status
      t.integer :subcategorias_id
      t.float :preco
      t.text :imagem

      t.timestamps
    end
  end
end
