class AddComuneToApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :applications, :comune, :string
  end
end
