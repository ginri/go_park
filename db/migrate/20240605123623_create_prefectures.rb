class CreatePrefectures < ActiveRecord::Migration[6.1]
  def change
    create_table :prefectures do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.bigint :region_id, null: false

      t.timestamps
    end
  end
end
