class AddAddressToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :address, :string
  end
end
