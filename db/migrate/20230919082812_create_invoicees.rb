class CreateInvoicees < ActiveRecord::Migration[6.1]
  def change
    create_table :invoicees do |t|
      t.string :invoice_no
      t.decimal :invoice_amount
      t.references :company
      t.references :item

      t.timestamps
    end
  end
end
