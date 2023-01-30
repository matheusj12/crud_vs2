class CreateEstoques < ActiveRecord::Migration[7.0]
  def change
    create_table :estoques do |t|
      t.integer :estminimo
      t.integer :estmax
      t.integer :qtdestoque
      t.integer :product_id

      t.timestamps
    end
  end
end
