class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.text :description
      t.datetime :date
      t.string :venue_type
      t.string :movie
      t.integer :ticket_price
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
