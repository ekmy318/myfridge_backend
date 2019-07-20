# frozen_string_literal: true

class GrocerySerializer < ActiveModel::Serializer
  attributes :id, :name, :expiration_date, :quantity, :price
end
