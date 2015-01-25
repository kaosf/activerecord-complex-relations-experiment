class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.references :user, index: true
      t.string :title

      t.timestamps null: false
    end
    add_foreign_key :books, :users
  end
end
