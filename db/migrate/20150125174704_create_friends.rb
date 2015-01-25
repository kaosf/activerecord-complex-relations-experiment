class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.references :user, index: true, null: false
      t.integer :to_user_id, null: false

      t.timestamps null: false
    end
    add_index :friends, :to_user_id
    add_foreign_key :friends, :users
  end
end
