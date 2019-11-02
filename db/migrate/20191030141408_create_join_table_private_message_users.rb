class CreateJoinTablePrivateMessageUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_private_message_users do |t|
      t.belongs_to :received_message, index: true
      t.references :user

      t.timestamps
    end
  end
end
