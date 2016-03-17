class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :title
      t.string :description
      t.string :date
      t.string :price
      t.string :area_id
      t.string :image

      t.timestamps null: false
    end
  end
end
