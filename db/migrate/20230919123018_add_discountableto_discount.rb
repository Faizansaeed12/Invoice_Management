class AddDiscountabletoDiscount < ActiveRecord::Migration[6.1]
  def change
    add_reference :discounts, :discountable, polymorphic: true 
  end
end
