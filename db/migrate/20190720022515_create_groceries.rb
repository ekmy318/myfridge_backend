# frozen_string_literal: true

class CreateGroceries < ActiveRecord::Migration[5.2]
  def change
    create_table :groceries do |t|
      t.string :name
      t.date :expiration_date
      t.string :quantity
      t.money :price

      t.timestamps
    end
  end
end
