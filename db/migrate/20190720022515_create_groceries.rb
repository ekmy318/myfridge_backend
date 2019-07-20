# frozen_string_literal: true

class CreateGroceries < ActiveRecord::Migration[5.2]
  def change
    create_table :groceries do |t|
      t.string :name, null: false
      t.date :expiration_date, null: false
      t.string :quantity, null: false
      t.money :price, null: false

      t.timestamps
    end
  end
end
