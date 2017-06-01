class CreateQishis < ActiveRecord::Migration[5.0]
  def change
    create_table :qishis do |t|
      t.string :phone
      t.integer :order_id
      t.decimal :salary

      t.timestamps
    end
  end
end
