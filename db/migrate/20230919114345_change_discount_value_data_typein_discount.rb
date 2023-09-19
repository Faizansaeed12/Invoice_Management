class ChangeDiscountValueDataTypeinDiscount < ActiveRecord::Migration[6.1]
  def change
    change_column :discounts, :discount_value, :float
  end
end
