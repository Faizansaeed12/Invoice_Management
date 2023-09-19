class Invoicee < ApplicationRecord
  belongs_to :company
  belongs_to :item
  has_many :discounts, as: :discountable

    validates :invoice_no, presence: true, uniqueness: true
    validates :invoice_amount, presence: true, numericality: { greater_than:0}
end
