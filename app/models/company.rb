class Company < ApplicationRecord
  has_many :items
  has_many :invoicees, through: :items
  has_many :discounts, as: :discountable

  validates :name, presence: true
end
