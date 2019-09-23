class CreateAccomodations < ActiveRecord::Migration[6.0]
  def change
    create_table :accomodations do |t|
      t.string :name
      t.string :line_address_1
      t.string :line_address_2
      t.string :postcode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
