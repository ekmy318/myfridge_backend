# frozen_string_literal: true

class GrocerySerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :expiration_date, :quantity, :price, :editable

  def editable
    scope == object.user
  end
end
