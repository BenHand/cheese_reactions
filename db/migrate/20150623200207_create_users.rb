class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :password_digest, null: false
      t.string :fav_cheese, null: false, default: 'murican'

      t.timestamps null: false
    end
  end
end
