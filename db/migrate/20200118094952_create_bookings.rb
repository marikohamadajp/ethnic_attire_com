class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :date
      t.references :dress, foreign_key: true

      t.timestamps
    end
  end
end
