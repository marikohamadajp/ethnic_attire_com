class ChangeDateInBookingsToBeDate < ActiveRecord::Migration[5.2]
  def up
  end

  def down
    change_column :bookings, :date, :date
  end
end
