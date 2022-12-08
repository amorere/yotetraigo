class AddCityToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :city, :string
    add_column :applications, :country, :string
  end
end
