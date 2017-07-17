class CreateWeapons < ActiveRecord::Migration[5.0]
  def change
    create_table :weapons do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :photo_url
      t.integer :price
      t.string :availability
      t.integer :owner_id

      t.timestamps
    end
    add_foreign_key :weapons, :users, column: :owner_id
    add_index :weapons, :owner_id
  end
end
