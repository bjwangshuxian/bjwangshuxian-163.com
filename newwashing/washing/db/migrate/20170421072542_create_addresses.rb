class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.decimal :heng
      t.decimal :zong
      t.integer :user_id
      t.integer :factory_id

      t.timestamps
    end
  end
end
