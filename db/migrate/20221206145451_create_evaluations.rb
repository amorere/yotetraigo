class CreateEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :evaluations do |t|
      t.string :pickup_point
      t.string :drop_point
      t.datetime :pick_up_datetime
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
