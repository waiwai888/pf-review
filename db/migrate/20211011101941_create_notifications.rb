class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :visiter_id, null: false
      t.integer :visited_id, null: false
      t.integer :comment_id
      t.boolean :checked, null: false
      t.integer :post_id
      t.integer :chat_id
      t.integer :room_id

      t.timestamps
    end
  end
end
