class AddUserIdToAccomodations < ActiveRecord::Migration[6.0]
  def change
    add_column :accomodations, :user_id, :integer
  end
end
