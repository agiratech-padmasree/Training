class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.string :image_url
      t.integer :quantity
      t.boolean :is_active, default: true

      t.timestamps null: false
    end
  end
end
