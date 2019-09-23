class CreateRoomAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :room_attachments do |t|
      t.bigint :room_id, null: false, foreign_key: true
      t.string :attachment

      t.timestamps
    end
  end
end
