class AddNoteToGroceries < ActiveRecord::Migration[5.2]
  def change
    add_column :groceries, :notes, :string
  end
end
