class AddLatLongToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :lat, :float
    add_column :applications, :long, :float
    add_column :applications, :lat2, :float
    add_column :applications, :long2, :float
  end
end
