class AddPosterToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :poster, :string
  end
end
