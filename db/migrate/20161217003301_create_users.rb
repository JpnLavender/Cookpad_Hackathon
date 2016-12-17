class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :mail
      t.string :password_digest
      t.string :address
      t.datetime :birthday
      t.integer :sex

      t.timestamps
    end
  end
end
