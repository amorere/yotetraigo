class AddCoordinatesToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :latitude, :float
    add_column :applications, :longitude, :float
    add_column :applications, :latitude2, :float
    add_column :applications, :longitude2, :float
  end
end
