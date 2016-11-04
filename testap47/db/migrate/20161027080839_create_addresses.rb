class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.text :address

      t.timestamps null: false
    end
  end
end
