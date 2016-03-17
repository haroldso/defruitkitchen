class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_id
      t.string :msg
      t.string :phone
      t.string :total_price

      t.timestamps null: false
    end
  end
end
