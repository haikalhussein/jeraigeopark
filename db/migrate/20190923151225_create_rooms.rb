class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :rno
      t.integer :price
      t.text :description
      t.bigint :room_type_id, null: false, foreign_key: true
      t.bigint :accomodation_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
