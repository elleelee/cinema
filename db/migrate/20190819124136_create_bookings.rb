class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :number_of_tickets
      t.integer :booking_price

      t.timestamps
    end
  end
end
