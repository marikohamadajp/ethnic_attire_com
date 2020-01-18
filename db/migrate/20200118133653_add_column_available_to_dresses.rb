class AddColumnAvailableToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :available, :boolean, :default => true
  end
end
