class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :confirmation_status
      t.string :price
      t.string :pickup_point
      t.string :drop_point
      t.datetime :pickup_datetime
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
