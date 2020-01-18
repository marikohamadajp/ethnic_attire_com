class ChangeDateInBookingsToBeDate < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :date, :text
  end
end
