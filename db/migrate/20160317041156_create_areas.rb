class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postcode
      t.string :state
      t.string :image

      t.timestamps null: false
    end
  end
end
