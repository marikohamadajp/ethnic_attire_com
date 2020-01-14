class AddCoordinatesToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :latitude, :float
    add_column :dresses, :longitude, :float
  end
end
