class CreateSubcategoria < ActiveRecord::Migration[7.0]
  def change
    create_table :subcategoria do |t|
      t.text :descricao
      t.integer :categorias_id

      t.timestamps
    end
  end
end
