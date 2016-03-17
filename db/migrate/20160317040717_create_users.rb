class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :birthday
      t.string :gender
      t.string :email
      t.string :contact_no
      t.string :address
      t.string :avatar
      t.string :provider
      t.string :uid

      t.timestamps null: false
    end
  end
end
