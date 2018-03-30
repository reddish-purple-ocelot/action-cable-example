class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :full_message
      t.belongs_to :user, index: true
      t.belongs_to :chatroom, index: true

      t.timestamps
    end
  end
end
