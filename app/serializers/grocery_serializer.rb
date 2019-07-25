# frozen_string_literal: true

class GrocerySerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :expiration_date, :quantity, :price, :notes, :editable, :days_until

  def editable
    scope == object.user
  end

  def days_until
    today = Date.new(Date.today.year, Date.today.month, Date.today.day)
    if object.expiration_date == nil
      return 'No date provided'
    else
      date_till = Date.new(object.expiration_date.year, object.expiration_date.month, object.expiration_date.day)
    days = (date_till - today)
    days.to_i
    end
  end
end
