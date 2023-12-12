class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :city
      t.date :date
      t.references :bike, null: false, foreign_key: true

      t.timestamps
    end
  end
end
