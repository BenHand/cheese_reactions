class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string :name, null: false, default: 'cheese'
      t.string :kind, null: false, default: 'american'
      t.integer :rating, null: false, default: 0
      t.text :description, null: false, default: 'cheesy'
      t.string :pic, null: false, default: 'http://cancats.net/wp-content/uploads/2014/07/can-cats-eat-cheese-main.jpg'
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
