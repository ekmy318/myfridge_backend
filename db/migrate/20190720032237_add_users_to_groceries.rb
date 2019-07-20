# frozen_string_literal: true

class AddUsersToGroceries < ActiveRecord::Migration[5.2]
  def change
    add_reference :groceries, :user, foreign_key: true
  end
end
