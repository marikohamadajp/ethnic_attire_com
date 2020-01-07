class CreateDresses < ActiveRecord::Migration[5.2]
  def change
    create_table :dresses do |t|
      t.string :name
      t.string :color
      t.integer :size
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
