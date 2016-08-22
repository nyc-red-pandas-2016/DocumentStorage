class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, nill: false
      t.string :email, nill: false, unique: true
      t.string :password, nill: false

      t.timestamps null: false
    end
  end
end
