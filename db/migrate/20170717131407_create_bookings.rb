class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :weapon, foreign_key: true
      t.integer :hirer_id
      t.string :status

      t.timestamps
    end
    add_foreign_key :bookings, :users, column: :hirer_id
    add_index :bookings, :hirer_id
  end
end
