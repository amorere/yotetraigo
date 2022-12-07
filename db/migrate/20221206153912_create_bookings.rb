class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.references :review, foreign_key: true
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
