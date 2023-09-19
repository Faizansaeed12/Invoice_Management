class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.references :invoicee
      t.references :company

      t.timestamps
    end
  end
end
