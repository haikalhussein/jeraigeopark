class AddDescriptionToAccomodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accomodations, :description, :text
  end
end
