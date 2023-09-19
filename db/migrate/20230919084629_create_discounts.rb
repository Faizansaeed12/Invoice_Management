class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.decimal :discount_value
      t.string :applicable_to

      t.timestamps
    end
  end
end
