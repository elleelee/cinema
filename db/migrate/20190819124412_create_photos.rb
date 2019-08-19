class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :event, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
