class Item < ApplicationRecord
  belongs_to :company
  belongs_to :invoicee, optional: true

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0} 
end

