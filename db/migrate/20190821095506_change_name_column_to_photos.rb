class ChangeNameColumnToPhotos < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :name, :image
  end
end
