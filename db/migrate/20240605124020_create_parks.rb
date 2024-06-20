class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.bigint :prefecture_id, null: false
      t.string :name, null: false
      t.string :address, null: false
      t.text :description, null: false
      t.float :longitude
      t.float :latitude
      t.integer :user_id, null:false

      t.timestamps
    end
  end
end
