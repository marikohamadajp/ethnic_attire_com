class AddColumnRentDateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :rent_date, :date
  end
end
