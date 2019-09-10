# frozen_string_literal: true

class GrocerySerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :expiration_date, :quantity, :price, :notes,
             :editable, :days_until, :date_format
  Time.zone = 'America/New_York'

  def editable
    scope == object.user
  end

  def days_until
    today = Date.new(Date.current.year, Date.current.month, Date.current.day)
    if object.expiration_date.nil?
      'No date provided'
    else
      date_till = Date.new(object.expiration_date.year, object.expiration_date.month, object.expiration_date.day)
      days = (date_till - today)
      if days.to_i.negative?
        'Expired!'
      elsif days.to_i.zero?
        'Expires today!'
      elsif days.to_i == 1
        'Expires tomorrow!'
      else days.to_i
      end
    end
  end

  def date_format
    if object.expiration_date.nil?
      'No date provided'
    else object.expiration_date.to_formatted_s(:long)
    end
  end
end
