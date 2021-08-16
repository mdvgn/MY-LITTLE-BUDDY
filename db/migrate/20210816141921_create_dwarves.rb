class CreateDwarves < ActiveRecord::Migration[6.0]
  def change
    create_table :dwarves do |t|
      t.string :nickname
      t.integer :size
      t.string :gender
      t.string :photo
      t.text :description
      t.integer :price_per_hour
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
