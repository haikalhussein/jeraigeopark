class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :room_type, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :num_of_user

      t.timestamps
    end
  end
end
