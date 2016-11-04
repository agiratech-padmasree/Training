class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.integer :order_id
      t.integer :product_id
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
