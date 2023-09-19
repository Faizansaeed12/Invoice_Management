class ChangeInvoiceAmountDataTypeInInvoicee < ActiveRecord::Migration[6.1]
  def change
    change_column :invoicees, :invoice_amount, :float
  end
end
