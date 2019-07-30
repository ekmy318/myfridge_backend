class AddNullToGrocery < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:groceries, :name, :expiration_date, false)
  end
end
