class CreateShopLists < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_lists do |t|
      t.string :item
      t.integer :qtd

      t.timestamps
    end
  end
end
