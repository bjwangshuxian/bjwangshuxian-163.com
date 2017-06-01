class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :qishi_id
      t.integer :count
      t.decimal :price
      t.integer :statues

      t.timestamps
    end
  end
end
