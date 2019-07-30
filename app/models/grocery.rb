# frozen_string_literal: true

class Grocery < ApplicationRecord
  belongs_to :user
  validates :name, :expiration_date, :quantity, presence: true
end
