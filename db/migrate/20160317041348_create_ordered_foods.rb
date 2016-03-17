class CreateOrderedFoods < ActiveRecord::Migration
  def change
    create_table :ordered_foods do |t|
      t.string :food_id
      t.string :order_id
      t.string :quantity
      t.string :note

      t.timestamps null: false
    end
  end
end
